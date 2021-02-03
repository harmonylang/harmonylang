from analysis.fromc.jsontypes import Trace, ValueRep


def jsonify_trace(trace: Trace):
    copied_trace = trace.copy()
    copied_trace['vars'] = {k: get_value(v) for k, v in copied_trace['vars'].items()}
    return copied_trace


def get_value(v: ValueRep):
    value_type = v['type']
    if value_type == 'int':
        return int(v['value'])
    elif value_type == 'atom':
        return v['value']
    elif value_type == 'bool':
        return v['value'] == "True"
    elif value_type == 'pc':
        return v['value']
    elif value_type == 'address':
        return list(map(get_value, v['value']))
    elif value_type == 'set':
        return list(map(get_value, v['value']))
    elif value_type == 'dict':
        return {str(get_value(e['key'])): get_value(e['value']) for e in v['value']}
    else:
        raise ValueError("Cannot parse this value")
