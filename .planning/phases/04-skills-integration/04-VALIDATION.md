---
phase: 4
slug: skills-integration
status: draft
nyquist_compliant: false
wave_0_complete: false
created: 2026-03-21
---

# Phase 4 — Validation Strategy

> Per-phase validation contract for feedback sampling during execution.

---

## Test Infrastructure

| Property | Value |
|----------|-------|
| **Framework** | None — course is tested via manual playtest (per REQUIREMENTS.md: "Manual playtest over automated testing") |
| **Config file** | none |
| **Quick run command** | Manual: run `/start-4-5` in Claude Code and step through the module |
| **Full suite command** | Manual: run `/start-4-1` through `/start-4-7` in sequence |
| **Estimated runtime** | ~15 minutes (manual walkthrough) |

---

## Sampling Rate

- **After every task commit:** Verify file exists at correct path with correct content
- **After every plan wave:** Run `/start-4-5` in Claude Code and step through at least Steps 1, 3, 4, and 5
- **Before `/gsd:verify-work`:** Full suite — run `/start-4-4` through `/start-4-7` in sequence to confirm navigation chain is unbroken
- **Max feedback latency:** N/A (manual verification)

---

## Per-Task Verification Map

| Task ID | Plan | Wave | Requirement | Test Type | Automated Command | File Exists | Status |
|---------|------|------|-------------|-----------|-------------------|-------------|--------|
| 04-01-01 | 01 | 1 | SKIL-01 | manual | Verify teaching script Step 1 content | ❌ W0 | ⬜ pending |
| 04-01-02 | 01 | 1 | SKIL-02 | manual | Verify .claude/skills/ directory exists with correct contents | ❌ W0 | ⬜ pending |
| 04-01-03 | 01 | 1 | SKIL-03 | manual | Verify Action blocks produce expected vault artifacts | ❌ W0 | ⬜ pending |
| 04-01-04 | 01 | 1 | SKIL-04 | manual | Run `/weekly-digest` in Claude Code and verify output | ❌ W0 | ⬜ pending |
| 04-01-05 | 01 | 1 | SKIL-05 | manual | Verify Step 5 content in teaching script | ❌ W0 | ⬜ pending |
| 04-01-06 | 01 | 1 | SKIL-06 | manual | Verify Step 6 content in teaching script | ❌ W0 | ⬜ pending |

*Status: ⬜ pending · ✅ green · ❌ red · ⚠️ flaky*

---

## Wave 0 Requirements

- [ ] `lesson-modules/4-automation/4.5-skills-integration/CLAUDE.md` — covers SKIL-01, SKIL-02, SKIL-03, SKIL-04, SKIL-05, SKIL-06
- [ ] `.claude/skills/` directory with obsidian-skills contents — covers SKIL-02, SKIL-03
- [ ] `.claude/skills/weekly-digest/SKILL.md` — covers SKIL-04
- [ ] `.claude/commands/start-4-5.md` (new), `start-4-6.md` (renamed), `start-4-7.md` (renamed)
- [ ] Renamed folders: `lesson-modules/4-automation/4.6-custom-slash-commands/` and `4.7-living-vault/`
- [ ] Updated `course-structure.json` with new module and corrected paths

---

## Manual-Only Verifications

| Behavior | Requirement | Why Manual | Test Instructions |
|----------|-------------|------------|-------------------|
| Skills vs commands vs agents explanation is clear and accurate | SKIL-01 | Content quality requires human review | Read Step 1 of teaching script; verify three concepts are distinct and correctly explained |
| obsidian-skills plugin demos produce expected output | SKIL-03 | Requires Obsidian running with vault open | Run `/start-4-5`, follow Action blocks for markdown and canvas skills, verify vault artifacts created |
| Weekly digest custom skill produces meaningful output | SKIL-04 | Requires Obsidian vault with notes present | Run `/weekly-digest` command, verify it reads vault notes and produces a weekly digest note |
| Navigation chain unbroken after renumbering | SKIL-05 | Requires sequential module run | Run `/start-4-4` → `/start-4-5` → `/start-4-6` → `/start-4-7`, verify each suggests correct next module |

---

## Validation Sign-Off

- [ ] All tasks have `<automated>` verify or Wave 0 dependencies
- [ ] Sampling continuity: no 3 consecutive tasks without automated verify
- [ ] Wave 0 covers all MISSING references
- [ ] No watch-mode flags
- [ ] Feedback latency < N/A (manual)
- [ ] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
