import * as mocha from 'mocha';
import * as chai from 'chai';
import ProcessManager from '../../src/vscode/ProcessManager';

const {describe, it} = mocha;
const {expect} = chai;

async function wait<T>(ms: number, fn: (() => T)): Promise<T> {
    return new Promise<T>(resolve => {
        setTimeout(() => {
            resolve(fn());
        }, ms);
    });
};

describe('Basic Process Management', () => {
    it('Runs a simple command like date', async () => {
        ProcessManager.startCommand(['date'], {}, (error, stdout, stderr) => {
            expect(error).is.null;
            expect(stderr).is.empty;
            expect(stdout).is.not.empty;
        });
        const result = await ProcessManager.startCommandAsync(['date'], {});
        expect(result.error).is.null;
        expect(result.stderr).is.empty;
        expect(result.stdout).is.not.empty;
    });
    it('Runs a simple interval that pushes a string', async function() {
        const message: string[] = [];
        const intervalPeriodMs = 10;
        const intervalCount = 5;
        this.timeout(intervalPeriodMs * intervalCount * 4);

        const intervalId = ProcessManager.startInterval(() => {
            return message.push('Test string');
        }, intervalPeriodMs);
        // hopefully this test isn't too flaky haha
        // Run the interval a couple of times and expect the size to increase
        const finalMessageSize = await wait(intervalPeriodMs * (intervalCount * 2), () => {
            ProcessManager.end(intervalId);
            expect(message.length).greaterThan(intervalCount);
            return message.length;
        });
        await wait(intervalPeriodMs * intervalCount, () => {
            // We ended the Interval, so the array size should have stopped increasing.
            expect(message.length).equals(finalMessageSize);
        });
    });
    it('Runs multiple intervals in parallel that pushes a string', async function() {
        const message: string[] = [];
        const intervalPeriodMs = 10;
        const intervalCount = 5;
        const numberOfIntervals = 5;
        this.timeout(intervalPeriodMs * intervalCount * 4);

        const intervalIds: string[] = [];
        for (let i = 0; i < numberOfIntervals; ++i) {
            const intervalId = ProcessManager.startInterval(() => {
                return message.push('Test string');
            }, intervalPeriodMs);
            intervalIds.push(intervalId);
        }
        // Run the interval a couple of times and expect the size to increase
        const finalMessageSize = await wait(intervalPeriodMs * (intervalCount * 2), () => {
            intervalIds.forEach(id => ProcessManager.end(id));
            expect(message.length).greaterThan(intervalCount * numberOfIntervals);
            return message.length;
        });
        await wait(intervalPeriodMs * intervalCount, () => {
            // We ended the Interval, so the array size should have stopped increasing.
            expect(message.length).equals(finalMessageSize);
        });
    });

    describe('Kills processes', () => {
        it('via endAll', async function() {
            const processCount = 5;
            const waitTimeMs = 1000;
            this.timeout(waitTimeMs * 10);
            for (let i = 0; i < processCount; ++i) {
                // we should not hit the callbacks if the processes are killed
                ProcessManager.startCommand(['sleep', (waitTimeMs / 1000).toString()], {}, (error, stdout, stderr) => {
                    chai.assert(false);
                });
                ProcessManager.startInterval(() => {
                    chai.assert(false);
                }, waitTimeMs);
            }
            ProcessManager.endAll();
            await wait(waitTimeMs * 2, () => { return; });
        });
    });
});