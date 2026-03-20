---
phase: 1
slug: vault-integrity
status: draft
nyquist_compliant: false
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

| Task ID | Plan | Wave | Requirement | Test Type | Automated Command | File Exists | Status |
|---------|------|------|-------------|-----------|-------------------|-------------|--------|
| 01-01-01 | 01 | 1 | VAULT-04 | file check | `ls vault/07-MOCs/.gitkeep vault/08-Published/.gitkeep` | N/A (creates files) | pending |
| 01-02-01 | 02 | 1 | VAULT-03 | grep | `grep -rn "^tags:" vault/ --include="*.md" \| grep -v "^\[" ` | N/A | pending |
| 01-03-01 | 03 | 1 | VAULT-01 | grep+diff | Extract wikilinks from lesson-modules/, compare to vault note list | N/A | pending |
| 01-03-02 | 03 | 1 | VAULT-02 | grep+diff | Extract wikilinks from vault/, compare to vault note list | N/A | pending |
| 01-04-01 | 04 | 1 | VAULT-05 | manual | Compare dates in creator-context/ against vault note frontmatter | N/A | pending |

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

- [ ] All tasks have automated verify or Wave 0 dependencies
- [ ] Sampling continuity: no 3 consecutive tasks without automated verify
- [ ] Wave 0 covers all MISSING references
- [ ] No watch-mode flags
- [ ] Feedback latency < 5s
- [ ] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
