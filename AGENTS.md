# AGENTS

This repo is a repo-first Markdown knowledge base. The Git tree is the source of truth. MkDocs is only a presentation layer.

## Read This First

1. `README.md`
2. `docs/00_governance/lifecycle_model.md`
3. `docs/00_governance/naming_identification_convention.md`
4. `docs/00_governance/tailoring_derived_documents_register.md`

## Operating Rules

- Prefer editing source Markdown instead of creating mirrored site-only copies.
- Keep filenames, headings, and document identifiers stable.
- Use actual repo paths when referencing documents.
- Do not claim a document exists unless it is present in the repo. Mark missing artifacts as planned.
- Preserve traceability patterns such as `<DocumentID>:<ElementType>-<NNN>`.
- Follow naming rules from `docs/00_governance/naming_identification_convention.md`.
- When editing normative governance documents, update change history and last modified fields.
- Keep content plain Markdown and ASCII unless a file already requires something else.

## Repo Shape

- `docs/00_governance/` contains the canonical governance rules and document conventions.
- Root entry files (`README.md`, `AGENTS.md`, `index.md`, `mkdocs.yml`) explain how to navigate the repo.
- `docs/` contains the published documentation set, including canonical governance docs and a few thin wrapper pages.

## Writing Guidance

- Prefer numbered top-level folders when they represent lifecycle or knowledge domains.
- Use lowercase snake_case for general repo documents and folders.
- Keep DID-style artifact names exactly where the naming convention requires them.
- Use clear section headings so humans and LLMs can chunk content reliably.
- Prefer relative Markdown links for human browsing when the target file exists.

## MkDocs

- Keep the site thin.
- Do not fork source content into separate site-only copies unless there is a strong reason.
- Keep navigation focused on source documents that already exist.
