# Repository Structure

## Purpose

This document explains how the repository is organized and which paths are authoritative.

## Source of Truth

- The Git repository is the source of truth.
- Markdown files are the primary knowledge artifacts.
- MkDocs publishes from `docs/`, but presentation does not replace source control.

## Key Entry Points

- `README.md` explains repository purpose, working model, and local documentation commands.
- `AGENTS.md` provides repo-specific guidance for AI agents working in the repository.
- `docs/index.md` is the main MkDocs landing page for human browsing.

## Canonical Governance Documents

The governance source of truth lives under `docs/00_governance/`.

- `docs/00_governance/lifecycle_model.md`
- `docs/00_governance/naming_identification_convention.md`
- `docs/00_governance/tailoring_derived_documents_register.md`

These documents define lifecycle, naming, traceability, and tailoring rules for the repository.

## Lifecycle Process Documents

Lifecycle-stage process guidance lives under `docs/10_lifecycle/`.

- `docs/10_lifecycle/index.md`
- `docs/10_lifecycle/t0_b0/b0_requirement_capture_process.md`

These documents describe how teams move between lifecycle states and baselines.
They complement governance rules but do not replace them.

## Wrapper and Navigation Pages

Some files exist mainly to support browsing and navigation.

- `docs/repository_overview.md` includes content from `README.md` for the MkDocs site.
- `docs/AGENTS.md` includes content from `AGENTS.md` for the MkDocs site.
- Root `index.md` is a repo-facing entry page.

These pages should remain thin and should not drift from the canonical source documents they reference.

## Validation Paths

- Markdown style is checked with `npx markdownlint-cli2 "**/*.md"`.
- Site integrity is checked with `scripts/docs.sh build`.
- The local `pre-push` hook and GitHub Actions workflow run documentation validation before changes are shared.

## Growth Model

- Add new canonical knowledge artifacts as plain Markdown in stable repo paths.
- Keep naming aligned with `docs/00_governance/naming_identification_convention.md`.
- Prefer extending existing source areas over creating site-only copies.
- Keep lifecycle process documents under `docs/10_lifecycle/` and templates under a separate top-level docs area when introduced.
