import gzip
import pathlib
import unittest
from json import JSONDecoder
from pprint import pprint

from analysis.fromc.analysis import get_html_content


class TestAnalysis(unittest.TestCase):

    def test_int(self):
        get_html_content(pathlib.Path("../charm.json"), pathlib.Path("."))
        with gzip.open("harmony.json.gzip", "r") as f:
            decoder = JSONDecoder()
            data = f.read()
            json = decoder.decode(data.decode('utf-8'))
            del json['executed_code']
            pprint(json)


if __name__ == '__main__':
    unittest.main()