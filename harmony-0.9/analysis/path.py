from collections import defaultdict
from typing import List, Optional, Tuple, Dict

from analysis.util import key_value, str_of_value, nametag_to_str


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
    def make_choose(start: int, choose: str):
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


def process_steps(steps) -> List[StepValue]:
    if steps is None:
        return []
    result: List[StepValue] = []
    i = 0
    while i < len(steps):
        (pc, choice) = steps[i]
        j = i + 1
        start = pc
        if pc is None:
            result.append(StepValue.make_error("Interrupt"))
        else:
            if choice is not None:
                result.append(StepValue.make_choose(start, str_of_value(choice)))
                pass
            else:
                while j < len(steps):
                    (pc2, choice2) = steps[j]
                    if pc is None or pc2 != pc + 1 or choice2 is not None:
                        break
                    (pc, choice) = (pc2, choice2)
                    j += 1
                if j > i + 1:
                    result.append(StepValue.make_steps((start, pc)))
                else:
                    result.append(StepValue.make_steps((start, start)))
                pass
        i = j
    return result


def gen_path(n):
    # Extract the path to node n
    path = []
    while n is not None:
        if n.after is None:
            break
        path = [n] + path
        n = n.parent

    # Now compress the path, combining macrosteps by the same context
    path2 = []
    lastctx = None
    laststeps = []
    laststates = []
    lastvars = None
    for n in path:
        if lastctx is None or lastctx == n.before:
            laststeps += n.steps
            lastctx = n.after
            laststates.append(n.uid)
            lastvars = n.state.vars
            continue
        path2.append((lastctx, laststeps, laststates, lastvars))
        lastctx = n.after
        laststeps = n.steps.copy()
        laststates = [n.uid]
        lastvars = n.state.vars
    path2.append((lastctx, laststeps, laststates, lastvars))
    return path2


def get_path(n):
    # Generate a label for the path table
    issues = [str(s) for s in n.issues]
    keys = sorted(n.state.vars.d.keys(), key=key_value)
    values_at_process = defaultdict(dict)
    shared_variables = keys
    path = gen_path(n)
    link_steps: Dict[str, List[StepValue]] = {}
    processes = []
    for (ctx, steps, states, variables) in path:
        sid = states[-1] if len(states) > 0 else n.uid
        process_name = nametag_to_str(ctx.nametag)
        processes.append({
            "name": process_name, "sid": sid
        })
        link_steps[process_name] = process_steps(steps)
        for k in keys:
            values_at_process[process_name][k] = str(variables.d[k])
    return {
        'issues': issues,
        'processes': processes,
        'shared_vars': shared_variables,
        'values_at_process': dict(values_at_process),
        'steps': link_steps
    }
