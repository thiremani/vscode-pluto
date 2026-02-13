# Pluto Shared Grammars

This directory contains the canonical TextMate grammars shared across editors:

- `pluto.tmLanguage.json` (common tokens/scopes)
- `pluto-template.tmLanguage.json` (`.pt` template files)
- `pluto-script.tmLanguage.json` (`.spt` script files)

The VS Code extension copies these into `editors/vscode/syntaxes/`.
To sync after grammar changes:

```sh
cd editors/vscode
./scripts/sync-grammars.sh
```
