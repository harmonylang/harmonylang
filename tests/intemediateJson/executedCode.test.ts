import * as mocha from 'mocha';
import * as chai from 'chai';

const {describe, it} = mocha;
const {expect} = chai;

describe('Simple test', function () {
    it('should pass', function () {
        expect(1).equal(1);
    });
});
