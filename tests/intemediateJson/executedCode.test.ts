import * as mocha from 'mocha';
import * as chai from 'chai';
import {IntermediateJson} from "../../src/charmony/IntermediateJson";
import {HarmonyCode, parse} from "../../src/charmony/CharmonyJson";

const {describe, it} = mocha;
const {expect} = chai;

describe('Code execution', function () {
    it('should translate intermediate code and explain fields into code execution field', function () {
        const intermediateJson: IntermediateJson = {
            code: ["hello", "world"], explain: ["first word", "second word"],
            issue: "no issues",
            locations: {"0": {line: "1", code: "echo hello world", file: "hello.hny"}},
            macrosteps: []
        };
        const expected: HarmonyCode[] = [{
            assembly: [{code: "hello", explain: "first word"}, {code: "world", explain: "second word"}],
            file: "hello.hny",
            line: "1",
            source_code: "echo hello world",
            start_pc: 0
        }];
        const {executed_code} = parse(intermediateJson);
        expect(executed_code).deep.equals(expected);
    });

    it('should generate code execution objects for multiple source code lines', function () {
        const intermediateJson: IntermediateJson = {
            code: ["cs", "4410", "is", "in", "cornell"],
            explain: ["dept", "number", "is", "in", "school"],
            issue: "",
            locations: {
                "0": {line: "1", file: "cs.hny", code: "begin"},
                "3": {line: "3", file: "cs.hny", code: "start"},
                "4": {line: "9", file: "cs.hny", code: "done"}
            },
            macrosteps: []
        };
        const expected: HarmonyCode[] = [{
            start_pc: 0,
            source_code: "begin",
            file: "cs.hny",
            line: "1",
            assembly: [
                {code: "cs", explain: "dept"},
                {code: "4410", explain: "number"},
                {code: "is", explain: "is"}
            ]
        }, {
            start_pc: 3,
            source_code: "start",
            file: "cs.hny",
            line: "3",
            assembly: [{code: "in", explain: "in"}]
        }, {
            start_pc: 4,
            source_code: "done",
            file: "cs.hny",
            line: "9",
            assembly: [{code: "cornell", explain: "school"}]
        }];
        const {executed_code} = parse(intermediateJson);
        expect(executed_code).to.deep.equal(expected);
    });
});
