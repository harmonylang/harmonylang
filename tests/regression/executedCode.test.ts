import * as mocha from 'mocha';
import * as chai from 'chai';
import * as fs from 'fs';
import * as path from 'path';
import * as Diff from 'diff';
import parseCharmony from '../../src/charmony/charmony';

const {describe, it} = mocha;
const {expect} = chai;

describe('Harmony code regression test', function () {
    this.timeout(5 * 1000);
    const harmonyLangTestDirectory = path.join(path.dirname(__filename), 'harmonyOutput');
    const parsedHarmonyLangGoldenOutputDirectory = path.join(path.dirname(__filename), 'parsedHarmonyOutputGolden');
    const parsedHarmonyLangLatestOutputDirectory = 'parsedHarmonyOutputLatest';
    if (!fs.existsSync(parsedHarmonyLangLatestOutputDirectory)) {
        fs.mkdirSync(parsedHarmonyLangLatestOutputDirectory, { recursive: true });
    }
    it('is ready', async () => {
        type ErrorInfo = {
            file: string;
            description: string;
            diff: Diff.Change[];
        };
        const errors: ErrorInfo[] = [];
        for (const file of fs.readdirSync(harmonyLangTestDirectory)) {
            if (path.extname(file) !== '.hco') {
                continue;
            }
            const basenmae = path.basename(file);
            const nameWithoutExt = basenmae.slice(0, basenmae.indexOf('.'));
            const data = fs.readFileSync(path.join(harmonyLangTestDirectory, file), 'utf-8');
            try{
                const parsedResult = parseCharmony(JSON.parse(data));
                const stringifiedResult = JSON.stringify(parsedResult, undefined, 2);
                const newFile = path.join(parsedHarmonyLangLatestOutputDirectory, nameWithoutExt + '.res');
                fs.writeFileSync(newFile, stringifiedResult);
                const goldenFile = path.join(parsedHarmonyLangGoldenOutputDirectory, nameWithoutExt + '.res');

                if (!fs.existsSync(goldenFile)) {
                    errors.push({
                        file: file,
                        description: `Golden version of ${file} output does not exist in ${parsedHarmonyLangGoldenOutputDirectory}`,
                        diff: [],
                    });
                    continue;
                }
                const goldenData = fs.readFileSync(goldenFile, 'utf-8');
                const changes = Diff.diffLines(goldenData, stringifiedResult).filter(part => {
                    return part.added || part.removed;
                });
                if (changes.length > 0) {
                    errors.push({
                        file: file,
                        description: 'Found diffs between golden and new',
                        diff: changes
                    });
                }
            } catch (e) {
                errors.push({
                    file: file,
                    description: `Unexpected error ${file}: ${e}`,
                    diff: [],
                });
                throw e;
            }
        }
        if (errors.length > 0) {
            for (const err of errors) {
                console.log('Encountered an error while testin file ' + err.file + '.', 'Description:', err.description);
                if (err.diff) {
                    for (const diff of err.diff) {
                        console.log(diff);
                    }
                }
            }
        }
        expect(errors).is.empty;
    });
});
