from pprint import pprint

from analysis.fromc.analysis import get_html_content
from os import path


__DIR__ = path.dirname(__file__)

if __name__ == "__main__":
    try:
        data = get_html_content(path.join(__DIR__, "./analysis/fromc/charm.json"), __DIR__)
        pprint(data.get("path_to_bad_node"))
    except BaseException as e:
        print("Error occurred here :/")
        with open("error.txt", 'w') as f:
            f.write(str(e))
    # exit(1)
