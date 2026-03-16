# B0 Requirement Capture Process

---

## 1. Purpose

This document defines the pre-baseline workflow used to capture, refine,
classify, and consolidate stakeholder needs, product intent, constraints,
and operational scenarios into a baseline candidate for `SSS-SYS.md`.

The purpose of this process is to ensure that the first controlled product
baseline (`B0`) is established on the basis of a documented, reviewable,
and traceable requirement set rather than ad hoc feature accumulation.

This process exists to bridge:

- product management intent,
- systems engineering discipline,
- and downstream traceability obligations.

---

## 2. Scope

This process applies to the period from initial product idea / product need
(`T0`) up to the establishment of the first formal system requirements
baseline (`B0`).

It applies to:

- new product initiatives,
- major new system variants,
- substantial system re-scoping efforts prior to formal baselining.

It does not govern:

- post-B0 change control,
- derived requirement decomposition into `SRS-*` / `HRS-*`,
- architecture development in `SSDD-SYS.md`,
- detailed test design in `SYTD-SYS.md`, `STD-*`, or `HTD-*`.

---

## 3. Normative Context

This process shall be interpreted together with the following project
governance and repository documents:

- `docs/00_governance/lifecycle_model.md`
- `docs/00_governance/naming_identification_convention.md`
- `docs/00_governance/tailoring_derived_documents_register.md`
- `docs/repo_structure.md`

In case of conflict, lifecycle, naming, and repository structure rules remain
authoritative.

---

## 4. Definitions

### 4.1 T0

`T0` is the informal project start point at which product intent exists,
but no controlled `SSS-SYS.md` baseline has yet been established.

### 4.2 B0

`B0` is the first controlled `SSS-SYS.md` baseline, established under
configuration management control.

### 4.3 Requirement Capture

Requirement capture is the activity of transforming product intent,
stakeholder needs, constraints, and operational scenarios into clear,
reviewable requirement candidates suitable for formalization in `SSS-SYS.md`.

### 4.4 Baseline Candidate

A baseline candidate is a review-ready draft of `SSS-SYS.md` considered
sufficiently mature for B0 readiness assessment.

---

## 5. Process Objectives

The objectives of the T0 → B0 process are:

1. to identify the correct product/system problem being addressed;
2. to capture stakeholder expectations and operational needs;
3. to define the product boundary and intended scope;
4. to transform informal needs into formal requirement candidates;
5. to classify requirements into a controlled specification structure;
6. to establish initial verification thinking;
7. to prepare the requirement set for downstream allocation and traceability;
8. to prevent weak, ambiguous, or non-verifiable requirements from entering B0.

---

## 6. Inputs

Typical inputs include:

- sponsor / acquirer intent;
- market or business need statements;
- stakeholder interviews or workshop notes;
- product concept notes;
- customer or user requests;
- regulatory or compliance obligations;
- environmental or deployment assumptions;
- hazard / risk inputs, where applicable;
- prior decision records;
- legacy product lessons learned;
- external interface obligations.

Inputs may be incomplete at T0. Their maturity shall be recorded explicitly.

---

## 7. Outputs

The primary output of this process is:

- `SSS-SYS.md` baseline candidate content suitable for B0 review and
  controlled baselining once the project adopts its target artifact path.

Supporting outputs may include:

- seeded rows or identifiers for planned `RTM.md` content;
- open assumptions list;
- open issues list;
- decision records where scope or interpretation requires governance-level
  clarification;
- early verification notes to support later `SYTD-SYS.md` planning.

This process does not require all downstream artifacts to exist before B0.

---

## 8. Roles and Responsibilities

### 8.1 Product Owner / Product Manager

Responsible for:

- product intent,
- problem framing,
- value definition,
- priority decisions,
- release-scope proposals.

### 8.2 System Engineer

Responsible for:

- converting intent into system-level requirement structure,
- identifying missing constraints,
- ensuring requirement quality,
- preparing `SSS-SYS.md`.

### 8.3 Domain Leads (Software / Hardware / Safety / Security / QA)

Responsible for:

- reviewing feasibility and completeness,
- identifying domain constraints,
- highlighting derived requirement implications,
- flagging verification risks.

### 8.4 QA / Configuration Role

Responsible for:

- ensuring process adherence,
- checking baseline readiness criteria,
- ensuring controlled establishment of B0.

One person may perform multiple roles in small projects. Role consolidation
does not remove the responsibilities themselves.

---

## 9. Process Overview

The T0 → B0 process consists of the following activities:

1. problem definition;
2. stakeholder identification;
3. product boundary and scope definition;
4. operational scenario capture;
5. capability capture;
6. non-functional requirement capture;
7. safety / security / environment / compliance screening;
8. requirement formalization;
9. requirement classification;
10. prioritization and release boundary definition;
11. initial allocation thinking;
12. initial verification thinking;
13. baseline candidate assembly;
14. B0 readiness review;
15. B0 establishment.

The process is iterative. Rework between steps is expected before B0.

---

## 10. Detailed Activities

## 10.1 Problem Definition

The initiating team shall define the product problem before attempting
solution-level architecture.

The problem definition shall answer, at minimum:

- what problem exists;
- for whom it exists;
- why the current situation is insufficient;
- what business, operational, or mission value is expected.

Minimum output:

- problem statement;
- product purpose / mission statement;
- initial success intent.

This activity shall avoid premature design commitments.

---

## 10.2 Stakeholder Identification

Relevant stakeholders shall be identified and categorized.

Typical stakeholder categories include:

- sponsor / acquirer;
- operator / end user;
- maintainer / service;
- developer / integrator;
- QA / compliance / assessor;
- external interfacing system owner.

Each stakeholder category shall be examined for expectations, constraints,
and acceptance concerns.

Output:

- stakeholder list;
- stakeholder concerns list;
- unresolved stakeholder gaps.

---

## 10.3 Product Boundary and Scope Definition

The team shall define what is inside and outside the product scope.

This activity shall identify:

- in-scope capabilities;
- out-of-scope capabilities;
- external systems;
- expected interfaces;
- deployment boundary;
- release/MVP boundary, if applicable.

Output:

- scope statement;
- boundary notes;
- out-of-scope list.

No B0 candidate shall be prepared without an explicit scope statement.

---

## 10.4 Operational Scenario Capture

Operational scenarios shall be captured to understand externally visible
behavior across normal, abnormal, and support contexts.

Scenarios should cover, where relevant:

- installation / commissioning;
- startup;
- normal operation;
- degraded operation;
- fault handling;
- maintenance / service;
- shutdown;
- loss of power / recovery;
- communication loss / recovery;
- configuration change behavior.

Output:

- scenario list;
- state/mode candidates;
- scenario-derived requirement candidates.

Scenarios are not a substitute for requirements, but they are valid inputs
to requirement derivation.

---

## 10.5 Capability Capture

The team shall identify the externally visible capabilities expected from
the product/system.

Capability capture answers:

- what the system must do;
- what outcomes it must provide;
- what user-observable functions must exist.

Capabilities shall be captured before decomposition into implementation
structures.

Output:

- capability list;
- capability rationale;
- initial mapping to stakeholder needs.

Capabilities are expected to feed Section 3.2 of `SSS-SYS.md`.

---

## 10.6 Non-Functional Requirement Capture

The team shall identify non-functional requirements early, not as a
post-design add-on.

At minimum, the following categories shall be considered:

- performance;
- timing;
- capacity;
- reliability / availability;
- maintainability / serviceability;
- testability;
- environmental constraints;
- deployment/platform constraints;
- resource limits;
- usability, where externally relevant.

Each non-functional topic shall be assessed for whether it is:

- mandatory,
- desirable,
- deferred,
- or not applicable.

Output:

- NFR candidate list;
- measurable targets where known;
- unknowns requiring clarification.

---

## 10.7 Safety / Security / Environment / Compliance Screening

The team shall explicitly screen for requirement sources that are not merely
feature-driven.

The screening shall consider, where applicable:

- safety objectives;
- hazards and fault-response expectations;
- security objectives and misuse concerns;
- privacy obligations;
- environmental constraints;
- regulatory or contractual compliance obligations;
- industry protocol or interoperability expectations.

This activity is mandatory even if the result is "none identified at this
stage."

Output:

- screened categories list;
- identified constraints;
- source references, where available;
- open compliance questions.

No safety-related constraint shall be omitted merely because the detailed
analysis has not yet been completed.

---

## 10.8 Requirement Formalization

Informal statements shall be transformed into formal requirement candidates
suitable for `SSS-SYS.md`.

Each formalized requirement candidate shall:

- express a single verifiable intent;
- use normative wording such as `shall`;
- avoid ambiguity;
- avoid hidden design assumptions unless the constraint itself is mandated;
- support later traceability.

Where practical, each requirement candidate should also include:

- draft title;
- draft rationale or source;
- initial classification;
- expected qualification method;
- provisional allocation thinking.

Examples of weak input statements:

- "easy to use"
- "fast"
- "robust"
- "modern"

These are not acceptable as baseline-ready requirements without conversion
to measurable or objectively assessable statements.

---

## 10.9 Requirement Classification

Formalized requirement candidates shall be placed into the appropriate
specification classes used by `SSS-SYS.md`.

Expected classes include:

- capability requirements;
- external interface requirements;
- internal interface requirements (only if acceptance-critical or externally
  constrained);
- internal data requirements (only if acceptance-relevant);
- adaptation requirements;
- safety requirements;
- security and privacy requirements;
- environment requirements;
- computer/resource requirements;
- quality factors;
- design and construction constraints.

Classification shall be stable enough that the baseline candidate is not
a flat unstructured list.

---

## 10.10 Prioritization and Release Boundary Definition

Requirement candidates shall be prioritized before B0.

At minimum, the team shall distinguish:

- baseline/core requirements;
- important but deferrable requirements;
- explicitly deferred future requirements;
- rejected / out-of-scope items.

Priority shall be based on a combination of:

- product value;
- operational necessity;
- compliance obligation;
- safety/security criticality;
- feasibility risk;
- verification practicality.

Priority labels are planning aids and do not replace formal criticality
classification where safety or security governance requires it.

---

## 10.11 Initial Allocation Thinking

Before B0, the team shall perform initial allocation thinking for each
requirement candidate.

This activity does not create `SRS-*` or `HRS-*`, but it shall consider
whether the requirement appears to be realized primarily by:

- `SW`
- `HW`
- `SYS`
- or a combination thereof.

The purpose is to support later decomposition and to detect impossible or
poorly framed requirements early.

Allocation at this stage may remain provisional until B1, but omission of
allocation thinking is not permitted.

---

## 10.12 Initial Verification Thinking

The team shall consider early how each requirement is expected to be shown
as satisfied.

This does not require full test design. It does require preliminary thinking
about likely qualification method:

- Inspection
- Analysis
- Demonstration
- Test

The goal is to reject requirements that cannot be objectively assessed.

This activity supports later traceability and `SYTD-SYS.md` planning.

---

## 10.13 Baseline Candidate Assembly

A baseline candidate shall be assembled in `SSS-SYS.md`.

The draft shall include, at minimum:

- product/system identification;
- system overview;
- stakeholder and operational context summary;
- requirement rules;
- requirement content structured by class;
- provisional qualification method thinking;
- initial traceability awareness sufficient to support RTM seeding.

At this stage, placeholders may exist only for genuinely unresolved items.
Excessive use of `(TBD)` is not acceptable for B0 readiness.

---

## 10.14 B0 Readiness Review

Before establishing B0, the team shall review whether the baseline candidate
is sufficiently mature.

The review shall confirm, at minimum:

- the product purpose is clear;
- scope and boundaries are defined;
- stakeholder concerns were considered;
- operational scenarios were captured;
- core capability requirements are documented;
- major non-functional requirements were screened;
- safety/security/environment/compliance screening was performed;
- requirements are written in objective form;
- requirement classes are structured;
- preliminary qualification thinking exists;
- provisional allocation thinking exists;
- obvious orphan requirements are not being introduced.

Open items may remain, but they shall be visible and controlled.

---

## 10.15 B0 Establishment

B0 may be established only after the readiness review concludes that the
`SSS-SYS.md` baseline candidate is suitable for configuration control.

B0 establishment means:

- the initial product/system requirement set is frozen as a baseline;
- subsequent changes are managed under change control;
- downstream derivation (`SRS-*`, `HRS-*`) may proceed against the B0 basis;
- RTM seeding may begin in controlled form.

B0 does not mean the requirement set is perfect.
It means it is controlled, reviewable, and fit to serve as the system
requirement root.

---

## 11. Entry Criteria

The T0 → B0 process may begin when there is at least:

- a product idea, need, or request;
- a responsible initiating role;
- enough context to describe a problem and intended stakeholders.

Full business or technical certainty is not required to start.

---

## 12. Exit Criteria

The process may exit to B0 only when:

- `SSS-SYS.md` exists as a reviewable baseline candidate;
- the product purpose and scope are documented;
- requirements are classified and expressed in objective form;
- core requirements are distinguishable from deferred items;
- initial allocation thinking has been performed;
- initial verification thinking has been performed;
- the team agrees the document is adequate for configuration control.

If these conditions are not met, B0 shall not be established.

---

## 13. Quality Rules for Requirement Capture

The following quality rules apply during T0 → B0:

1. No requirement shall enter B0 in purely promotional or marketing language.
2. No requirement shall rely on undefined adjectives such as `fast`,
   `simple`, `robust`, or `user-friendly` without objective interpretation.
3. No requirement shall embed implementation design unless the design choice
   is itself externally imposed or acceptance-relevant.
4. No requirement class shall be silently skipped; non-applicability shall be
   stated explicitly.
5. No critical external constraint shall be deferred merely because architecture
   has not yet started.
6. No requirement shall be admitted if no plausible qualification path exists.
7. No requirement set shall be baselined without an explicit scope boundary.

---

## 14. Traceability Expectations at B0

Full downstream RTM closure is not required before B0.

Note:

At B0, full downstream traceability closure is not required. However,
the requirement set shall already be sufficiently structured to seed
`08_Traceability/RTM.md` without knowingly introducing orphan requirements.

This ensures that B0 establishes a traceable requirement root even though
downstream artifacts such as `SRS-*`, `HRS-*`, and verification procedures
have not yet been produced.

However, the following shall already be true:

- requirement identifiers are expected to follow project conventions once
  assigned in `SSS-SYS.md`;
- requirement classes are stable enough to support traceability;
- baseline content is suitable for later mapping into `RTM.md`;
- obvious orphan requirements are not knowingly introduced.

---

## 15. Relationship to Downstream Artifacts

After B0:

- software-derived requirements are documented in `SRS-*`;
- hardware-derived requirements are documented in `HRS-*`;
- architecture decisions are documented in `SSDD-SYS.md`;
- system verification design is documented in `SYTD-SYS.md`;
- system procedures and evidence are managed in `SYTPr-SYS.md` and
  `SYTR-SYS.md`.

This process shall not be used as a substitute for those downstream artifacts.

---

## 16. Tailoring Notes

In small projects, the same person may perform product, systems, QA, and
configuration roles.

In early-stage internal projects, some inputs may be lightweight
(e.g., workshop notes instead of formal market documents).

Such tailoring is acceptable provided that:

- scope is still explicit;
- requirements are still formalized;
- B0 readiness is still reviewed;
- and controlled baselining is still applied.

Tailoring shall not be used to bypass requirement quality, traceability
discipline, or baseline control.

---

## 17. Change History

| Version | Date | Description |
| ------- | ---------- | ----------- |
| v0.1 | 2026-03-16 | Initial T0 to B0 requirement capture process draft moved into lifecycle section |

---

## Appendix A — T0 → B0 Working Checklist

### A. Problem and Product Intent

| # | Check | Status | Notes |
|---|---|---|---|
| A1 | The product problem is stated clearly | [ ] | |
| A2 | The intended user / beneficiary is identified | [ ] | |
| A3 | The reason the product is needed now is documented | [ ] | |
| A4 | A short mission / purpose statement exists | [ ] | |
| A5 | Obvious premature design commitments were avoided | [ ] | |

### B. Stakeholders

| # | Check | Status | Notes |
|---|---|---|---|
| B1 | Sponsor / acquirer identified | [ ] | |
| B2 | Operator / end user identified | [ ] | |
| B3 | Maintainer / service role considered | [ ] | |
| B4 | Engineering / integration stakeholders considered | [ ] | |
| B5 | QA / compliance / assessor concerns considered | [ ] | |
| B6 | Missing stakeholder information is explicitly listed | [ ] | |

### C. Scope and Boundary

| # | Check | Status | Notes |
|---|---|---|---|
| C1 | In-scope capabilities are listed | [ ] | |
| C2 | Out-of-scope items are listed | [ ] | |
| C3 | External systems are identified | [ ] | |
| C4 | External interfaces are recognized at a high level | [ ] | |
| C5 | MVP / first release boundary is stated, if applicable | [ ] | |
| C6 | Product boundary is explicit enough to prevent scope drift | [ ] | |

### D. Operational Scenarios

| # | Check | Status | Notes |
|---|---|---|---|
| D1 | Startup scenario considered | [ ] | |
| D2 | Normal operation scenario considered | [ ] | |
| D3 | Fault / degraded scenario considered | [ ] | |
| D4 | Shutdown / recovery scenario considered | [ ] | |
| D5 | Maintenance / service scenario considered | [ ] | |
| D6 | Communication loss / recovery scenario considered, if relevant | [ ] | |
| D7 | Power loss / restoration scenario considered, if relevant | [ ] | |
| D8 | Scenario outputs were converted into requirement candidates | [ ] | |

### E. Capability Capture

| # | Check | Status | Notes |
|---|---|---|---|
| E1 | Core externally visible capabilities are listed | [ ] | |
| E2 | Capabilities are stated independently of implementation details | [ ] | |
| E3 | Capabilities are linked to stakeholder needs where possible | [ ] | |
| E4 | Duplicate or overlapping capabilities were consolidated | [ ] | |

### F. Non-Functional Requirements

| # | Check | Status | Notes |
|---|---|---|---|
| F1 | Performance constraints considered | [ ] | |
| F2 | Timing / latency constraints considered | [ ] | |
| F3 | Capacity / scaling limits considered | [ ] | |
| F4 | Reliability / availability needs considered | [ ] | |
| F5 | Maintainability / serviceability needs considered | [ ] | |
| F6 | Testability needs considered | [ ] | |
| F7 | Resource / platform constraints considered | [ ] | |
| F8 | Environmental constraints considered | [ ] | |
| F9 | Usability considered where externally relevant | [ ] | |
| F10 | Unknown NFRs are explicitly marked as open items | [ ] | |

### G. Safety / Security / Compliance Screening

| # | Check | Status | Notes |
|---|---|---|---|
| G1 | Safety concerns screened | [ ] | |
| G2 | Security concerns screened | [ ] | |
| G3 | Privacy concerns screened, if applicable | [ ] | |
| G4 | Environmental compliance screened | [ ] | |
| G5 | Regulatory / contractual constraints screened | [ ] | |
| G6 | Industry/protocol interoperability obligations screened | [ ] | |
| G7 | “None identified” is stated explicitly if a category is not applicable | [ ] | |
| G8 | Open safety/compliance questions are visible | [ ] | |

### H. Requirement Formalization Quality

| # | Check | Status | Notes |
|---|---|---|---|
| H1 | Requirement candidates use normative wording (`shall`) | [ ] | |
| H2 | Requirements are objective and reviewable | [ ] | |
| H3 | Requirements avoid vague adjectives without measurable interpretation | [ ] | |
| H4 | Requirements avoid hidden implementation assumptions | [ ] | |
| H5 | Requirements are sufficiently atomic for traceability | [ ] | |
| H6 | Requirement statements are not just marketing language | [ ] | |
| H7 | Source / rationale is captured where useful | [ ] | |

### I. Requirement Classification

| # | Check | Status | Notes |
|---|---|---|---|
| I1 | Capability requirements classified | [ ] | |
| I2 | External interface requirements classified | [ ] | |
| I3 | Internal interface requirements included only if acceptance-critical / externally constrained | [ ] | |
| I4 | Internal data requirements included only if acceptance-relevant | [ ] | |
| I5 | Adaptation requirements classified | [ ] | |
| I6 | Safety requirements classified | [ ] | |
| I7 | Security/privacy requirements classified | [ ] | |
| I8 | Environment requirements classified | [ ] | |
| I9 | Resource requirements classified | [ ] | |
| I10 | Quality factors classified | [ ] | |
| I11 | Design/construction constraints classified | [ ] | |

### J. Prioritization

| # | Check | Status | Notes |
|---|---|---|---|
| J1 | Core / baseline requirements identified | [ ] | |
| J2 | Deferrable but important requirements identified | [ ] | |
| J3 | Explicit future items identified | [ ] | |
| J4 | Rejected / out-of-scope items identified | [ ] | |
| J5 | Priority decisions reflect value + risk + obligation | [ ] | |

### K. Allocation and Verification Thinking

| # | Check | Status | Notes |
|---|---|---|---|
| K1 | Initial allocation thinking exists for each major requirement | [ ] | |
| K2 | Allocation candidates use project vocabulary (`SW`, `HW`, `SYS`) | [ ] | |
| K3 | Initial qualification thinking exists (`Inspection`, `Analysis`, `Demonstration`, `Test`) | [ ] | |
| K4 | Implausible / unverifiable requirements were challenged | [ ] | |
| K5 | Requirements that clearly need system-level verification were recognized | [ ] | |

### L. Baseline Candidate Quality

| # | Check | Status | Notes |
|---|---|---|---|
| L1 | `SSS-SYS.md` has clear identification and scope | [ ] | |
| L2 | `SSS-SYS.md` structure is complete enough for review | [ ] | |
| L3 | Excessive `(TBD)` usage has been reduced | [ ] | |
| L4 | The document is understandable by non-authors | [ ] | |
| L5 | The document is stable enough for configuration control | [ ] | |

### M. Traceability Readiness

| # | Check | Status | Notes |
|---|---|---|---|
| M1 | Requirement identifiers follow project conventions or are ready to do so | [ ] | |
| M2 | Requirement set is structured enough for RTM seeding | [ ] | |
| M3 | No obvious orphan requirements are knowingly introduced | [ ] | |
| M4 | Early RTM rows can be created for major requirements | [ ] | |
| M5 | The team understands that RTM anchors are REQ/DE -> TC -> TR | [ ] | |

### N. B0 Review Outcome

| # | Check | Status | Notes |
|---|---|---|---|
| N1 | Review performed | [ ] | |
| N2 | Reviewers identified | [ ] | |
| N3 | Review comments captured | [ ] | |
| N4 | Blocking issues resolved or explicitly accepted | [ ] | |
| N5 | B0 decision recorded | [ ] | |

---

## Appendix B — B0 Go / No-Go Checklist

| # | Check | Status | Notes |
|---|---|---|---|
| 1 | `SSS-SYS.md` exists and is reviewable | [ ] | |
| 2 | Product purpose / mission is documented | [ ] | |
| 3 | Scope boundary is explicit (in-scope / out-of-scope) | [ ] | |
| 4 | Key stakeholders have been identified | [ ] | |
| 5 | Core operational scenarios have been captured | [ ] | |
| 6 | Core capability requirements are documented | [ ] | |
| 7 | Major non-functional requirements have been screened | [ ] | |
| 8 | Safety / security / environment / compliance screening has been performed | [ ] | |
| 9 | Requirements are written in objective, reviewable form | [ ] | |
| 10 | Initial allocation thinking exists | [ ] | |
| 11 | Initial qualification / verification thinking exists | [ ] | |
| 12 | `RTM.md` can be seeded without obvious orphan requirements | [ ] | |
| 13 | Open issues are visible and controlled | [ ] | |
| 14 | Team agrees the baseline candidate is fit for configuration control | [ ] | |

### Decision

- **Go to B0:** [ ]
- **Hold B0:** [ ]

### Review Notes

- Reviewer(s): (TBD)
- Date: (TBD)
- Summary: (TBD)

---

**Last modified:** 2026-03-16 00:00 +03
