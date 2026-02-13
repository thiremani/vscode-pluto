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
- `.pt` function definition names (`z = SumSquares(a, b)`): `entity.name.function.definition.pluto`
- Function call names (`Square(a)`): `variable.function.pluto`
- General identifiers: `variable.other.readwrite.pluto`

Note: TextMate grammars are regex-based and not semantic parsers. They can distinguish
common syntactic forms, but they cannot fully resolve symbol kinds across scopes/files.
