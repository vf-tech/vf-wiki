# vf-wiki

A Markdown-first knowledge base for humans and LLMs.

The Git repository is the source of truth. MkDocs is a lightweight browse layer for human readers, not a separate content system.

## Goals

- Keep engineering knowledge in plain Markdown.
- Make documents easy to read in Git, editors, and a browser.
- Keep filenames, headings, and identifiers stable for tooling, search, and RAG.
- Prefer explicit traceability over implied context.

## Start Here

- `README.md` - repository purpose, structure, and working model.
- `AGENTS.md` - guidance for AI agents working in the repo.
- `docs/00_governance/lifecycle_model.md` - lifecycle backbone and baseline model.
- `docs/00_governance/naming_identification_convention.md` - file and identifier rules.
- `docs/00_governance/tailoring_derived_documents_register.md` - artifact catalog and tailoring decisions.

## Repository Model

- The repo is the canonical knowledge base.
- Markdown files are the primary artifacts.
- MkDocs provides a simple front page and navigation for humans.
- LLM-oriented tooling should read the repo directly when possible.

## Current Structure

- `docs/00_governance/` - canonical governance, lifecycle, naming, and tailoring rules.
- Root entry files - `README.md`, `AGENTS.md`, `index.md`, and `mkdocs.yml`.
- `docs/` - published documentation space containing canonical governance docs plus a few thin wrapper pages.

## Authoring Rules

- Prefer one document per concept or controlled artifact.
- Use real repo paths in links and references.
- Keep filenames stable and machine-friendly.
- Follow the traceability identifier format defined in `docs/00_governance/naming_identification_convention.md`.
- Treat planned documents as planned; do not imply they already exist.

## MkDocs

MkDocs publishes from `docs/`. Governance source documents live there directly, while a few pages such as `docs/repository_overview.md` remain thin wrappers to root files.

The local docs toolchain is tracked in `requirements-docs.txt`.

Quick commands:

```bash
scripts/docs.sh setup
scripts/docs.sh serve
scripts/docs.sh build
```

To preview locally:

```bash
python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements-docs.txt
mkdocs serve
```

To validate the site strictly:

```bash
. .venv/bin/activate
mkdocs build --strict
```

Mermaid code fences render in MkDocs while remaining plain Markdown in the repo.

## Current Scope

The current baseline focuses on governance:

- lifecycle structure
- document naming and identifiers
- MIL-STD-498 tailoring and derived artifacts
