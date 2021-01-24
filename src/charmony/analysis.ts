import {PathLike} from "fs";
import {HarmonyTopLevel} from "./CharmonyJson";
import * as fs from "fs";
import {getPathToBadNode} from "./pathToBadNode";
import {getExecutedCode} from "./getExecutedCode";
import {IntermediateJson} from "./IntermediateJson";

/**
 * Converts the data from an intermediate JSON file into the Harmony Lang display JSON file.
 * @param decodedJson
 */
export function getHtmlContent(decodedJson: IntermediateJson): HarmonyTopLevel {
    console.log(decodedJson);

    console.log("Step 1.1");
    const pathToBadNode = getPathToBadNode(decodedJson);
    console.log("Step 1.2");
    const executedCode = getExecutedCode(decodedJson);
    console.log("Step 1.3");

    return {
        path_to_bad_node: pathToBadNode,
        executed_code: executedCode,
    };
}
