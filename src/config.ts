import * as path from "path";
import * as fs from "fs";

export const EXTENSION_DIR = path.join(__dirname, "..");
export const DEBUG_DIR = path.join(EXTENSION_DIR, "debug");
export const RESOURCE_DIR = path.join(EXTENSION_DIR, 'resource');
export const CHARMONY_HTML_FILE = path.join(RESOURCE_DIR, "charmony-v2.html");
export const EXAMPLE_CHARM_JSON = path.join(RESOURCE_DIR, "charm-example.json");

export const CHARMONY_COMPILER_DIR = path.join(EXTENSION_DIR, "harmony-master");
export const CHARMONY_SCRIPT_PATH = path.join(CHARMONY_COMPILER_DIR, "harmony");
export const CHARMONY_JSON_OUTPUT = path.join(CHARMONY_COMPILER_DIR, "charm.json");

export const PACKAGE_JSON = path.join(EXTENSION_DIR, "package.json");
export const VERSION_VALUE = JSON.parse(fs.readFileSync(PACKAGE_JSON, "utf-8"))['version'];

type api_endpoint = "https://harmonylang.herokuapp.com" | `http://localhost:${number}`;
export const HARMONY_SERVER_API: api_endpoint = "https://harmonylang.herokuapp.com";

export const GENERATED_FILES = [
    path.join(CHARMONY_COMPILER_DIR, "charm.dSYM"),
    // path.join(CHARMONY_COMPILER_DIR, "charm"),
    // path.join(CHARMONY_COMPILER_DIR, "charm.json"),
    // path.join(CHARMONY_COMPILER_DIR, "charm.c"),
    path.join(CHARMONY_COMPILER_DIR, "harmony.html"),
    path.join(CHARMONY_COMPILER_DIR, "harmony.json"),
];
