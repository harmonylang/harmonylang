from json import JSONEncoder, JSONDecoder
import gzip

from analysis.fromc.jsontypes import IntermediateJson


def get_html_content(
    intermediate_json_filepath: str,
    destination_path: str
):
    """
    Converts the data in an intermediate JSON file into the Harmony Lang display JSON file.
    :param destination_path: The path where the Harmony Lang display JSON file will be written.
    :param intermediate_json_filepath: Filepath to the intermediate JSON
    :return:
    """
    dump_name = "harmony.json"
    with open(intermediate_json_filepath, 'r') as f:
        data = f.read()
        json_decoded: IntermediateJson = JSONDecoder().decode(data)


    data = {
        'bad_node': None,
        'path_to_bad_node': None,
        'executed_code': None,
        'nodes': None
    }


    def default_encoder(v):
        if isinstance(v, set):
            return list(v)
        else:
            return vars(v)

    try:
        json_encoded = JSONEncoder(default=default_encoder).encode(data)
        with gzip.open(dump_name + '.gzip', 'w') as f:
            f.write(json_encoded.encode('utf-8'))
            print(f"Open file://{destination_path}/{dump_name}.gzip for more information in json format")
    except TypeError as e:
        print(e)
        exit(1)
