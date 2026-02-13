#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VSCODE_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
ROOT_DIR="$(cd "${VSCODE_DIR}/.." && pwd)"
SHARED_DIR="${ROOT_DIR}/grammars"
TARGET_DIR="${VSCODE_DIR}/syntaxes"

cp "${SHARED_DIR}/pluto.tmLanguage.json" "${TARGET_DIR}/pluto.tmLanguage.json"
cp "${SHARED_DIR}/pluto-template.tmLanguage.json" "${TARGET_DIR}/pluto-template.tmLanguage.json"
cp "${SHARED_DIR}/pluto-script.tmLanguage.json" "${TARGET_DIR}/pluto-script.tmLanguage.json"

echo "Synced shared grammars from ${SHARED_DIR} to ${TARGET_DIR}"
