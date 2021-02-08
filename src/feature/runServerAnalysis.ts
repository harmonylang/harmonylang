import * as fs from 'fs';
import * as path from 'path';
import * as createHtmlElement from 'create-html-element';
import axios from 'axios';
import * as FormData from 'form-data';
import * as AdmZip from 'adm-zip';
import * as glob from 'glob';
import * as tmp from 'tmp';
import { IntermediateJson } from '../charmony/IntermediateJson';
import { HARMONY_SERVER_API } from '../config';

export function runServerAnalysis(
    projectDirectory: string,
    mainFilename: string,
    onFailModelCheck: (json: IntermediateJson) => void,
    onOther: (msg: string) => void
): void {
    console.log("Starting");
    const bodyFormData = new FormData();
    console.log(projectDirectory);
    const harmonyFiles = glob.sync("**/*.hny", { cwd: projectDirectory});
    const zip = new AdmZip();
    console.log(harmonyFiles);
    for (const file of harmonyFiles) {
        console.log(file);
        zip.addLocalFile(path.join(projectDirectory, file));
    }
    const tempFile = tmp.fileSync().name;
    console.log(tempFile);
    zip.writeZip(tempFile, async (err) => {
        if (err != null) return;
        bodyFormData.append("file", fs.createReadStream(tempFile));
        bodyFormData.append("main", path.relative(projectDirectory, mainFilename));
        console.log("Making request");
        try {
            const response = await axios.post(HARMONY_SERVER_API + "check",
                bodyFormData,
                {
                    headers: {
                    ...bodyFormData.getHeaders(),
                }
            });
            console.log("Request completed", response.status);
            if (200 <= response.status && response.status < 300) {
                const data = response.data;
                console.log(data);
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