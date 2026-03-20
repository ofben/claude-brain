---
phase: 3
slug: basb-integration
status: draft
nyquist_compliant: false
wave_0_complete: false
created: 2026-03-21
---

# Phase 3 — Validation Strategy

> Per-phase validation contract for feedback sampling during execution.

---

## Test Infrastructure

| Property | Value |
|----------|-------|
| **Framework** | Manual verification — no automated test runner |
| **Config file** | None — course has no test suite |
| **Quick run command** | `grep -n "Tiago Forte\|Building a Second Brain\|CODE\|PARA\|progressive summarization" <modified-file>` |
| **Full suite command** | `grep -rn "Tiago Forte\|Building a Second Brain\|CODE.*Capture.*Organize\|PARA.*Projects\|progressive summarization\|Zettelkasten\|Nick Milo\|LYT" lesson-modules/ README.md` |
| **Estimated runtime** | ~1 second |

---

## Sampling Rate

- **After every task commit:** Run `grep` on modified file to confirm attribution strings present
- **After every plan wave:** Run full suite grep across all 4 target files
- **Before `/gsd:verify-work`:** Full suite must show all expected strings
- **Max feedback latency:** 1 second

---

## Per-Task Verification Map

| Task ID | Plan | Wave | Requirement | Test Type | Automated Command | File Exists | Status |
|---------|------|------|-------------|-----------|-------------------|-------------|--------|
| 03-01-01 | 01 | 1 | BASB-01 | manual+grep | `grep -n "Tiago Forte" lesson-modules/1-foundations/1.1-welcome/CLAUDE.md` | ✅ | ⬜ pending |
| 03-01-02 | 01 | 1 | BASB-06 | manual+grep | `grep -n "AI" lesson-modules/1-foundations/1.1-welcome/CLAUDE.md` | ✅ | ⬜ pending |
| 03-02-01 | 02 | 1 | BASB-02 | manual+grep | `grep -n "CODE" lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md` | ✅ | ⬜ pending |
| 03-02-02 | 02 | 1 | BASB-04 | manual+grep | `grep -n "PARA" lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md` | ✅ | ⬜ pending |
| 03-03-01 | 03 | 1 | BASB-03 | manual+grep | `grep -n "progressive summarization" lesson-modules/2-building-the-brain/2.4-research-literature-notes/CLAUDE.md` | ✅ | ⬜ pending |
| 03-04-01 | 04 | 1 | BASB-05 | manual+grep | `grep -n "Zettelkasten\|LYT\|Building a Second Brain" README.md` | ✅ | ⬜ pending |

*Status: ⬜ pending · ✅ green · ❌ red · ⚠️ flaky*

---

## Wave 0 Requirements

Existing infrastructure covers all phase requirements. No test framework to install — all verification is grep-based string matching on modified Markdown files.

---

## Manual-Only Verifications

| Behavior | Requirement | Why Manual | Test Instructions |
|----------|-------------|------------|-------------------|
| "BASB meets AI" positioning emerges naturally | BASB-06 | Subjective reading comprehension — cannot be verified by string matching alone | Read all 4 modified files in sequence as a first-time student; confirm the AI extension framing is clear without being heavy-handed |
| Say/Check/Action format preserved | All | Structural integrity requires human review of block boundaries | Confirm each edited file still follows Say → Check → Action block pattern per SCRIPT_INSTRUCTIONS.md |

---

## Validation Sign-Off

- [ ] All tasks have `<automated>` verify or Wave 0 dependencies
- [ ] Sampling continuity: no 3 consecutive tasks without automated verify
- [ ] Wave 0 covers all MISSING references
- [ ] No watch-mode flags
- [ ] Feedback latency < 1s
- [ ] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
