import * as os from "os";
import * as path from "path";
import * as fs from "fs";

const compilerPath = path.join(__dirname, '..', '..', 'harmony-0.9');
const homeDir = os.homedir();
const harmonyPath = path.join(homeDir, 'cs4410_harmony');

export function install(): void {
  const directories = [compilerPath];
  if (!fs.existsSync(harmonyPath)) {
    fs.mkdirSync(harmonyPath);
    while (directories.length > 0) {
      const dir = directories.pop() as string;
      fs.readdirSync(dir).forEach(file => {
        const src = path.join(dir, file);
        const subpath = path.relative(compilerPath, dir);
        if (fs.lstatSync(src).isDirectory()) {
          fs.mkdirSync(path.join(harmonyPath, subpath, file));
          directories.push(src);
        } else {
          const dest = path.join(harmonyPath, subpath, file);
          fs.copyFileSync(src, dest);
        }
      });
    }
  }
}

export function uninstall(): void {
  if (fs.existsSync(harmonyPath)) {
    fs.rmdirSync(harmonyPath, {
      recursive: true
    });
  }
}
