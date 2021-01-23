from json import JSONEncoder, JSONDecoder
import gzip

from os import path

from analysis.fromc.code import get_code
from analysis.fromc.jsontypes import IntermediateJson
from analysis.fromc.path import get_path


def get_html_content(
    intermediate_json_filepath: str,
    destination_path: str
) -> dict:
    """
    Converts the data in an intermediate JSON file into the Harmony Lang display JSON file.
    :param destination_path: The path where the Harmony Lang display JSON file will be written.
    :param intermediate_json_filepath: Filepath to the intermediate JSON
    :return:
    """
    dump_name = path.join(destination_path, "harmony.json.gz")
    with open(intermediate_json_filepath, 'r') as f:
        data = f.read()
        json_decoded: IntermediateJson = JSONDecoder().decode(data)

    data = {
        'path_to_bad_node': get_path(json_decoded),
        'executed_code': get_code(json_decoded)
    }

    def default_encoder(v):
        if isinstance(v, set):
            return list(v)
        else:
            return vars(v)

    try:
        json_encoded = JSONEncoder(default=default_encoder).encode(data)
        with gzip.open(dump_name, 'w') as f:
            f.write(json_encoded.encode('utf-8'))
            print(f"Open file://{dump_name} for more information in json format")
    except TypeError as e:
        print(e)
        exit(1)
    return data
