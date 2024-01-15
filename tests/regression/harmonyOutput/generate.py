
from contextlib import contextmanager
import json
import os
import pathlib
import shutil
import sys
import subprocess
import argparse
import tempfile


@contextmanager
def create_virtual_env():
    tmp_workdir = tempfile.mkdtemp()
    print(tmp_workdir)

    subprocess.run([sys.executable, '-m', 'venv', 'env'], cwd=tmp_workdir).check_returncode()
    subprocess.run(['bash', '-c', 'source env/bin/activate; pip install harmony'], cwd=tmp_workdir).check_returncode()

    script_path = subprocess.run(['bash', '-c', 'source env/bin/activate; which harmony'], cwd=tmp_workdir, capture_output=True, encoding='utf-8')
    script_path.check_returncode()

    try:
        yield pathlib.Path(script_path.stdout.strip())
    finally:
        shutil.rmtree(tmp_workdir)


@contextmanager
def create_temp_dir():
    tmp_workdir = tempfile.mkdtemp()
    print(tmp_workdir)
    try:
        yield pathlib.Path(tmp_workdir)
    finally:
        shutil.rmtree(tmp_workdir)


def main():

    directory = pathlib.Path(__file__).parent
    HARMONY_REPO_URL = 'https://github.com/harmonylang/harmony/raw/master'

    with create_virtual_env() as script_path:
        version_out = subprocess.run([script_path, '--version'], capture_output=True, encoding='utf-8')
        version_out.check_returncode()
        latest_file = directory / 'latest'
        current_version = latest_file.read_text() if latest_file.exists() else ''

        different_version = current_version.strip() != version_out.stdout.strip()
        if different_version:
            print('Detected a different version', different_version)
            print('Clearing existing hco files in', directory)
            subprocess.run(['rm', '-f', f'{directory}/*.hco']).check_returncode()
        latest_file.write_text(version_out.stdout)

        resp = subprocess.run(['curl', '-L', f'{HARMONY_REPO_URL}/code', '--silent'], capture_output=True)
        resp.check_returncode()
        data = json.loads(resp.stdout)
        tree_items = data['payload']['tree']['items']
        print('Downloading', len(tree_items), 'files')

        with create_temp_dir() as src_file_dir:
            for item in tree_items:
                pathname = item['path']
                name = item['name']
                if not different_version and (directory / str(name)).with_suffix('.hco').exists():
                    print('Skipping', name, 'because its output for latest version already exists')
                    continue
                subprocess.run(['curl', '-L', '--output-dir', src_file_dir, '-O', f'{HARMONY_REPO_URL}/{pathname}', '--silent']).check_returncode()

            for file in src_file_dir.iterdir():
                subprocess.run([script_path, file, '--noweb'])
                hco_file = file.with_suffix('.hco')
                if not hco_file.exists():
                    print(hco_file, 'does not exist')
                else:
                    shutil.copy(file.with_suffix('.hco'), directory)



if __name__ == "__main__":
    sys.exit(main())
