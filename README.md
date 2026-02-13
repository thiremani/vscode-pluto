# Pluto VS Code Extension

Syntax highlighting support for the **Pluto Programming Language**:

- Language repository: https://github.com/thiremani/pluto

This extension is for Pluto language source files and is not related to other projects that also use the name "Pluto".

Supported file types:

- `.pt` (code mode files)
- `.spt` (script files)

## Repository Layout

- `editors/grammars/`: canonical shared TextMate grammars
- `editors/vscode/`: VS Code extension package and adapter files

## Features

- `#` comments
- string literals (`"..."`) including heap-string suffix form (`"...".`)
- numeric literals (integers and floats)
- identifier highlighting in `.pt` and `.spt`
- keywords: `or`, `return`
- `.pt` function definition highlighting
- `.pt` top-level constant definition highlighting
- function call highlighting in `.pt` and `.spt`

## Development

```sh
cd editors/vscode
./scripts/sync-grammars.sh
```

Run extension host (recommended):

From the repository root:

```sh
code --extensionDevelopmentPath="$PWD/editors/vscode" <path-to-pluto-repo>
```

Then open any `.pt`/`.spt` file in the launched window.

Alternative local install test:

From the repository root:

```sh
cd editors/vscode
npx @vscode/vsce@3.7.1 package
code --install-extension pluto-*.vsix --force
```

## Extension Identity

- VS Code extension ID: `thiremani.pluto`
- Repository name: `vscode-pluto`
