#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if ! command -v markdownlint >/dev/null 2>&1; then
  npm install -g markdownlint-cli@0.41.0
fi

markdownlint --version >/dev/null
