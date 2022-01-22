import * as mocha from 'mocha';
import * as chai from 'chai';
import parseCharmony from '../../src/charmony/charmony';
import {IntermediateJson} from '../../src/charmony/types/IntermediateJson';
import {CharmonyExecutedCode} from '../../src/charmony/types/CharmonyJson';

const {describe, it} = mocha;
const {expect} = chai;

describe('Code execution', function () {
    it('should translate intermediate code and explain fields into code execution field', function () {
        const intermediateJson: IntermediateJson = {
            code: ['hello', 'world'], explain: ['first word', 'second word'],
            issue: 'no issues',
            locations: {'0': {line: '1', code: 'echo hello world', file: 'hello.hny'}},
            macrosteps: []
        };
        const expected: CharmonyExecutedCode[] = [{
            assembly: [{assembly: 'hello', explain: 'first word'}, {assembly: 'world', explain: 'second word'}],
            file: 'hello.hny',
            line: '1',
            sourceCode: 'echo hello world',
            initialPc: 0
        }];
        const {executedCode} = parseCharmony(intermediateJson);
        expect(executedCode).deep.equals(expected);
    });

    it('should generate code execution objects for multiple source code lines', function () {
        const intermediateJson: IntermediateJson = {
            code: ['cs', '4410', 'is', 'in', 'cornell'],
            explain: ['dept', 'number', 'is', 'in', 'school'],
            issue: '',
            locations: {
                '0': {line: '1', file: 'cs.hny', code: 'begin'},
                '3': {line: '3', file: 'cs.hny', code: 'start'},
                '4': {line: '9', file: 'cs.hny', code: 'done'}
            },
            macrosteps: []
        };
        const expected: CharmonyExecutedCode[] = [{
            initialPc: 0,
            sourceCode: 'begin',
            file: 'cs.hny',
            line: '1',
            assembly: [
                {assembly: 'cs', explain: 'dept'},
                {assembly: '4410', explain: 'number'},
                {assembly: 'is', explain: 'is'}
            ]
        }, {
            initialPc: 3,
            sourceCode: 'start',
            file: 'cs.hny',
            line: '3',
            assembly: [{assembly: 'in', explain: 'in'}]
        }, {
            initialPc: 4,
            sourceCode: 'done',
            file: 'cs.hny',
            line: '9',
            assembly: [{assembly: 'cornell', explain: 'school'}]
        }];
        const {executedCode} = parseCharmony(intermediateJson);
        expect(executedCode).to.deep.equal(expected);
    });
});
