---
phase: 1
slug: vault-integrity
status: draft
nyquist_compliant: true
wave_0_complete: false
created: 2026-03-20
---

# Phase 1 — Validation Strategy

> Per-phase validation contract for feedback sampling during execution.

---

## Test Infrastructure

| Property | Value |
|----------|-------|
| **Framework** | None — content/file audit project, not code |
| **Config file** | None |
| **Quick run command** | `grep -rn "^tags:" vault/ --include="*.md"` |
| **Full suite command** | Manual file inspection + grep spot checks |
| **Estimated runtime** | ~5 seconds per grep command |

---

## Sampling Rate

- **After every task commit:** Run the relevant grep/ls command for that task's requirement
- **After every plan wave:** Run all verification commands below
- **Before `/gsd:verify-work`:** All checks must pass
- **Max feedback latency:** 5 seconds

---

## Per-Task Verification Map

| Task ID | Plan | Wave | Requirement | Test Type | Automated Command | Status |
|---------|------|------|-------------|-----------|-------------------|--------|
| 01-01-T1 | 01 | 1 | VAULT-01, VAULT-02 | grep+cross-ref | `grep -c "## Intentional Unresolved Links" .planning/phases/01-vault-integrity/01-REVIEW-LOG.md && grep -c "## Uncertain Links" .planning/phases/01-vault-integrity/01-REVIEW-LOG.md` | pending |
| 01-01-T2 | 01 | 1 | VAULT-01 | grep+conditional | See plan 01-01 Task 2 verify: counts renamed vs old-name occurrences of "Tools for Thought" link, validates either rename or review-log presence | pending |
| 01-02-T1 | 02 | 1 | VAULT-05 | grep | `grep "deadline:" vault/02-Projects/Horizon-Magazine/AI\ Writing\ Partner\ -\ Brief.md && grep "deadline:" vault/02-Projects/ClearPath/Async\ Communication\ -\ Outline.md && grep -c "The Notification Audit" vault/02-Projects/Bloom-Studio/Digital\ Boundaries\ Series\ -\ Overview.md` | pending |
| 01-02-T2 | 02 | 1 | VAULT-04 | file check | `ls vault/07-MOCs/.gitkeep vault/08-Published/.gitkeep` | pending |
| 01-03-T1 | 03 | 2 | VAULT-03 | grep | `grep "^tags:" vault/06-Templates/*.md \| grep -v "\[" \| wc -l` — expected: 0 | pending |
| 01-03-T2 | 03 | 2 | VAULT-03 | grep+loop | Loop over 13 files checking `grep -q "^tags: \["` — expected: all pass | pending |
| 01-03-T3 | 03 | 2 | VAULT-03 | grep | `grep -rn "^tags: " lesson-modules/ --include="*.md" \| grep -v "\[" \| wc -l` — expected: 0. Also: `grep -rn "^tags:" vault/ --include="*.md" \| grep -v "\[" \| wc -l` — expected: 0 (whole-vault confirmation) | pending |

*Status: pending / green / red / flaky*

---

## Wave 0 Requirements

Existing infrastructure covers all phase requirements. No test framework needed — verification is grep-based file inspection.

---

## Manual-Only Verifications

| Behavior | Requirement | Why Manual | Test Instructions |
|----------|-------------|------------|-------------------|
| Date consistency across files | VAULT-05 | Cross-referencing dates across multiple files requires human judgment on which date is canonical | Compare deadline dates in vault notes against creator-context/CLIENTS.md and PROJECTS.md |
| Uncertain wikilink resolution | VAULT-01 | Some wikilinks may have ambiguous matches requiring human judgment | Review 01-REVIEW-LOG.md "Uncertain Links" section |

---

## Validation Sign-Off

- [x] All tasks have automated verify or Wave 0 dependencies
- [x] Sampling continuity: no 3 consecutive tasks without automated verify
- [x] Wave 0 covers all MISSING references
- [x] No watch-mode flags
- [x] Feedback latency < 5s
- [x] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
