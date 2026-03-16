# B0 Readiness Review

## 1. Purpose

This document defines the review activity used to determine whether the
`SSS-SYS.md` baseline candidate is ready to be established as the first
controlled system requirements baseline (`B0`).

## 2. Scope

This review applies to the `T0` -> `B0` lifecycle transition.

It governs:

- readiness assessment of the `SSS-SYS.md` baseline candidate;
- review inputs, participants, and decision criteria;
- recording of B0 go / hold decisions;
- handling of blocking and non-blocking issues before baselining.

It does not govern:

- requirement capture activity itself;
- post-B0 change control;
- downstream derivation into `SRS-*` / `HRS-*`;
- architecture or test design baselines beyond B0.

## 3. Normative Context

This review shall be interpreted together with:

- `docs/00_governance/lifecycle_model.md`
- `docs/00_governance/naming_identification_convention.md`
- `docs/00_governance/tailoring_derived_documents_register.md`
- `docs/repo_structure.md`
- `docs/10_lifecycle/t0_b0/b0_requirement_capture_process.md`

In case of conflict, governance and lifecycle rules remain authoritative.

## 4. Definitions

### 4.1 B0

`B0` is the first controlled `SSS-SYS.md` baseline established under
configuration management control.

### 4.2 Baseline Candidate

A baseline candidate is a reviewable draft of `SSS-SYS.md` proposed for B0
establishment.

### 4.3 Readiness Review

A readiness review is the formal assessment used to determine whether the B0
baseline candidate is sufficiently mature for controlled baselining.

### 4.4 Blocking Issue

A blocking issue is a finding that prevents responsible establishment of B0.

### 4.5 Non-Blocking Issue

A non-blocking issue is a finding that may remain open without undermining the
integrity of the B0 baseline decision.

Non-blocking issues do not prevent a `Go` decision, provided they do not weaken
scope clarity, requirement quality, or baseline control.

### 4.6 Review Record

A review record is the retained outcome of the review, including participants,
findings, actions, and the final decision.

## 5. Review Objectives

The objectives of the B0 readiness review are:

1. to confirm that the product purpose and scope are sufficiently defined;
2. to confirm that the requirement set is reviewable and structured;
3. to confirm that major requirement classes were considered;
4. to confirm that verification and allocation thinking exist at an initial level;
5. to identify blocking gaps before configuration control is applied;
6. to record a clear go / hold decision for B0.

## 6. Review Inputs

Required inputs should include:

- `SSS-SYS.md` baseline candidate;
- scope and boundary definition;
- stakeholder concerns summary;
- operational scenario summary;
- requirement classification state;
- open issues list;
- open assumptions list;
- early verification thinking;
- provisional allocation thinking.

Optional supporting inputs may include:

- decision records;
- workshop notes;
- compliance or hazard screening notes;
- seeded RTM rows or traceability notes.

## 7. Review Outputs

The review shall produce:

- B0 review decision (`Go` / `Hold`);
- review comments and findings;
- list of blocking issues, if any;
- list of accepted non-blocking issues, if any;
- action list with owners;
- recorded decision date and reviewers.

## 8. Roles and Participants

### 8.1 Chair / Review Owner

Responsible for planning the review, ensuring the review is conducted, and
recording the decision outcome.

### 8.2 Product Owner / Product Manager

Responsible for confirming product intent, value, and scope rationale.

### 8.3 System Engineer

Responsible for presenting the baseline candidate and explaining requirement
structure, quality, and coverage.

### 8.4 Domain Reviewers

Responsible for evaluating feasibility, domain constraints, and major gaps.

### 8.5 QA / Configuration Role

Responsible for confirming process adherence and baseline control readiness.

One person may perform multiple roles in small projects.

## 9. Entry Criteria

The review may start when:

- a reviewable `SSS-SYS.md` candidate exists;
- product purpose and scope are documented;
- core requirement content is present;
- major open issues are visible;
- the relevant reviewers can evaluate readiness.

## 10. Review Preparation

Before the review:

- distribute the baseline candidate;
- identify reviewers;
- collect known open issues and assumptions;
- identify unresolved blocking topics;
- prepare the review checklist and decision form.

## 11. Review Evaluation Criteria

The review shall evaluate, at minimum, whether:

- product purpose is clear;
- scope boundary is explicit;
- stakeholders were considered;
- operational scenarios were captured;
- core capability requirements are documented;
- major non-functional requirements were screened;
- safety / security / environment / compliance screening was performed;
- requirements are objective and reviewable;
- classification is stable enough for B0;
- initial allocation thinking exists;
- initial verification thinking exists;
- obvious orphan requirements are not knowingly introduced.

## 12. Findings Classification

### 12.1 Blocking Findings

A finding is blocking if it prevents responsible establishment of B0.

Typical blocking examples include:

- missing scope boundary;
- requirement set not reviewable;
- major requirement classes ignored without justification;
- unverifiable or heavily ambiguous core requirements;
- missing evidence of safety, security, or compliance screening where relevant.

### 12.2 Non-Blocking Findings

A finding is non-blocking if it can remain open without undermining B0 control.

Typical examples include:

- minor wording cleanup;
- limited rationale expansion;
- small traceability refinements;
- editorial consistency issues.

## 13. Decision Rules

The review shall conclude with one of the following decisions:

- `Go`
- `Hold`

### 13.1 Go

`Go` means the baseline candidate is adequate for controlled establishment of
B0.

Non-blocking issues may remain open under a `Go` decision if they are visible,
owned, and do not undermine responsible baselining.

### 13.2 Hold

`Hold` means blocking deficiencies remain and B0 shall not be established until
rework and re-review occur.

## 14. Action Closure Expectations

For each finding or action:

- an owner shall be assigned;
- due intent shall be visible;
- closure status shall be recorded;
- unresolved blocking items shall prevent B0 establishment.

## 15. B0 Establishment Interface

If the review result is acceptable for B0:

- the `SSS-SYS.md` candidate may enter configuration control;
- downstream derivation may proceed against the approved baseline;
- traceability seeding may begin in controlled form.

If the review result is not acceptable:

- B0 shall not be established;
- rework shall be performed before re-review.

## 16. Tailoring Notes

In small projects:

- roles may be combined;
- review evidence may be lightweight;
- the checklist may be applied in a compact form.

Tailoring shall not remove:

- explicit decision recording;
- visibility of blocking issues;
- minimum readiness evaluation;
- controlled baselining discipline.

## 17. Change History

| Version | Date | Description |
| ------- | ---------- | ----------- |
| v0.1 | 2026-03-16 | Initial B0 readiness review skeleton |

---

## Appendix A - B0 Readiness Review Checklist

### A. Review Preconditions

| # | Check | Status | Notes |
|---|---|---|---|
| A1 | `SSS-SYS.md` baseline candidate exists and is reviewable | [ ] | |
| A2 | Review participants are identified | [ ] | |
| A3 | Known open issues and assumptions are visible | [ ] | |
| A4 | Scope and purpose material is available to reviewers | [ ] | |

### B. Scope and Purpose Readiness

| # | Check | Status | Notes |
|---|---|---|---|
| B1 | Product purpose is clear | [ ] | |
| B2 | Scope boundary is explicit | [ ] | |
| B3 | In-scope and out-of-scope distinctions are visible | [ ] | |
| B4 | Major stakeholder concerns were considered | [ ] | |

### C. Requirement Quality Readiness

| # | Check | Status | Notes |
|---|---|---|---|
| C1 | Core requirements are documented | [ ] | |
| C2 | Requirements use objective wording | [ ] | |
| C3 | Major ambiguities were addressed | [ ] | |
| C4 | Clearly unverifiable requirements were challenged | [ ] | |

### D. Classification and Structure Readiness

| # | Check | Status | Notes |
|---|---|---|---|
| D1 | Requirement classes are identifiable | [ ] | |
| D2 | Core capability content is present | [ ] | |
| D3 | Major non-functional topics were screened | [ ] | |
| D4 | Safety, security, environment, and compliance screening is visible | [ ] | |

### E. Allocation and Verification Readiness

| # | Check | Status | Notes |
|---|---|---|---|
| E1 | Initial allocation thinking exists | [ ] | |
| E2 | Initial verification thinking exists | [ ] | |
| E3 | Likely system-level verification needs are visible | [ ] | |
| E4 | No major impossible framing remains unchallenged | [ ] | |

### F. Traceability Readiness

| # | Check | Status | Notes |
|---|---|---|---|
| F1 | Requirement set is structured enough for later RTM seeding | [ ] | |
| F2 | No obvious orphan requirements are knowingly introduced | [ ] | |
| F3 | Traceability expectations are understood by the team | [ ] | |

### G. Review Outcome

| # | Check | Status | Notes |
|---|---|---|---|
| G1 | Decision recorded as `Go` or `Hold` | [ ] | |
| G2 | Blocking findings are identified | [ ] | |
| G3 | Non-blocking findings are identified | [ ] | |
| G4 | Actions have owners | [ ] | |

## Appendix B - B0 Review Record Template

Suggested fields:

- Review ID
- Review date
- Artifact reviewed
- Reviewers
- Decision
- Blocking findings
- Non-blocking findings
- Actions
- Approval / acknowledgement

---

**Last modified:** 2026-03-16 00:00 +03
