# Change Log

All notable changes to the "harmonylang" extension will be documented in this file.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

## [Unreleased]

- Add `End All Harmony Processes` command, with keybinding `Alt+Shift+Q`. For Mac users, substitute `Alt` for `Option`.
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