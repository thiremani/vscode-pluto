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

## Scope Map (quick reference)

- `.pt` top-level constant definition names: `entity.name.constant.pluto`
- Function names before `(` (`Square(a)`, `z = SumSquares(a, b)`): `entity.name.function.pluto`
- General identifiers: `variable.other.readwrite.pluto`

Note: to keep behavior predictable across themes and editors, function-definition names
are not currently highlighted with a separate scope.
