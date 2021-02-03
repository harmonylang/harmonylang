import pathlib
import unittest
from json import JSONDecoder
from pprint import pprint

from analysis.fromc.analysis import get_html_content


class TestAnalysis(unittest.TestCase):

    def test_int(self):
        json_path = pathlib.Path("../charm.json")
        with open(json_path, 'r') as f:
            obj = JSONDecoder().decode(f.read())
        locations = [(int(k), v) for k, v in obj['locations'].items()]
        locations.sort(key=lambda i: i[0])
        code = "\n".join([v['code'] for (k, v) in locations])
        with open("../charm.hny", 'w') as f:
            f.write(code)


if __name__ == '__main__':
    unittest.main()
