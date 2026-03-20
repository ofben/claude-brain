---
phase: 2
slug: content-quality
status: draft
nyquist_compliant: false
wave_0_complete: false
created: 2026-03-20
---

# Phase 2 — Validation Strategy

> Per-phase validation contract for feedback sampling during execution.

---

## Test Infrastructure

| Property | Value |
|----------|-------|
| **Framework** | Manual inspection (no automated test framework — course is experiential, per REQUIREMENTS.md Out of Scope) |
| **Config file** | none — no test runner |
| **Quick run command** | `grep` + `python3` one-liners per requirement |
| **Full suite command** | All grep checks below run sequentially |
| **Estimated runtime** | ~5 seconds |

---

## Sampling Rate

- **After every task commit:** Run the grep verification command for that task's requirement
- **After every plan wave:** Run all grep checks below plus visual spot-check of one modified script
- **Before `/gsd:verify-work`:** All grep checks green + human reads modified script sections
- **Max feedback latency:** 5 seconds

---

## Per-Task Verification Map

| Task ID | Plan | Wave | Requirement | Test Type | Automated Command | File Exists | Status |
|---------|------|------|-------------|-----------|-------------------|-------------|--------|
| 02-01-01 | 01 | 1 | CONT-01 | grep | `grep -n "\[Note Name\]\|\[topic summary\]\|\[Third pair\]" lesson-modules/2-building-the-brain/2.5-knowledge-graph/CLAUDE.md` returns 0 | N/A | ⬜ pending |
| 02-01-02 | 01 | 1 | CONT-06 | grep | `grep -n "External Memory" lesson-modules/3-memory-partner/3.4-claude-writes-vault/CLAUDE.md` returns 0 | N/A | ⬜ pending |
| 02-01-03 | 01 | 1 | CONT-03 | python | `python3 -c "import json; d=json.load(open('course-structure.json')); print(d['totalEstimatedMinutes'])"` outputs 465 | N/A | ⬜ pending |
| 02-01-04 | 01 | 1 | CONT-02 | grep | `grep -rn "TODO" vault/` returns only Meeting notes and Checklist occurrences | N/A | ⬜ pending |
| 02-02-01 | 02 | 2 | CONT-04 | manual | Read each modified script; verify Say/Check/Action format compliance | N/A | ⬜ pending |
| 02-02-02 | 02 | 2 | CONT-05 | bash | Verify all Category A paths exist via filesystem check | N/A | ⬜ pending |

*Status: ⬜ pending · ✅ green · ❌ red · ⚠️ flaky*

---

## Wave 0 Requirements

*Existing infrastructure covers all phase requirements.* No test framework to install — verification is file inspection via grep and python one-liners.

---

## Manual-Only Verifications

| Behavior | Requirement | Why Manual | Test Instructions |
|----------|-------------|------------|-------------------|
| Action block specificity across 24 scripts | CONT-04 | Requires judgment on whether each Action: block is "specific enough" — cannot be fully grepped | Read each Action: block; check it specifies a file path or search target, not just "read a note" |
| Draft Post 3 closing paragraph quality | CONT-02 | Content quality requires human judgment | Read closing paragraph; verify it callbacks opening stat, is warm/not-preachy, teases Post 4 |

---

## Validation Sign-Off

- [ ] All tasks have `<automated>` verify or Wave 0 dependencies
- [ ] Sampling continuity: no 3 consecutive tasks without automated verify
- [ ] Wave 0 covers all MISSING references
- [ ] No watch-mode flags
- [ ] Feedback latency < 5s
- [ ] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
