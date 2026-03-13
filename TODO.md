# TODO

This file tracks planned work for building and evolving the **vf-wiki** knowledge base.

The goal is to create a **Markdown-first documentation system** that explains the MIL-STD-498 based engineering workflow used in this repository.

The **Git repository is the source of truth**.
MkDocs is only a **presentation layer**.

---

## NOW — Immediate Work

Goal: stabilize the wiki foundation and create the first operational documentation.

## Repository Structure

* Finalize top-level docs structure
* Ensure governance documents remain in `docs/00_governance/`
* Keep explanatory pages separate from governance rules

## MkDocs Configuration

* Finalize `mkdocs.yml` navigation
* Ensure all navigation entries map to real Markdown files
* Verify all internal links resolve correctly

## Markdown Linting

* Add `.markdownlint.yaml`
* Run markdownlint across the repository
* Fix formatting inconsistencies

## First Operational Pages

Create:

```text
docs/01_how_we_work/
```

Initial pages:

* `artifact_selection.md`
* `baseline_flow.md`

These pages should explain:

* which document should be created next
* how lifecycle baselines progress
* how lifecycle stages connect

---

## NEXT — Operational Documentation Layer

Goal: explain how lifecycle and artifacts are used in real engineering workflows.

Add pages under:

```
docs/01_how_we_work/
```

Planned pages:

* `how_projects_start.md`
* `verification_flow.md`
* `traceability_concept.md`

Focus:

* practical workflow explanations
* artifact flow between lifecycle stages
* how governance rules are applied in practice

---

## LATER — Authoring Guides

Goal: help contributors understand how project artifacts should be written.

Create:

```
docs/02_authoring_guides/
```

Guides:

* `how_to_write_sss.md`
* `how_to_write_srs.md`
* `how_to_write_sdd.md`
* `how_to_write_test_docs.md`

Focus:

* document purpose
* typical structure
* naming rules
* lifecycle relationships

---

## LATER — Examples

Goal: provide concrete examples of lifecycle artifacts and traceability chains.

Create:

```
docs/03_examples/
```

Examples:

* `example_trace_chain.md`
* `example_module_naming.md`
* `example_artifact_set.md`

Examples should demonstrate:

* requirement → design → test relationships
* identifier usage
* artifact progression across lifecycle baselines

---

## LATER — Reference Material

Goal: provide quick lookup documentation for frequently referenced concepts.

Create:

```
docs/04_reference/
```

Pages:

* `artifact_catalog.md`
* `identifier_reference.md`
* `did_mapping.md`
* `verification_vs_validation.md`

---

## FUTURE IMPROVEMENTS

Possible later enhancements:

* lifecycle visual diagrams
* baseline progression walkthrough (B0 → B5)
* contributor onboarding guide
* example project lifecycle walkthrough

---

## Principles

When extending the wiki:

* The **Git repository** is the authoritative source.
* MkDocs is a **presentation layer only**.
* Governance documents define **rules**.
* Explanatory pages describe **how the rules are applied**.
* Avoid duplicating governance rules in explanatory pages.
