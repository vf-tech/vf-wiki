# MIL-STD-498 Tailoring & Derived Documents Register

## 1. Purpose

This register records:

- **MIL-STD-498 documents we use as-is**
- **MIL-STD-498 documents we tailor** (scope, structure, combined artifacts)
- **Documents we intentionally do not use** (with rationale)
- **Project-derived documents** (non-standard extensions created for clarity)

Primary goal: enable consistent understanding (including AI agents) of
**why certain standard artifacts are absent** and where their intent is
implemented.

---

## 2. Naming Rule (Project Convention)

All project artifacts shall follow [`docs/00_governance/naming_identification_convention.md`](naming_identification_convention.md).

This register does not restate naming rules. If a register entry appears to
conflict with naming/ID rules,
[`docs/00_governance/naming_identification_convention.md`](naming_identification_convention.md)
is authoritative.

---

## 3. Register

### 3.0 Standard MIL-STD-498 DID Inventory (Reference)

Status values:

- `Used`
- `Used / Tailored`
- `Tailored`
- `Merged / Not Separate`
- `Not Used`
- `TBD`

| Category                    | DID  | Standard Reference / Common Name     | Project Document(s) / Substitute                    | Status                | Tailoring / Notes                                                   |
| --------------------------- | ---- | ------------------------------------ | --------------------------------------------------- | --------------------- | ------------------------------------------------------------------- |
| Plans                       | SDP  | Software Development Plan            | `01_Plans/PDP.md`                                    | Used / Tailored       | Software Development Plan (PDP) produced as a project plan artifact. |
| Plans                       | SIP  | Software Installation Plan           | (none)                                              | Not Used              | Installation planning not required as a standalone artifact.        |
| Plans                       | STrP | Software Transition Plan             | (none)                                              | Not Used              | Not produced in this project.                                       |
| Concept/Requirements        | OCD  | Operational Concept Description      | (none)                                              | Not Used              | Not produced in this project.                                       |
| Concept/Requirements        | SSS  | System/Subsystem Specification       | `SSS-<SYS>.md`                                        | Used / Tailored       | Company-wide: PRD-equivalent (product + system requirements).       |
| Concept/Requirements        | SRS  | Software Requirements Specification  | `SRS-<SW_MODULE>.md`                                  | Used                  | Traces to SSS (minimum).                                            |
| Concept/Requirements        | IRS  | Interface Requirements Specification | Captured in `SSS-<SYS>.md` and/or `SSDD-<SYS>.md`       | Merged / Not Separate | No standalone IRS; interface requirements live in spec/design docs. |
| Design                      | SSDD | System/Subsystem Design Description  | `SSDD-<SYS>.md`                                       | Used / Tailored       | Architecture, decomposition, key interfaces, timing.                |
| Design                      | SDD  | Software Design Description          | `SDD-<SW_MODULE>.md`                                  | Used                  | Design elements map to SRS.                                         |
| Design                      | DBDD | Database Design Description          | Captured in `SSDD-<SYS>.md` and/or `SDD-<SW_MODULE>.md` | Merged / Not Separate | If a DB exists, its design is embedded in system/software design.   |
| Design                      | IDD  | Interface Design Description         | Captured in `SSDD-<SYS>.md` and/or `SDD-<SW_MODULE>.md` | Merged / Not Separate | No standalone IDD; interface design lives in design descriptions.   |
| Qualification Test Products | STP  | Software Test Plan                   | Covered by `01_Plans/VVP.md`                          | Merged / Not Separate | Planning consolidated under VVP to avoid duplicate plans.           |
| Qualification Test Products | STD  | Software Test Description            | `STD-<SW_MODULE>.md`                                  | Used                  | Test cases/design.                                                  |
| Qualification Test Products | STR  | Software Test Report                 | `STR-<SW_MODULE>.md`                                  | Used                  | Results/evidence for executed tests.                                |
| User/Operator Manuals       | SUM  | Software User Manual                 | Captured in `05_Delivery/COM-<SYS>.md`                  | Merged / Not Separate | SUM content is included as part of the COM manual.                 |
| User/Operator Manuals       | SIOM | Software Input/Output Manual         | Captured in `05_Delivery/COM-<SYS>.md`                  | Merged / Not Separate | Included as an I/O section within the COM (SUM) content.           |
| User/Operator Manuals       | SCOM | Software Center Operator Manual      | Captured in `05_Delivery/COM-<SYS>.md`                  | Merged / Not Separate | Operational guidance is included in COM; no separate SCOM.         |
| User/Operator Manuals       | COM  | Computer Operation Manual            | `05_Delivery/COM-<SYS>.md`                              | Used / Tailored       | Single operational manual; covers firmware support. Generated in minimal profile only at this stage. |
| Support Manuals             | CPM  | Computer Programming Manual          | (none)                                                | Not Used              | Not produced in this project.                                      |
| Support Manuals             | FSM  | Firmware Support Manual              | Captured in `05_Delivery/COM-<SYS>.md`                  | Merged / Not Separate | Firmware support is covered within the COM manual.                |
| Software Product Definition | SPS  | Software Product Specification       | (none)                                              | Not Used              | Not produced in this project.                                       |
| Software Product Definition | SVD  | Software Version Description         | Planned: `05_Delivery/SVD-<SYS>.md` (system-based)      | TBD                   | Delivery/release descriptor; produced when delivery process is defined. Generated in minimal profile only at this stage. |

---

### 3.1 Planning and Process Documents

| Standard Reference / Common Name | MIL-STD-498 DID Name | Project Document(s) | Status | Tailoring / Notes |
|---|---|---|---|---|
| Verification & Validation Plan | SVVP | `01_Plans/VVP.md` | **Tailored** | One cross-domain plan covering **system + software + hardware** verification strategy. Includes STP-level planning content (where applicable) to avoid duplicate planning documents. |
| (Optional) Software Test Plan | STP (often used outside 498; not required by 498 as a DID) | Covered by `01_Plans/VVP.md` | **Merged / Not Separate** | We do **not** maintain a standalone STP file. Planning content is consolidated under VVP. |

### 3.2 Specification and Design Documents

| Standard Reference / Common Name | MIL-STD-498 DID Name | Project Document(s) | Status | Tailoring / Notes |
|---|---|---|---|---|
| System / Subsystem Specification | SSS | `SSS-<SYS>.md` | **Used / Tailored per project** | Company-wide: PRD-equivalent (product + system requirements). Module for system-level spec may be `SYS` or a project-defined system identifier. |
| Software Requirements Specification | SRS | `SRS-<SW_MODULE>.md` | **Used** | One SRS per software configuration item / module. SRS requirements are traceable to SSS (minimum). |
| Hardware Requirements Specification *(project extension)* | (Not defined as a HW DID in MIL-STD-498) | `HRS-<HW_MODULE>.md` | **Derived** | Hardware requirements are documented analogously to SRS for symmetry and auditability. |
| System / Subsystem Design Description | SSDD | `SSDD-<SYS>.md` | **Used / Tailored per project** | Captures architecture, subsystem decomposition, key interfaces, and timing. Small projects may embed external ICD content here. |
| Software Design Description | SDD | `SDD-<SW_MODULE>.md` | **Used** | Design elements map to SRS and support unit/integration verification. |
| Hardware Design Description *(project extension)* | (Not defined as a HW DID in MIL-STD-498) | `HDD-<HW_MODULE>.md` | **Derived** | Hardware design description used to capture HW realization decisions and enable structured HW verification. |

### 3.3 Verification and Test Documents (Right-Side Artifacts)

| Standard Reference / Common Name | MIL-STD-498 DID Name | Project Document(s) | Status | Tailoring / Notes |
|---|---|---|---|---|
| Software Test Description | STD | `STD-<SW_MODULE>.md` | **Used** | Contains test design for **unit + integration + software qualification** as sections, not separate DID names. |
| Software Test Procedure | STPr | `STPr-<SW_MODULE>.md` | **Used** | Procedures for executing tests defined in corresponding `STD-<SW_MODULE>.md`. |
| Software Test Report | STR | `STR-<SW_MODULE>.md` | **Used** | Results and evidence for executed tests; references procedures and test cases. |
| Hardware Test Description *(project extension)* | (Not defined as a HW DID in MIL-STD-498) | `HTD-<HW_MODULE>.md` | **Derived** | Hardware test design, maintained separately to avoid semantic confusion with software STD. |
| Hardware Test Procedure *(project extension)* | (Not defined as a HW DID in MIL-STD-498) | `HTPr-<HW_MODULE>.md` | **Derived** | Hardware test procedures for executing HTD-defined tests. |
| Hardware Test Report *(project extension)* | (Not defined as a HW DID in MIL-STD-498) | `HTR-<HW_MODULE>.md` | **Derived** | Hardware test results/evidence. |
| System Test Description *(project extension)* | (Not defined as a System DID in MIL-STD-498) | `SYTD-SYS.md` | **Derived** | Used to avoid ambiguity: system tests are not labeled as “software” STD. At this stage, integration/acceptance are subsections within `SYTD-SYS.md`. Separate partitions (e.g., `SYTD-INT.md`, `SYTD-ACC.md`) are **not used right now**. |
| System Test Procedure *(project extension)* | (Not defined as a System DID in MIL-STD-498) | `SYTPr-SYS.md` | **Derived** | Procedures for executing system tests (linked to `SYTD-SYS`). |
| System Test Report *(project extension)* | (Not defined as a System DID in MIL-STD-498) | `SYTR-SYS.md` | **Derived** | System test results/evidence (linked to `SYTD-SYS`). |

---

## 4. Documents Intentionally Not Used (and Where Their Intent Lives)

This section explicitly lists artifacts **not produced as standalone documents**
in this project, including the rationale and the substitute location.

| Document / Concept Often Expected | Produced as Standalone? | Substitute / Location | Rationale |
|---|---:|---|---|
| Separate STP (Software Test Plan) | No | `01_Plans/VVP.md` | Avoid duplicate planning. VVP is the single source of truth for verification strategy and planning content. |
| Separate Unit Test Description/Report (e.g., UTD/UTR) | No | `STD-<SW_MODULE>.md` and `STR-<SW_MODULE>.md` | MIL-STD-498 does not define UTD/UTR as required DIDs. Unit-level content is handled as STD sections and reported via STR. |
| Separate Acceptance Test DID names (e.g., ATD/ATR) | No | `SYTD-SYS.md` (Acceptance subsection), `SYTR-SYS.md` (Acceptance subsection) | MIL-STD-498 does not define ATD/ATR as standard DIDs. Acceptance verification intent is captured in the System test artifacts without introducing separate DID names. |

---

## 5. How to Extend This Register

When introducing a new artifact:

1. Add an entry in Section 3 (or Section 4 if omitted)
2. Mark **Status** as one of: `Used`, `Tailored`, `Merged / Not Separate`,
   `Derived`, `Not Used`
3. State where the **standard intent** is implemented
4. Ensure file naming conforms to Naming & Identification Convention

---

## 6. Change History

| Version | Date | Description |
|---|---|---|
| v0.1 | 2026-01-07 | Baseline v0.1 |
| v0.2 | 2026-02-17 | Point naming rules to the SSoT document |
| v0.3 | 2026-02-17 | Default system verification module to SYS (no separate scopes yet) |
| v0.4 | 2026-03-13 | Normalize naming convention references to the actual repo path |

---

## 7. Last Modified

**Last modified:** 2026-03-13 00:00 +03
