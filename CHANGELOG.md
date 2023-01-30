# Change Log

All notable changes to the "harmonylang" extension will be documented in this file.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

### [2.2.0] - 2023-01-30
- Updated for compatibility with Harmony 1.2.3125
- Upgraded Melody Analysis Suite for graph generation support
- Updated installation strategy
- Bug fixes

### [2.1.0] - 2022-01-31

- Added syntax highlighting for `save` expressions
- Added right-click context commands for `Run Harmony`
- Bug fixes

### [2.0.0] - 2022-01-23

- Updated installation method to use `pip`
- Added compatibility for graph visualization
- Updated syntax highlighter
- Removed build commands _(unneccesary for recent versions of Harmony)_
- Bug fixes

## [1.1.0] - 2021-09-30

- Added code autocompletion and error highlighting
- Migrates to the new Melody Analysis Suite, with an improved UI
  - Implements the previous standalone analyzer as a fallback
- Bug fixes

## [1.0.0] - 2021-08-25

- Focuses on installing/supporting a local version of Harmony.
- Update to support the latest version of Harmony (`1.2`).
- Removes the `(Server) Run Harmony` command. For this command, please see and use [this extension](https://marketplace.visualstudio.com/items?itemName=kevinsun-dev-cornell.harmonylang-lite);

## [0.2.3] - 2021-02-12

- Add a `(Server) Run Harmony` command, which will try to run your Harmony files on a remote server that hosts the Harmony compiler. This may help those whose systems are not compatible with the local installation of Harmony
- Update the built-in Harmony compiler
- Bug fixes

## [0.2.0] - 2021-02-03
 - New `(C)Harmony` compiler, which uses `C/Python` to optimize model-checking.
    - This will require `Python3` and a `C` compiler to be installed.
 - Fix bugs in the Interactive Process Visualizer.

## [0.1.3] - 2021-02-07
 - Updated HarmonyLang to use Harmony 0.9 LTS compiler
 - Bug fixes.

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
