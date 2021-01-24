import * as mocha from 'mocha';
import * as chai from 'chai';
import {IntermediateJson} from "../../src/charmony/IntermediateJson";
import {parse, TraceData} from "../../src/charmony/CharmonyJson";
const {describe, it} = mocha;
const {expect} = chai;

describe('Code path generation tests', function () {
    it('should get issue', function () {
        const intermediateJson: IntermediateJson = {
            code: [], explain: [], issue: "some issue", locations: {}, macrosteps: []
        };
        const expected = "some issue";
        const {path_to_bad_node} = parse(intermediateJson);
        expect(path_to_bad_node.issue).to.equal(expected);
    });
});
