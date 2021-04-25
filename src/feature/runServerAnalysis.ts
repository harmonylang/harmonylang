import * as fs from 'fs';
import * as path from 'path';
import axios from 'axios';
import * as FormData from 'form-data';
import * as AdmZip from 'adm-zip';
import * as tmp from 'tmp';
import { IntermediateJson } from '../charmony/IntermediateJson';
import { HARMONY_SERVER_API, VERSION_VALUE } from '../config';

export function runServerAnalysis(
    projectDirectory: string,
    mainFilename: string,
    onFailModelCheck: (json: IntermediateJson, staticHtmlUrl?: string, duration?: number) => void,
    onOther: (msg: string) => void
): void {
    const bodyFormData = new FormData();
    const zip = new AdmZip();
    zip.addLocalFolder(projectDirectory, undefined, (filename) => {
        return path.extname(filename) == ".hny";
    });
    const tempFile = tmp.fileSync().name;
    zip.writeZip(tempFile, async (err) => {
        if (err != null) return;
        const pathToMainFile = path.relative(projectDirectory, mainFilename);
        bodyFormData.append("file", fs.createReadStream(tempFile));
        bodyFormData.append("main", JSON.stringify(pathToMainFile.split(path.sep)));
        bodyFormData.append("version", VERSION_VALUE);
        bodyFormData.append("source", "vscode");
        try {
            const response = await axios.post(HARMONY_SERVER_API + "/check",
                bodyFormData,
                {
                    headers: {...bodyFormData.getHeaders()},
                    validateStatus() { return true; }
            });
            if (200 <= response.status && response.status < 300) {
                const data = response.data;
                if (data.status === "FAILURE") {
                    const json: IntermediateJson = data.jsonData;
                    if (data.staticHtmlLocation && data.duration) {
                        const staticHtmlUrl = HARMONY_SERVER_API + data.staticHtmlLocation;
                        const duration: number = data.duration;
                        return onFailModelCheck(json, staticHtmlUrl, duration);
                    } else {
                        return onFailModelCheck(json);
                    }
                }
                return onOther(data.message);
            } else {
                return onOther(response.data);
            }
        } catch (err) {
            console.log(err);
        }
    });
}
