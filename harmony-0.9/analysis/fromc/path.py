from pprint import pprint
from typing import List, TypedDict, Any, Dict, Set

from analysis.fromc.context import parse_context
from analysis.fromc.jsontypes import IntermediateJson, get_value


# class StepValue(TypedDict):
#     steps: [pc, pc]
#     choose: [pc, ValueRep]
#     error: str

# class SliceState(TypedDict):
#     duration: int
#     values: Dict[str, Any]
#     uid: int


# class ProcessStep(TypedDict):
#     pid: int
#     name: str
#     final_values: Dict[str, Any]
#     sid: int
#     steps: List[StepValue]
#     duration: int
#     states: list
#     slices: List[SliceState]


def get_path(json: IntermediateJson):
    issue = json['issue']
    shared_variable_names: Set[str] = set()
    processes = []
    previous_json = {}
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
        if megastep['microsteps']:
            first_step = megastep['microsteps'][0]
            if 'shared' not in first_step:
                first_step['shared'] = {}
            json = {k: get_value(v) for k, v in first_step['shared'].items()}
            previous_json.update(json)
            duration += 1
            slice_duration += 1

        for i in range(1, len(megastep['microsteps'])):
            microstep = megastep['microsteps'][i]
            pc = int(microstep['pc'])
            if 'npc' not in microstep:
                npc = None
            else:
                npc = int(microstep['npc'])
            if 'shared' in microstep:
                slices.append({
                    "duration": slice_duration,
                    "shared_values": previous_json.copy()
                })
                slice_duration = 0
                json = {k: get_value(v) for k, v in microstep['shared'].items()}
                previous_json.update(json)

            duration += 1
            slice_duration += 1

            if 'choose' in microstep:
                choose_value = get_value(microstep['choose'])
                microsteps.append({"choose": [pc, choose_value]})
            else:
                microsteps.append({"step": [pc, npc]})

        slices.append({
            "duration": slice_duration,
            "shared_values": previous_json.copy()
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
