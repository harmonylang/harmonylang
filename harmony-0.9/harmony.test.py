import pathlib

from analysis.fromc.analysis import get_html_content
import os


dir_path = pathlib.Path(os.path.dirname(os.path.realpath(__file__)))

if __name__ == "__main__":
    try:
        get_html_content(dir_path.joinpath(pathlib.Path("./analysis/fromc/charm.json")), dir_path)
    except BaseException as e:
        print("Error occurred here :/")
        with open("error.txt", 'w') as f:
            f.write(str(e))
    exit(1)
