import * as fs from 'fs';
import * as path from 'path';
import axios from 'axios';
import * as FormData from 'form-data';
import * as AdmZip from 'adm-zip';
import * as tmp from 'tmp';
import { IntermediateJson } from '../charmony/IntermediateJson';
import { HARMONY_SERVER_API } from '../config';

export function runServerAnalysis(
    projectDirectory: string,
    mainFilename: string,
    onFailModelCheck: (json: IntermediateJson) => void,
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
        bodyFormData.append("file", fs.createReadStream(tempFile));
        bodyFormData.append("main", path.relative(projectDirectory, mainFilename));
        try {
            const response = await axios.post(HARMONY_SERVER_API + "check",
                bodyFormData,
                {
                    headers: {
                    ...bodyFormData.getHeaders(),
                }
            });
            if (200 <= response.status && response.status < 300) {
                const data = response.data;
                if (data.status === "FAILURE") {
                    const json: IntermediateJson = data.jsonData;
                    return onFailModelCheck(json);
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
