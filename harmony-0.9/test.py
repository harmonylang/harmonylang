import os
import sys

from harmony import execute

if __name__ == "__main__":
    if len(sys.argv) >= 2:
        full_path = sys.argv[1]
    else:
        full_path = os.path.join(os.path.curdir, "harmony-0.9", "code", "diners.hny")
    print("Beginning")
    execute(full_path)
    print("Success")
