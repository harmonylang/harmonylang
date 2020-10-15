import os
from typing import Tuple, List, Optional

from analysis.util import str_of_value


class MacroStep:
    def __init__(self, filename: str, line_number: int, executed_line: str, code: List[Tuple[int, str, str, Optional[int]]]):
        self.filename = filename
        self.line_number = line_number
        self.executed_line = executed_line
        self.first_pc, _, _, _ = min(code, key=lambda p: p[0])
        self.code = [(c, explanation, target) for _, c, explanation, target in code]

    def __str__(self):
        layout: List[str] = [f"{self.filename}:{self.line_number} {self.executed_line}"]
        for pc_off, c in enumerate(self.code):
            layout.append(f"{pc_off + self.first_pc}: {c[0]}")
        return "\n".join(layout)

    def __repr__(self):
        return str(self)


def get_code(code, scope, files, typings) -> List[MacroStep]:
    last_loc = None
    executed_line: Optional[str] = None
    executed_code: List[Tuple[int, str, str, Optional[int]]] = []
    macro_steps: List[MacroStep] = []
    for pc in range(len(code)):
        if scope.locations.get(pc) is not None:
            file, line = scope.locations[pc]
            filename = os.path.basename(file)
            if (filename, line) != last_loc:
                lines = files.get(file)
                if lines is not None and line <= len(lines):
                    executed_line = lines[line - 1]
                if last_loc is not None:
                    macro_steps.append(MacroStep(filename, line, executed_line, executed_code))
                    executed_code.clear()
            last_loc = filename, line
        explanation = code[pc].explain()
        if isinstance(code[pc], typings['jump_op']) or isinstance(code[pc], typings['jump_cond_op']):
            executed_code.append((pc, str(code[pc]), explanation, code[pc].pc))
        elif isinstance(code[pc], typings['push_op']) and isinstance(code[pc].constant[0], typings['pc_value']):
            executed_code.append((pc, f"Push {str_of_value(code[pc].constant[0])}", explanation, code[pc].constant[0].pc))
        else:
            executed_code.append((pc, str(code[pc]), explanation, None))
    if last_loc is not None:
        filename, line = last_loc
        macro_steps.append(MacroStep(filename, line, executed_line, executed_code))
        executed_code.clear()
    return macro_steps
