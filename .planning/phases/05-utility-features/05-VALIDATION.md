---
phase: 5
slug: utility-features
status: draft
nyquist_compliant: false
wave_0_complete: false
created: 2026-03-21
---

# Phase 5 — Validation Strategy

> Per-phase validation contract for feedback sampling during execution.

---

## Test Infrastructure

| Property | Value |
|----------|-------|
| **Framework** | Manual smoke testing (per REQUIREMENTS.md "Out of Scope: Automated CI testing") |
| **Config file** | N/A |
| **Quick run command** | Manual: run individual command in Claude Code and verify output |
| **Full suite command** | Manual: run all four commands + test hook script against mock payload |
| **Estimated runtime** | ~60 seconds per manual smoke test |

---

## Sampling Rate

- **After every task commit:** Manual review of modified files
- **After every plan wave:** Run each affected command and verify output
- **Before `/gsd:verify-work`:** All four commands tested + hook script verified
- **Max feedback latency:** 60 seconds

---

## Per-Task Verification Map

| Task ID | Plan | Wave | Requirement | Test Type | Automated Command | File Exists | Status |
|---------|------|------|-------------|-----------|-------------------|-------------|--------|
| 05-01-01 | 01 | 1 | UTIL-01 | manual-smoke | Run `/daily` in Claude Code, verify output sections match Daily Note Template | ❌ W0 | ⬜ pending |
| 05-01-02 | 01 | 1 | UTIL-02 | manual-smoke | Run `/weekly-review` in Claude Code, verify output sections match Weekly Review Template | ❌ W0 | ⬜ pending |
| 05-01-03 | 01 | 1 | UTIL-03 | manual-smoke | Run `/process-inbox` in Claude Code, verify triage workflow output | ❌ W0 | ⬜ pending |
| 05-01-04 | 01 | 1 | UTIL-04 | manual-smoke | Run `/project-brief` in Claude Code, verify output sections match Client Brief Template | ❌ W0 | ⬜ pending |
| 05-02-01 | 02 | 1 | UTIL-05 | automated+manual | `echo '{"tool_input":{"file_path":"vault/00-Inbox/test.md"}}' \| bash .claude/scripts/add-frontmatter.sh` | ❌ W0 | ⬜ pending |

*Status: ⬜ pending · ✅ green · ❌ red · ⚠️ flaky*

---

## Wave 0 Requirements

- [ ] No test framework installation needed (manual verification per project design)
- [ ] Mock JSON payload for hook script testing: `{"tool_input": {"file_path": "vault/00-Inbox/test.md"}}`

*Existing infrastructure covers command verification — commands are tested by running them in Claude Code.*

---

## Manual-Only Verifications

| Behavior | Requirement | Why Manual | Test Instructions |
|----------|-------------|------------|-------------------|
| /daily creates correct daily note | UTIL-01 | Slash command runs inside Claude Code session | Run `/daily`, verify note at `vault/01-Daily-Notes/[date].md` has frontmatter with `tags: [daily-note]` and sections: What I Did Today, Ideas and Observations, Tomorrow's Priorities |
| /weekly-review synthesizes daily notes | UTIL-02 | Requires Claude to read and synthesize vault notes | Run `/weekly-review`, verify note has frontmatter with `tags: [weekly-review]` and sections: What Got Done, What Didn't Get Done, Key Insights This Week, Next Week Priorities, Open Questions |
| /process-inbox triages inbox | UTIL-03 | Requires Claude to read vault/00-Inbox/ and categorize | Run `/process-inbox`, verify it reads inbox notes and presents categorized output |
| /project-brief generates brief | UTIL-04 | Requires Claude to read project folder notes | Run `/project-brief`, verify output matches Client Brief Template sections: Assignment, Angle, Key Points to Cover, Sources and Research, Notes |
| Module 4.6 teaching narrative works | UTIL-01-04 | Experiential — requires walking through lesson | Run `/start-4-6`, verify it opens existing commands and guides customization |

---

## Validation Sign-Off

- [ ] All tasks have `<automated>` verify or Wave 0 dependencies
- [ ] Sampling continuity: no 3 consecutive tasks without automated verify
- [ ] Wave 0 covers all MISSING references
- [ ] No watch-mode flags
- [ ] Feedback latency < 60s
- [ ] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
