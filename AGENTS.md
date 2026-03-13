# AGENTS

This repo is a repo-first Markdown knowledge base. The Git tree is the source of truth. MkDocs is only a presentation layer.

## Read This First

1. `README.md`
2. `docs/repo_structure.md`
3. `docs/00_governance/lifecycle_model.md`
4. `docs/00_governance/naming_identification_convention.md`
5. `docs/00_governance/tailoring_derived_documents_register.md`

## Operating Rules

- Prefer editing source Markdown instead of creating mirrored site-only copies.
- Do not rename files or document IDs without clear justification.
- Avoid unnecessary heading churn, especially in normative documents.
- Prefer relative Markdown links for existing documents; use explicit repo paths only in procedural or file-level instructions.
- If an expected artifact is absent, classify it using the tailoring register model (Not Used, Merged / Not Separate, Derived, TBD) instead of inventing replacements.
- Follow naming rules from `docs/00_governance/naming_identification_convention.md`.
- When editing normative governance documents, update change history and last modified fields.
- Keep content in plain Markdown. Use ASCII for filenames, identifiers, placeholders, and machine-parsed tokens unless a file already requires something else.
- Do not restate or silently modify governance rules in explanatory pages. Link to the authoritative governance document when possible.

## Writing Guidance

- Use lowercase snake_case for general repo documents and folders.
- Keep DID-style artifact names exactly where the naming convention requires them.
- Use clear section headings so humans and LLMs can chunk content reliably.
- Mermaid diagrams may be used for lifecycle flows, architecture, and traceability explanations when helpful.

## Markdown Lint

Markdown style is enforced with markdownlint.

Configuration lives at the repository root: `.markdownlint.yaml` (or `.markdownlint.json`).

Examples:

- Lint all Markdown files  
  `npx markdownlint-cli2 "**/*.md"`

- Lint a single file  
  `npx markdownlint-cli2 "AGENTS.md"`

- Lint a specific folder  
  `npx markdownlint-cli2 "docs/**/*.md"`

Run the linter before committing changes to ensure Markdown formatting remains consistent.

Expected validation before sharing changes:

- `npx markdownlint-cli2 "**/*.md"`
- `scripts/docs.sh build`

## MkDocs

- Keep the site thin.
- Do not fork source content into separate site-only copies unless there is a strong reason.
- Keep navigation focused on source documents that already exist.
