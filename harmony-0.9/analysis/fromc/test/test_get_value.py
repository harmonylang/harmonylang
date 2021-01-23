import unittest

from analysis.fromc.jsonify import get_value
from analysis.fromc.jsontypes import ValueRep


class TestGetValue(unittest.TestCase):

    def test_int(self):
        value: ValueRep = {"type": "int", "value": "12"}
        python_value = get_value(value)
        self.assertEqual(12, python_value)

    def test_str(self):
        value: ValueRep = {"type": "atom", "value": ".lock"}
        python_value = get_value(value)
        self.assertEqual(".lock", python_value)

    def test_bool(self):
        value: ValueRep = {"type": "bool", "value": "True"}
        python_value = get_value(value)
        self.assertEqual(True, python_value)

        value = {"type": "bool", "value": "False"}
        python_value = get_value(value)
        self.assertEqual(False, python_value)

    def test_set(self):
        value: ValueRep = {"type": "set", "value": [{"type": "int", "value": "2"},
                                                    {"type": "int", "value": "3"}]}
        python_value = get_value(value)
        self.assertListEqual([2, 3], python_value)

    def test_valid_dict(self):
        value: ValueRep = {"type": "dict", "value": [{
            "key": {"type": "int", "value": "0"},
            "value": {"type": "int", "value": "12"}
        }, {
            "key": {"type": "int", "value": "1"},
            "value": {"type": "int", "value": "100"}
        }]}
        python_value = get_value(value)
        self.assertDictEqual({"0": 12, "1": 100}, python_value)

    def test_unhashable_keys_in_dict(self):
        value: ValueRep = {"type": "dict", "value": [{
            "key": {"type": "dict", "value": []},
            "value": {"type": "pc", "value": "PC(100)"}
        }, {
            "key": {"type": "dict", "value": [{"key": {"type": "int", "value": "2"},
                                               "value": {"type": "int", "value": "3"}}]},
            "value": {"type": "pc", "value": "PC(101)"}
        }]}
        python_value = get_value(value)
        self.assertDictEqual({'{}': "PC(100)", "{'2': 3}": "PC(101)"}, python_value)


if __name__ == '__main__':
    unittest.main()
