# Change Log

All notable changes to the "harmonylang" extension will be documented in this file.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

### [0.2.0] - 2021-02-03
 - New `(C)Harmony` compiler, which uses `C/Python` to optimize model-checking.
    - This will require `Python3` and a `C` compiler to be installed.
 - Fix bugs in the Interactive Process Visualizer.

## [0.1.0] - 2021-02-04
 - Massive UI overhaul with compiler output rewrite.
   - Interactive Process Visualizer
   - Crash Timeline Playback
 - Removed previous UI
 - Removed Notification Output System
 - Bug fixes

## [0.0.6] - 2020-09-08

- Include `Add 'harmony' to PATH` command, which add and setup the harmony CLI compiler on the device. (Unix only)
- Include `Remove 'harmony' CLI` command, which removes the added harmony CLI compiler with the above command from the device. (Unix only)
- Lowered required VS Code version to 1.42+.
- Bug fixes.

## [0.0.5] - 2020-09-06

- Added `End All Harmony Processes` command, with keybinding `Alt+Shift+Q`. For Mac users, substitute `Alt` for `Option`.
- Added keybinding `Alt+Shift+N` to `Run Harmony`.
- More helpful messages.

## [0.0.4] - 2020-09-05

### Added

- Built the Harmony compiler directly into the extension. Removed requirement to download the compiler separately.
- Show the Harmony Output window only if the build succeeds. The Harmony Output window is closed if the build fails.
- Bug fixes.

## [0.0.3] - 2020-09-05

### Added

- Added Unix compatibility for `Run Harmony File`.
- Reworked build success/failure reporting.

## [0.0.2] - 2020-09-04

### Added

- Added HarmonyLang extension icon and Harmony file icons. VS Code currently does not support icon fallback, so the latter is currently disabled.
- Added `Run Harmony File` command.
- Added Harmony Output window.

## [0.0.1] - 2020-09-04

### Added

- Added Harmony syntax highlighting based on the [default VSCode extension for Python](https://github.com/microsoft/vscode)
