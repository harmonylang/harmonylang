import * as path from 'path';
import * as dotenv from 'dotenv';
import * as fs from 'fs';
import {EXTENSION_DIR} from '../config';

dotenv.config({
    path: path.join(EXTENSION_DIR, '.env')
});

/**
 * If false, then all of the following functions are no-ops.
 */
const __isDevelopment = process.env.DEVELOPMENT !== undefined && process.env.DEVELOPMENT.toLowerCase() === 'true';

/**
 * The debug functions writes debug information into the following directory.
 */
const __DEBUG_DIR = path.join(EXTENSION_DIR, 'debug');
if (__isDevelopment && !fs.existsSync(__DEBUG_DIR)) {
    fs.mkdirSync(__DEBUG_DIR);
}

const __BARRIER = '='.repeat(80);

function __append(target: string, ...data: string[]) {
    if (!__isDevelopment) return;

    fs.appendFileSync(target, data.join('\n'), {encoding: 'utf-8'});
}

/**
 * Logs data into {DEBUG_DIR}/log.txt
 * @param msg
 * @param fields
 */
export function LOG(msg: string, fields?: Record<string, unknown>) {
    if (!__isDevelopment) return;

    const TARGET = path.join(__DEBUG_DIR, 'logger.txt');
    const date = new Date().toISOString();

    __append(TARGET,
        __BARRIER, `${date}: ${msg}`, `${fields ? JSON.stringify(fields, undefined, 4) : ''}`, __BARRIER);
}
