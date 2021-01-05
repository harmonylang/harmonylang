from analysis.fromc.jsontypes import IntermediateJson


def get_code(json: IntermediateJson):
    return [{"code": c, "explanation": e} for c, e in zip(json['code'], json['explain'])]
