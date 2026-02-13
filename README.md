# Pluto PT VS Code Extension

Syntax highlighting support for Pluto language files:

- `.pt` (template files)
- `.spt` (script files)

## Repository Layout

- `editors/grammars/`: canonical shared TextMate grammars
- `editors/vscode/`: VS Code extension package and adapter files

## Features

- `#` comments
- string literals (`"..."`) including heap-string suffix form (`"...".`)
- numeric literals (integers and floats)
- keywords: `or`, `return`
- `.pt` function definition highlighting
- `.pt` top-level constant definition highlighting
- function call highlighting in `.pt` and `.spt`

## Development

```sh
cd editors/vscode
./scripts/sync-grammars.sh
```

Launch extension host:

1. Open `editors/vscode` in VS Code
2. Press `F5` to run the extension

## Extension Identity

- VS Code extension package name: `pluto-pt`
- Suggested repository name: `pluto-pt-vscode`
