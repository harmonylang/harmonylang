import * as path from "path";

export const RESOURCE_DIR = path.join(__dirname, '..', 'resource');
export const CHARMONY_HTML_FILE = path.join(RESOURCE_DIR, "charmony.html");
export const EXAMPLE_CHARM_JSON = path.join(RESOURCE_DIR, "charm-example.json");

export const HARMONY_COMPILER_DIR = path.join(__dirname, "..", "harmony-0.9");
export const HARMONY_COMPILER_PATH = path.join(HARMONY_COMPILER_DIR, "harmony.py");

export const CHARMONY_COMPILER_DIR = path.join(__dirname, "..", "harmony-master");
export const CHARMONY_SCRIPT_PATH = path.join(CHARMONY_COMPILER_DIR, "harmony");
export const CHARMONY_JSON_OUTPUT = path.join(CHARMONY_COMPILER_DIR, "charm.json");

export const GENERATED_FILES = [
    path.join(CHARMONY_COMPILER_DIR, "charm.dSYM"),
    path.join(CHARMONY_COMPILER_DIR, "charm"),
    path.join(CHARMONY_COMPILER_DIR, "charm.json"),
    path.join(CHARMONY_COMPILER_DIR, "charm.c"),
    path.join(CHARMONY_COMPILER_DIR, "harmony.html"),
    path.join(CHARMONY_COMPILER_DIR, "harmony.json"),
];
