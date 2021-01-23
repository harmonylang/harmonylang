import {PathLike} from "fs";
import {HarmonyTopLevel} from "../CharmonyJson";
import * as fs from "fs";
import {getPathToBadNode} from "./pathToBadNode";
import {getExecutedCode} from "./getExecutedCode";
import {IntermediateJson} from "./IntermediateJson";

/**
 * Converts the data from an intermediate JSON file into the Harmony Lang display JSON file.
 * @param json_path
 */
export function getHtmlContent(json_path: PathLike): HarmonyTopLevel {
  const decodedJson: IntermediateJson = JSON.parse(fs.readFileSync(json_path).toString('utf-8'));

  const pathToBadNode = getPathToBadNode(decodedJson);
  const executedCode = getExecutedCode(decodedJson);

  return {
    path_to_bad_node: pathToBadNode,
    executed_code: executedCode
  };
}
