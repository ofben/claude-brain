---
phase: 6
slug: distribution
status: draft
nyquist_compliant: false
wave_0_complete: false
created: 2026-03-21
---

# Phase 6 — Validation Strategy

> Per-phase validation contract for feedback sampling during execution.

---

## Test Infrastructure

| Property | Value |
|----------|-------|
| **Framework** | Bash (shell script — no test framework needed) |
| **Config file** | none |
| **Quick run command** | `bash .planning/phases/06-distribution/verify-clone.sh` |
| **Full suite command** | `bash .planning/phases/06-distribution/verify-clone.sh` + manual Module 0.1 walkthrough |
| **Estimated runtime** | ~30 seconds (scripted) + ~5 minutes (manual) |

---

## Sampling Rate

- **After every task commit:** Run `git check-ignore -v vault/.obsidian/workspace.json && test -f LICENSE && grep -q "kepano" README.md`
- **After every plan wave:** Run `bash .planning/phases/06-distribution/verify-clone.sh`
- **Before `/gsd:verify-work`:** Full suite must be green + manual Module 0.1 walkthrough confirmed
- **Max feedback latency:** 30 seconds

---

## Per-Task Verification Map

| Task ID | Plan | Wave | Requirement | Test Type | Automated Command | File Exists | Status |
|---------|------|------|-------------|-----------|-------------------|-------------|--------|
| 06-01-01 | 01 | 1 | DIST-01 | bash check | `git check-ignore -v vault/.obsidian/workspace.json` | ❌ W0 | ⬜ pending |
| 06-01-02 | 01 | 1 | DIST-02 | bash check | `test -f LICENSE && echo OK` | ❌ W0 | ⬜ pending |
| 06-01-03 | 01 | 1 | DIST-03 | bash check | `grep -q "API costs" README.md && echo OK` | ❌ W0 | ⬜ pending |
| 06-01-04 | 01 | 1 | DIST-04 | bash check | `grep -q "kepano" README.md && echo OK` | ❌ W0 | ⬜ pending |
| 06-01-05 | 01 | 1 | DIST-05 | bash check | `grep -q "Obsidian" README.md && grep -q "Claude Code" README.md && echo OK` | README exists | ⬜ pending |
| 06-01-06 | 01 | 1 | DIST-06 | bash script | `bash .planning/phases/06-distribution/verify-clone.sh` | ❌ W0 | ⬜ pending |

*Status: ⬜ pending · ✅ green · ❌ red · ⚠️ flaky*

---

## Wave 0 Requirements

- [ ] `.planning/phases/06-distribution/verify-clone.sh` — covers DIST-06 scripted check
- [ ] `LICENSE` — covers DIST-02 (created as part of implementation)
- [ ] README edits — covers DIST-03, DIST-04, DIST-05 (README exists, needs edits)
- [ ] `.gitignore` — covers DIST-01 (created as part of implementation)

*All Wave 0 items are deliverables of the phase itself — no pre-existing test infrastructure needed.*

---

## Manual-Only Verifications

| Behavior | Requirement | Why Manual | Test Instructions |
|----------|-------------|------------|-------------------|
| Clone → open vault → run /start-0-1 works end-to-end | DIST-06 | Requires Obsidian GUI interaction and Claude Code session | 1. Clone repo to fresh directory 2. Open vault/ in Obsidian 3. Run /start-0-1 in Claude Code 4. Confirm module loads with no errors or dead ends |
| Screenshot shows vault with notes | DIST-03 (README) | Visual verification | 1. Check docs/vault-screenshot.png exists 2. Verify it renders in README preview |

---

## Validation Sign-Off

- [ ] All tasks have `<automated>` verify or Wave 0 dependencies
- [ ] Sampling continuity: no 3 consecutive tasks without automated verify
- [ ] Wave 0 covers all MISSING references
- [ ] No watch-mode flags
- [ ] Feedback latency < 30s
- [ ] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
