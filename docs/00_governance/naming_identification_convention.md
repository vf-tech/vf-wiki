# Naming & Identification Convention

## 1. Purpose

This document defines the **naming and identification rules** for all verification and test documents used in the project. The objective is to:

- Ensure **human-readable** and **self-descriptive** document identifiers
- Avoid ambiguity between **software, hardware, and system** verification artifacts
- Maintain alignment with **MIL-STD-498 principles**, while allowing controlled extensions
- Support **traceability, auditability, and automation** (RTM, CI/CD, RAG, tooling)

This convention is mandatory for all verification artifacts unless explicitly waived.

<!-- TRACEABILITY_IDS -->

## Traceability Identifier Convention

This project uses a **two-level identifier model** for traceability:

- **File names identify documents** (e.g., `SRS-PROT.md`, `STD-PROT.md`).
- **In-document identifiers identify individual elements** (requirements, design elements, test cases, results).

### Identifier Format

```
<DocumentID>:<ElementType>-<NNN>
```

Where:

- `<DocumentID>` is derived from the file name without the `.md` suffix (e.g., `SRS-PROT`, `STD-PROT`).
- `<ElementType>` identifies the item class.
- `<NNN>` is a zero-padded number unique **within the document**.

### Approved Element Types

- `REQ` — Requirement (SSS / SRS / HRS)
- `DE` — Design Element (SSDD / SDD / HDD)
- `TC` — Test Case (STD / HTD / SYTD)
- `TR` — Test Result / Evidence (STR / HTR / SYTR)

### Notes

- The `:` delimiter explicitly denotes **document containment/ownership** (document → element).
- This delimiter enables unambiguous parsing by tools and AI agents.
- Test procedure identifiers (`TP`) are intentionally **not used** in RTM; procedures are referenced implicitly via test cases.

---

## 2. Scope

This convention applies to **all lifecycle artifacts**, including specification, design, verification, and validation documents.

It covers naming and identification rules for:

- System, software, and hardware **specification documents**
- System, software, and hardware **design documents**
- Verification & Validation planning documents
- Test design, procedure, and report documents
- Software, hardware, and system-level verification artifacts

It does **not** define naming rules for:

- Source code files
- Build artifacts
- Test scripts or binaries

---

## 3. Core Principles

1. **One document = one configuration item context**
2. **Document type identifies the verification domain**
3. **Module identifier provides the scope within that domain**
4. **Versioning is handled by configuration management (e.g., Git), not by numeric suffixes**
5. **Document ID and file name shall be identical**
6. **Cross-domain documents may be exempt from module-based naming rules**

---

## 4. Document Type Prefixes (Domain Identification)

Document type prefixes identify the **document class** and the **engineering or verification domain**.

### 4.1 Specification and Design Documents

| Document Type | Meaning                               | Domain   |
| ------------- | ------------------------------------- | -------- |
| SSS           | System / Subsystem Specification      | System   |
| SRS           | Software Requirements Specification   | Software |
| HRS           | Hardware Requirements Specification   | Hardware |
| SSDD          | System / Subsystem Design Description | System   |
| SDD           | Software Design Description           | Software |
| HDD           | Hardware Design Description           | Hardware |

Project-specific interpretation (company-wide): `SSS-*` documents are **PRD-equivalent** and include both product requirements and system/subsystem requirements.

### 4.2 Verification and Validation Documents

The verification domain is identified **exclusively** by the document type prefix.

| Document Type | Meaning                        | Domain       |
| ------------- | ------------------------------ | ------------ |
| STD           | Software Test Description      | Software     |
| STPr          | Software Test Procedure        | Software     |
| STR           | Software Test Report           | Software     |
| HTD           | Hardware Test Description      | Hardware     |
| HTPr          | Hardware Test Procedure        | Hardware     |
| HTR           | Hardware Test Report           | Hardware     |
| SYTD          | System Test Description        | System       |
| SYTPr         | System Test Procedure          | System       |
| SYTR          | System Test Report             | System       |
| VVP           | Verification & Validation Plan | Cross-domain |

No additional domain indicators (e.g., SW, HW, SYS) shall be embedded in module identifiers when the document type already implies the domain.

---

## 5. Module Identifier Rules

### 5.1 Definition

A **module identifier** represents a Configuration Item (CI or CSCI) or a defined **verification partition**.

For system-level verification, the default module identifier is `SYS`.

If the project later needs separate system verification partitions (e.g., `INT`, `ACC`), they may be introduced under controlled change.

### 5.2 Uniqueness Rules

- Module identifiers shall be **unique within their verification domain**
- The same identifier may be reused across domains because the domain is already encoded in the document type
- Module identifiers shall be selected from a **controlled vocabulary** maintained by the project

### 5.3 Examples

| Domain   | Valid Module Identifiers |
| -------- | ------------------------ |
| Software | PROT, MEAS, COMM         |
| Hardware | ADC, IO, PSU             |
| System   | SYS *(default)*; INT, ACC *(not used right now)* |

---

## 6. File Naming Format

### 6.1 General Format

```
DocType-Module.md
```

This format is used consistently for **all documents covered by this convention**, unless explicitly exempted.

### 6.2 Examples — Specification and Design

#### System-Level

```
SSS-SYS.md
SSDD-SYS.md
```

#### Software

```
SRS-SW_MODULE.md
SDD-SW_MODULE.md
```

#### Hardware

```
HRS-HW_MODULE.md
HDD-HW_MODULE.md
```

### 6.3 Examples — Verification and Validation

#### Software Verification

```
STD-SW_MODULE.md
STPr-SW_MODULE.md
STR-SW_MODULE.md
```

#### Hardware Verification

```
HTD-HW_MODULE.md
HTPr-HW_MODULE.md
HTR-HW_MODULE.md
```

#### System Verification

```
SYTD-SYS.md
SYTPr-SYS.md
SYTR-SYS.md
```

#### Cross-Domain Planning

```
01_Plans/VVP.md
```

The VVP document is exempt from the `<DocType>-<Module>` naming pattern due to its **cross-domain scope**.

Note: This repository is a template and must remain Windows-compatible.
Angle-bracket placeholders (e.g., `<SW_MODULE>`) are conceptual only and are not
used in actual file/folder names. Use ASCII tokens such as `SW_MODULE`,
`HW_MODULE`, and `SYS`.

---

## 7. Prohibited Naming Patterns

The following patterns are **not allowed**:

- Numeric document suffixes for versioning (e.g., `STD-PROT-001.md`)
- Mixed domain indicators (e.g., `STD-SYS-PROT.md`)
- Ambiguous abbreviations without defined meaning
- Multiple scopes encoded in a single module identifier

---

## 8. Versioning and Baselines

- Document versioning shall be managed through the configuration management system (e.g., Git tags, commits)
- Formal baselines shall reference document **paths and commit identifiers**, not file name suffixes

---

## 9. Traceability Usage

Document identifiers defined by this convention shall be used consistently in:

- Requirements Traceability Matrices (RTM)
- Review records
- Test reports and anomaly reports
- Tooling, automation, and AI/RAG workflows

Example reference:

```
Verified by: SYTR-SYS.md, Section 4.3
RTM link: SRS-PROT:REQ-010 → STD-PROT:TC-010 → STR-PROT:TR-010
```

---

## 10. Compliance Statement

This naming convention:

- Is consistent with the **intent and structure of MIL-STD-498**
- Preserves standard Software DID identifiers
- Uses controlled, documented extensions for Hardware and System verification
- Is suitable for safety-related and certifiable systems

Deviation from this convention requires formal approval.

---

## 11. Change History

| Version | Date       | Description     |
| ------- | ---------- | --------------- |
| v0.1    | 2026-01-07 | Baseline v0.1   |
| v0.2    | 2026-02-17 | Default system verification module to SYS (INT/ACC not used yet) |

---

## 12. Last Modified

**Last modified:** 2026-02-17 00:00 +03
