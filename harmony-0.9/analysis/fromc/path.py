from typing import Set

from analysis.fromc.context import parse_context
from analysis.fromc.jsonify import get_value, jsonify_trace
from analysis.fromc.jsontypes import IntermediateJson, MicroStep


def get_shared_values(micro_step: MicroStep) -> dict:
    if 'shared' in micro_step:
        return {k: get_value(v) for k, v in micro_step['shared'].items()}
    else:
        return {}


def get_trace(pid: str, micro_step: MicroStep) -> dict:
    if 'local' in micro_step:
        return {pid: [jsonify_trace(t) for t in micro_step['trace']]}
    else:
        return {}


def get_path(json: IntermediateJson):
    issue = json['issue']
    shared_variable_names: Set[str] = set()
    processes = []
    previous_shared_values = {}
    previous_traces = {}

    for macro_step in json['macrosteps']:
        pid = macro_step['tid']
        name = macro_step['name']
        final_values = {k: get_value(v) for k, v in macro_step['shared'].items()} if 'shared' in macro_step else {}
        shared_variable_names.update(final_values.keys())

        slices = []
        duration = 0
        slice_duration = 0
        micro_steps = []

        # For the first step
        if macro_step['microsteps']:
            first_step = macro_step['microsteps'][0]
            previous_shared_values.update(get_shared_values(first_step))
            previous_traces.update(get_trace(pid, first_step))
            duration += 1
            slice_duration += 1

        # For the remaining steps
        for i in range(1, len(macro_step['microsteps'])):
            micro_step = macro_step['microsteps'][i]
            pc = int(micro_step['pc'])
            if 'npc' not in micro_step:
                npc = None
            else:
                npc = int(micro_step['npc'])
            if 'shared' in micro_step or 'trace' in micro_step:
                slices.append({
                    "duration": slice_duration,
                    "shared_values": previous_shared_values.copy(),
                    "trace": previous_traces.copy()
                })
                slice_duration = 0
                previous_shared_values.update(get_shared_values(micro_step))
                previous_traces.update(get_trace(pid, micro_step))

            duration += 1
            slice_duration += 1

            if 'choose' in micro_step:
                choose_value = get_value(micro_step['choose'])
                micro_steps.append({"choose": [pc, choose_value]})
            else:
                micro_steps.append({"step": [pc, npc]})

        slices.append({
            "duration": slice_duration,
            "shared_values": previous_shared_values.copy(),
            "trace": previous_traces.copy()
        })

        assert duration == sum(s['duration'] for s in slices)

        macro_step = {
            "pid": pid,
            "name": name,
            "final_shared_values": final_values,
            "slices": slices,
            "duration": duration,
            "steps": micro_steps,
        }
        processes.append(macro_step)

    return {
        "issue": issue,
        "shared_variable_names": list(shared_variable_names),
        "processes": processes
    }
