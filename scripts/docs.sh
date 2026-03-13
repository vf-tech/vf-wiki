#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VENV_DIR="$ROOT_DIR/.venv"

usage() {
  cat <<'EOF'
Usage: scripts/docs.sh [setup|serve|build]

  setup  Create .venv and install docs dependencies
  serve  Start local MkDocs preview server
  build  Run strict MkDocs build
EOF
}

ensure_venv() {
  if [[ ! -x "$VENV_DIR/bin/python" ]]; then
    python3 -m venv "$VENV_DIR"
  fi
}

ensure_deps() {
  ensure_venv
  "$VENV_DIR/bin/pip" install -r "$ROOT_DIR/requirements-docs.txt"
}

cmd="${1:-build}"

case "$cmd" in
  setup)
    ensure_deps
    ;;
  serve)
    ensure_deps
    exec "$VENV_DIR/bin/mkdocs" serve
    ;;
  build)
    ensure_deps
    exec "$VENV_DIR/bin/mkdocs" build --strict
    ;;
  *)
    usage
    exit 1
    ;;
esac
