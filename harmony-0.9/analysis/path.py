from typing import List, Optional, Tuple, Any

from analysis.util import key_value, nametag_to_str, json_valid_value
from value import NodeType


class StepValue:

    def __init__(self, steps: Tuple[int, int] = None, choose: Tuple[int, str] = None, error: str = None):
        self.steps = steps
        self.error = error
        self.choose = choose

    @staticmethod
    def make_error(s: str):
        return StepValue(error=s)

    @staticmethod
    def make_steps(steps: Tuple[int, int]):
        return StepValue(steps=steps)

    @staticmethod
    def make_choose(start: int, choose: Any):
        return StepValue(choose=(start, choose))

    def get_error(self) -> Optional[str]:
        return self.error

    def get_steps(self) -> Optional[Tuple[int, int]]:
        return self.steps

    def get_choose(self) -> Optional[Tuple[int, str]]:
        return self.choose

    def __str__(self):
        if self.choose is not None:
            return str(self.choose[0]) + f", choose({self.choose[1]})"
        elif self.steps is not None:
            start, end = self.steps
            return str(f"Steps: {start} - {end}")
        elif self.error is not None:
            return str(self.error)
        else:
            return "INTERNAL ERROR"

    def __repr__(self):
        return str(self)


def process_steps(steps, typings) -> List[StepValue]:
    """
    Returns a list of steps in processes. This is based on the strsteps(steps) function in harmony.py
    :param typings:
    :param steps:
    :return:
    """
    if steps is None:
        return []
    result: List[StepValue] = []
    i = 0
    while i < len(steps):
        pc, choice = steps[i]
        j = i + 1
        start = pc
        if pc is None:
            result.append(StepValue.make_error("Interrupt"))
        elif choice is not None:
            result.append(StepValue.make_choose(start, json_valid_value(choice, typings)))
            pass
        else:
            while j < len(steps):
                pc2, choice2 = steps[j]
                if pc is None or pc2 != pc + 1 or choice2 is not None:
                    break
                pc, choice = pc2, choice2
                j += 1
            if j > i + 1:
                result.append(StepValue.make_steps((start, pc)))
            else:
                result.append(StepValue.make_steps((start, start)))
        i = j
    return result


def get_path_to_node(n: NodeType) -> List[Tuple[int, NodeType]]:
    """
    Returns a list of the nodes and associated process taken to reach the given node.
    :param n:
    :return:
    """
    path = []
    while n is not None and n.after is not None:
        path.insert(0, n)
        n = n.parent
    pids = []
    macrosteps = []
    for n in path:
        if n.before in pids:
            pid = pids.index(n.before)
            pids[pid] = n.after
        else:
            pids.append(n.after)
            pid = len(pids) - 1
        macrosteps.append((pid, n))
    return macrosteps


def gen_path(n):
    """
    Extracts the path to node n. See genpath(n) in harmony.py for its html counterpart
    """
    path = []
    while n is not None and n.after is not None:
        path.insert(0, n)
        n = n.parent
    # Now compress the path, combining macrosteps by the same context
    path2 = []
    last_context = first_context = None
    last_steps = []
    last_states = []
    last_vars = None
    for n in path:
        if first_context is None:
            first_context = n.before
        if last_context is None or last_context == n.before:
            last_steps += n.steps
            last_context = n.after
            last_states.append(n.uid)
            last_vars = n.state.vars
        else:
            path2.append((first_context, last_context, last_steps, last_states, last_vars))
            first_context = n.before
            last_context = n.after
            last_steps = n.steps.copy()
            last_states = [n.uid]
            last_vars = n.state.vars
    path2.append((first_context, last_context, last_steps, last_states, last_vars))
    return path2


def get_path(n, typings, nodes: List[NodeType], code):
    """
    See htmlpath(n, color, f) in harmony.py for the html version of the function
    Returns a dictionary of the processes and steps that led to the node n.
    {
        issues: string list;
        shared_vars: string list;
        processes: {
            name: string;
            sid: int;
        } list;
        values_at_process: Map<process_name, Map<variable_name, value_as_string>>;
        steps: Map<process_name, StepValue_object>
    }
    """
    issues = [str(s) for s in n.issues]
    shared_variables = sorted(n.state.vars.d.keys(), key=key_value)
    mecrostep_path = get_path_to_node(n)
    path = gen_path(n)
    processes = []
    pids = []
    for (first_ctx, last_ctx, steps, all_states, variables) in path:
        states = [s for s in all_states]
        sid = states[-1] if len(states) > 0 else n.uid
        if first_ctx in pids:
            pid = pids.index(first_ctx)
            pids[pid] = last_ctx
        else:
            pids.append(last_ctx)
            pid = len(pids) - 1
        process_name = nametag_to_str(last_ctx.nametag)
        values = {k: json_valid_value(variables.d[k], typings) for k in shared_variables}
        all_steps = process_steps(steps, typings)

        total_duration = 0
        time_slice_duration = 0
        state_slices: list = []

        def update(slice_duration):
            slice_duration += 1
            if len(states) > 0 and pc == nodes[states[0]].after.pc:
                state_slices.append({
                    "values": nodes[states[0]].state.vars.d,
                    "duration": slice_duration
                })
                states.pop(0)
                return 0
            return slice_duration

        for s in all_steps:
            if s.steps is not None:
                start, end = s.steps
                for pc in range(start, end + 1):
                    time_slice_duration = update(time_slice_duration)
                total_duration += end - start + 1
            elif s.choose is not None:
                pc = s.choose[0]
                total_duration += 1
                time_slice_duration = update(time_slice_duration)
        if len(states) > 0:
            state_slices.append({
                "values": nodes[states[0]].state.vars.d,
                "duration": time_slice_duration
            })
            states.pop(0)
        assert len(states) == 0, str(len(states)) + ", All: " + str(list(map(lambda s: nodes[s].after.pc, all_states))) + ",  " + str(all_steps)
        processes.append({
            "pid": pid,
            "name": process_name,
            "values": values,
            "final_values": values,
            "sid": sid,
            "steps": all_steps,
            "duration": total_duration,
            "states": states,
            "slices": state_slices
        })
    return {
        'issues': issues,
        'processes': processes,
        'shared_vars': shared_variables
    }
