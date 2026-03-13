#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HOOKS_DIR="$ROOT_DIR/.git/hooks"

if [[ ! -d "$HOOKS_DIR" ]]; then
  printf '%s\n' 'Error: .git/hooks was not found. Initialize Git first.' >&2
  exit 1
fi

install -m 0755 "$ROOT_DIR/.githooks/pre-push" "$HOOKS_DIR/pre-push"
printf '%s\n' 'Installed pre-push hook to .git/hooks/pre-push'
