import * as path from 'path';
import * as fs from 'fs';
import * as os from 'os';

export const EXTENSION_DIR = path.join(__dirname, '..');
export const DEBUG_DIR = path.join(EXTENSION_DIR, 'debug');
export const RESOURCE_DIR = path.join(EXTENSION_DIR, 'resource');
export const CHARMONY_HTML_FILE = path.join(RESOURCE_DIR, 'charmony-v2.html');
export const MELODY_LAUNCHER = path.join(RESOURCE_DIR, 'charmony-v3.html');
export const EXAMPLE_CHARM_JSON = path.join(RESOURCE_DIR, 'charm-example.json');

const HOME_DIRECTORY = path.resolve(os.homedir());
export const INSTALL_HARMONY_COMMAND = [
    'pip',
    'install',
    '--upgrade',
    'harmony-model-checker'
];
export const HARMONY_DIRECTORY = path.join(HOME_DIRECTORY, '.harmony-model-checker');

export const CHARMONY_COMPILER_DIR = path.join(HARMONY_DIRECTORY, 'harmony-compiler');
export const CHARMONY_SCRIPT_PATH = path.join(CHARMONY_COMPILER_DIR, 'harmony');

export const PACKAGE_JSON = path.join(EXTENSION_DIR, 'package.json');
export const VERSION_VALUE = JSON.parse(fs.readFileSync(PACKAGE_JSON, 'utf-8'))['version'];

export const GENERATED_FILES = [
    path.join(CHARMONY_COMPILER_DIR, 'charm.dSYM'),
    path.join(CHARMONY_COMPILER_DIR, 'harmony.html'),
    path.join(CHARMONY_COMPILER_DIR, 'harmony.json'),
];
