from analysis.fromc.jsontypes import IntermediateJson


def get_code(json: IntermediateJson):
    explain = json['explain']
    code = json['code']
    locations = list(sorted([(int(k), v) for k, v in json['locations'].items()], key=lambda i: i[0]))

    executed_code = []

    for i in range(len(locations)):
        loc = locations[i]
        spc, source_code = loc
        npc = locations[i + 1][0] if i < len(locations) - 1 else len(code)
        executed_assembly = []
        for pc in range(spc, npc, 1):
            code_at_pc = code[pc].strip()
            explain_at_pc = explain[pc]
            executed_assembly.append({"code": code_at_pc, "explain": explain_at_pc})
        executed_code.append({
            "start_pc": spc,
            "file": source_code['file'],
            "line": source_code['line'],
            "source_code": source_code['code'],
            "assembly": executed_assembly
        })

    return executed_code
