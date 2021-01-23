from typing import Set

from analysis.fromc.context import parse_context
from analysis.fromc.jsonify import get_value, jsonify_trace
from analysis.fromc.jsontypes import IntermediateJson


def get_shared_values(micro_step: dict) -> dict:
    if 'shared' in micro_step:
        return {k: get_value(v) for k, v in micro_step['shared'].items()}
    else:
        return {}


def get_trace(micro_step: dict) -> dict:
    if 'local' in micro_step:
        return {k: [jsonify_trace(t) for t in v] for k, v in micro_step['trace'].items()}
    else:
        return {}


def get_path(json: IntermediateJson):
    issue = json['issue']
    shared_variable_names: Set[str] = set()
    processes = []
    previous_shared_values = {}
    previous_traces = {}

    for megastep in json['megasteps']:
        pid = megastep['tid']
        name = megastep['name']
        final_values = {k: get_value(v) for k, v in megastep['shared'].items()}
        shared_variable_names.update(final_values.keys())

        contexts = parse_context(megastep['contexts'])

        slices = []
        duration = 0
        slice_duration = 0
        microsteps = []

        # For the first step
        if megastep['microsteps']:
            first_step = megastep['microsteps'][0]
            previous_shared_values.update(get_shared_values(first_step))
            previous_traces.update(get_trace(first_step))
            duration += 1
            slice_duration += 1

        # For the remaining steps
        for i in range(1, len(megastep['microsteps'])):
            microstep = megastep['microsteps'][i]
            pc = int(microstep['pc'])
            if 'npc' not in microstep:
                npc = None
            else:
                npc = int(microstep['npc'])
            if 'shared' in microstep or 'trace' in microstep:
                slices.append({
                    "duration": slice_duration,
                    "shared_values": previous_shared_values.copy(),
                    "trace": previous_shared_values.copy()
                })
                slice_duration = 0
                previous_shared_values.update(get_shared_values(microstep))
                previous_traces.update(get_trace(microstep))

            duration += 1
            slice_duration += 1

            if 'choose' in microstep:
                choose_value = get_value(microstep['choose'])
                microsteps.append({"choose": [pc, choose_value]})
            else:
                microsteps.append({"step": [pc, npc]})

        slices.append({
            "duration": slice_duration,
            "shared_values": previous_shared_values.copy()
        })

        assert duration == sum(s['duration'] for s in slices)

        megastep = {
            "pid": pid,
            "name": name,
            "final_shared_values": final_values,
            "slices": slices,
            "duration": duration,
            "steps": microsteps,
            "context": contexts
        }
        processes.append(megastep)

    return {
        "issue": issue,
        "shared_variable_names": list(shared_variable_names),
        "processes": processes
    }
