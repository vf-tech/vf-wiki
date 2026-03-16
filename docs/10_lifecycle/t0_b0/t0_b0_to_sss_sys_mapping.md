# T0 to B0 to SSS-SYS Mapping

## 1. Purpose

This document defines how outputs produced during the `T0` -> `B0` transition
shall be represented when preparing a project-specific `SSS-SYS.md` baseline
candidate using the reference template at
`docs/90_templates/02_requirements/00_system/SSS-SYS.md`.

## 2. Scope

This guidance applies to preparation of the `SSS-SYS.md` baseline candidate for
B0.

It defines:

- required mapping from T0-B0 outputs to the `SSS-SYS.md` template structure;
- rules for distinguishing context from requirement content;
- minimum section-level expectations for B0 readiness.

It does not define:

- post-B0 change control;
- downstream derivation into `SRS-*` / `HRS-*`;
- architecture content for `SSDD-SYS.md`;
- detailed verification design.

## 3. Normative Context

This document shall be interpreted together with:

- `docs/00_governance/lifecycle_model.md`
- `docs/00_governance/naming_identification_convention.md`
- `docs/00_governance/tailoring_derived_documents_register.md`
- `docs/10_lifecycle/t0_b0/b0_requirement_capture_process.md`
- `docs/10_lifecycle/t0_b0/b0_readiness_review.md`
- `docs/90_templates/02_requirements/00_system/SSS-SYS.md`

In case of conflict, governance, lifecycle, and the controlled baseline
candidate remain authoritative.

## 4. Mapping Rules

1. Not all T0-B0 outputs shall become requirements.
2. Mission, stakeholder, and operational framing content shall be recorded as
   context unless they impose an objective obligation.
3. Scenario narratives shall not be copied into the baseline candidate as
   requirements; scenario-derived obligations shall be formalized as `shall`
   statements.
4. Implementation decisions shall not be recorded as requirements unless they
   are externally imposed or acceptance-relevant constraints.
5. Internal interfaces and internal data shall not be elevated to system
   requirements without explicit justification.
6. Open assumptions and open issues shall remain visible and shall not be hidden
   inside requirement wording.

## 5. Primary Mapping Table

| T0-B0 Output | Template Section | Representation | B0 Minimum | If Not Used | Notes |
|---|---|---|---|---|---|
| Problem statement | `1.2 System overview` | Context | Required | Not permitted | Not a requirement by itself |
| Mission / purpose | `1.2 System overview` | Context | Required | Not permitted | May inform capability requirements |
| Stakeholder summary | `1.2 System overview` | Context | Required | Not permitted | Keep stakeholder categories visible |
| Operational context | `1.2 System overview` | Context | Required | Not permitted | Include only acceptance-relevant framing |
| Scope / boundary | `1.1 Identification`, `1.2 System overview` | Context | Required | Not permitted | Must support B0 scope clarity |
| States / modes | `3.1 Required states and modes` | Context / classification note | If applicable | State explicitly | Use only where behavior depends on modes or states |
| Capability obligations | `3.2 System capability requirements` | Formal requirement | Required | Not permitted | Primary destination for externally visible functions |
| External interface obligations | `3.3 System external interface requirements` | Formal requirement | If applicable | State explicitly | Include characteristics only as needed for requirement clarity |
| Internal interface constraints | `3.4 System internal interface requirements` | Formal requirement | If justified | State explicitly | Otherwise keep in `SSDD-SYS.md` |
| Internal data constraints | `3.5 System internal data requirements` | Formal requirement | If justified | State explicitly | Otherwise keep in design documentation |
| Adaptation constraints | `3.6 Adaptation requirements` | Formal requirement | If applicable | State explicitly | Use for deployment-dependent or site-dependent constraints |
| Safety obligations | `3.7 Safety requirements` | Formal requirement | If identified | State explicitly | Do not omit simply because detailed analysis is incomplete |
| Security / privacy obligations | `3.8 Security and privacy requirements` | Formal requirement | If identified | State explicitly | Include misuse, access, privacy, or audit obligations where relevant |
| Environment constraints | `3.9 System environment requirements` | Formal requirement | If applicable | State explicitly | Include external operating or platform limits |
| Resource constraints | `3.10 Computer resource requirements` | Formal requirement | If applicable | State explicitly | Includes HW, SW, utilization, and communications constraints |
| Quality targets / NFRs | `3.11 System quality factors` | Formal requirement | Required where relevant | State explicitly | Prefer measurable targets |
| External design constraints | `3.12 Design and construction constraints` | Formal requirement | If applicable | State explicitly | Do not capture internal design preference here |
| Criticality visibility | `3.13 Precedence and criticality of requirements` | Classification note | Optional | May omit | Visibility aid only; not a substitute for formal analysis |
| Qualification thinking | Per requirement fields, `4.1`, `4.2` | Classification note | Required | Not permitted | Initial method selection is required at B0 |
| Traceability readiness | `5. Requirements traceability` | Classification note | Required | Not permitted | Full downstream closure is not required at B0 |
| Open assumptions | Controlled open item | Controlled open item | Visible if relevant | Track outside baseline if needed | Do not hide assumptions inside requirement text |
| Open issues | Controlled open item | Controlled open item | Visible if relevant | Track outside baseline if needed | Blocking issues affect B0 decision |

## 6. Section Completion Guidance

| Template Section | Minimum B0 Expectation | Typical Source Inputs | May Be Explicitly Empty? | Review Concern if Weak |
|---|---|---|---|---|
| `1.1 Identification` | System identity, baseline context, related artifact context are visible | Product concept, scope note, naming decisions | No | Baseline target is unclear |
| `1.2 System overview` | Purpose, stakeholders, and operational context are understandable | Problem statement, stakeholder list, mission statement, workshop notes | No | Requirements lack framing and scope meaning |
| `3.1 Required states and modes` | States/modes are listed where behavior depends on them | Scenario analysis, operational modes, fault handling notes | Yes | Mode-dependent behavior may be lost or inconsistent |
| `3.2 System capability requirements` | Core externally visible capabilities are formalized as objective requirements | Capability capture, stakeholder needs, scenario-derived obligations | No | Baseline lacks its primary functional content |
| `3.3 System external interface requirements` | External interface obligations are visible where applicable | Interface list, protocol obligations, integration constraints | Yes | Acceptance-relevant interfaces may be under-specified |
| `3.4 System internal interface requirements` | Included only with explicit justification | Safety constraints, acceptance-critical internal interfaces, external constraints | Yes | Internal design content may be promoted without cause |
| `3.5 System internal data requirements` | Included only with explicit justification | Retention rules, persistence needs, externally constrained data obligations | Yes | Internal design detail may be misplaced |
| `3.6 Adaptation requirements` | Deployment/site constraints are captured where relevant | Installation assumptions, configurable behavior, site constraints | Yes | Important configuration obligations may be missed |
| `3.7 Safety requirements` | Safety obligations are formalized or explicit non-applicability is stated | Hazard screening, safety goals, fault response expectations | Yes | Safety screening may be invisible or incomplete |
| `3.8 Security and privacy requirements` | Security/privacy obligations are formalized or explicit non-applicability is stated | Misuse analysis, security objectives, privacy obligations | Yes | Security expectations may be missing from the baseline |
| `3.9 System environment requirements` | Environmental and platform constraints are visible where relevant | Deployment assumptions, operating limits, regulatory environment needs | Yes | Acceptance environment may be unclear |
| `3.10 Computer resource requirements` | Resource and platform limits are defined where relevant | Hardware constraints, communications limits, utilization budgets | Yes | Feasibility risks may remain hidden |
| `3.11 System quality factors` | Major measurable NFRs are captured where relevant | Reliability, performance, maintainability, testability targets | Yes | NFR content may remain vague or buried |
| `3.12 Design and construction constraints` | Externally imposed constraints are visible where relevant | Compliance rules, mandated technologies, regulatory obligations | Yes | External constraints may be confused with design choice |
| `4.2 Qualification mapping` | Initial qualification thinking is visible | Early verification thinking, candidate methods, review notes | No | Requirements may not be objectively assessable |
| `5. Requirements traceability` | Traceability expectations and readiness are visible | Allocation thinking, traceability notes, RTM seeding intent | No | Orphan risk may be hidden at baseline time |

## 7. Keep Out of SSS-SYS

The following shall normally remain outside the baseline candidate unless
formalized:

- raw workshop notes;
- interview transcripts;
- brainstorming notes;
- unresolved design alternatives;
- duplicated stakeholder commentary;
- informal scenario narratives;
- meeting logistics.

## 8. Common Errors

The following are not acceptable mapping practices:

- recording mission intent as a requirement without formalization;
- copying stakeholder language directly into `shall` statements;
- placing design decisions in the baseline candidate without justification;
- introducing internal interface or data requirements without acceptance-level need;
- hiding non-functional obligations inside vague capability text;
- using undefined adjectives such as `fast`, `simple`, or `robust`.

## 9. Change History

| Version | Date | Description |
| ------- | ---------- | ----------- |
| v0.1 | 2026-03-16 | Initial T0 to B0 to SSS-SYS mapping guidance |

---

**Last modified:** 2026-03-16 00:00 +03
