# Architecture Patterns: Review, Polish, and Distribution

**Domain:** Interactive course polish and public GitHub distribution
**Researched:** 2026-03-20
**Based on:** Direct examination of all 24 teaching scripts, 38 vault notes, 3 agents, 24 slash commands, and all configuration files

---

## What This Document Covers

This is not a description of the course's runtime architecture (that is already documented in `.planning/codebase/ARCHITECTURE.md`). This describes the **work architecture** — the structure of the review, polish, enhancement, and distribution effort itself. It defines component boundaries, data flow between work streams, and the build order those dependencies imply.

---

## The Three Major Work Components

The work decomposes into three distinct components with different natures, tools, and risk profiles.

### Component A: Content Review and Polish

**What it is:** Human-in-the-loop quality review of all 24 teaching scripts and 38 vault notes.

**Boundary:** Modifies files inside `lesson-modules/` and `vault/`. Does not change system structure (no new commands, no new files, no config changes). Purely editorial.

**Sub-tasks within this component:**

**A1 — Teaching Script Review (24 files)**
Each script must be evaluated against five criteria:
- Consistency with SCRIPT_INSTRUCTIONS.md conventions (Say/Check/Action blocks present and in order)
- Non-technical language adherence ("folder" not "directory", "note" not "file")
- Accurate narrative references (Alex Rivera, correct client names, correct project details)
- Correct next-module handoffs (each script ends with the right `/start-X-X` command)
- Pacing appropriateness (estimated minutes match content density; Check points provide enough breathing room)

From reading the scripts, quality is high but not uniform. Module 3.5 (Inbox Pattern) and 2.2 (Maps of Content) are the most fully realized — they include detailed "Present it like this" blocks with complete example output. Some Level 0 and Level 4 scripts are likely to be thinner. Level 4 scripts that reference concrete technical artifacts (the shell script in 4.2, the settings.local.json hook config) need extra scrutiny because the technical content can become incorrect if Claude Code's API changes.

**A2 — Vault Consistency Check (38 files)**
Problems found during direct inspection:
- Inconsistent frontmatter across vault notes. The Inbox notes (`vault/00-Inbox/`) have no frontmatter at all (intentional per course design), but `vault/03-Research/Zettelkasten Method.md` uses `topic:` and `date-created:` as frontmatter keys while `vault/01-Daily-Notes/2026-03-10.md` uses `date:` and `vault/02-Projects/Horizon-Magazine/AI Writing Partner - Brief.md` uses `client:`, `project:`, `editor:`, `status:`, `deadline:`, `wordcount:`, `rate:`. This diversity is partially intentional (different note types have different frontmatter shapes) but the inconsistency needs to be documented as intentional vs. accidental.
- `vault/07-MOCs/` is empty. Module 2.2 creates MOCs during its teaching flow, so the folder starts empty. But a `.gitkeep` file is needed or Git will not preserve the empty folder in the repo.
- `vault/08-Published/` is also empty — same problem.
- `[[wiki links]]` in vault notes must be verified against actual file names. For example, `vault/03-Research/Zettelkasten Method.md` references `[[AI as Extended Memory]]` and `[[Tools for Thought - The Design Philosophy]]` — neither of those files exist in the vault as pre-seeded content. These are notes that get created during lessons. They need to be either: (a) present as pre-seeded notes, (b) documented as intentionally broken (Obsidian shows unresolved links), or (c) created as stub notes.
- Date consistency: daily notes cover March 10, 12, 14, 17, 19, 2026. The MOC creation in module 2.2 hard-codes `created: 2026-03-20`. Teaching scripts that reference specific dates need those dates to make sense to students starting the course today or in the future.

**A3 — Creator Context Verification**
The four creator-context files (PROFILE.md, CLIENTS.md, PROJECTS.md, STYLE-GUIDE.md) are the authoritative source for Alex Rivera's world. Every factual claim in the teaching scripts should be traceable to these files. Priority checks:
- Revenue figures (Client Work Dashboard MOC in 2.2 shows Horizon ~$3,000/month, Bloom $1,200, ClearPath $800)
- Client contact names (Sarah Chen at Horizon, Maya Torres at Bloom, James Liu at ClearPath)
- Current projects and deadlines (March 20-27-28 deadlines appear in scripts — these should be plausibly current relative to when students start)
- Newsletter subscriber count (1,200 per 3.5 script)

---

### Component B: Enhancement

**What it is:** Adding new files and content that do not exist yet. Extends the system rather than correcting it.

**Boundary:** Creates new files in `lesson-modules/`, `.claude/commands/`, and/or the vault. May modify `course-structure.json` and `.claude/settings.local.json`. Does not change existing teaching script content.

**Sub-tasks within this component:**

**B1 — BASB Concept Integration**
This is the most architecturally interesting enhancement because it touches existing content rather than adding standalone new files. BASB (Building a Second Brain, Tiago Forte) introduces: PARA framework (Projects, Areas, Resources, Archives), CODE workflow (Capture, Organize, Distill, Express), and progressive summarization.

Integration points by module, based on content inspection:

| Module | BASB Integration Opportunity | Depth |
|--------|------------------------------|-------|
| 1.1 Welcome | Mention BASB as the primary inspiration; position course as "BASB meets AI" | Light — one paragraph in Say block |
| 2.1 Note Types | CODE workflow: Fleeting/Literature/Permanent maps directly to Capture/Organize/Distill | Medium — reframe the note type taxonomy through CODE |
| 2.2 Maps of Content | PARA: vault folder structure parallels Projects/Areas/Resources/Archives; MOCs extend PARA with cross-cutting themes | Medium — explicit PARA comparison |
| 2.3 Daily Notes | Distill phase: daily notes are the distillation layer | Light — one connection in the teaching flow |
| 2.4 Research/Literature Notes | Progressive summarization: the technique of bolding then highlighting key ideas across multiple review passes | Deep — this module is the natural home for progressive summarization |
| 3.5 Inbox Pattern | Capture phase of CODE; PARA for destination routing | Light — frame the triage as CODE in action |
| 4.6 Living Vault | Course graduation is a good place to frame the full BASB→AI synthesis | Medium — graduation speech-level positioning |

**The BASB framing rule:** The course should acknowledge BASB as the foundation and position Claude as what happens when you add AI to a BASB system. Not "BASB is wrong," but "BASB showed us the map — now Claude drives the car." This framing belongs in 1.1 (introduction) and 4.6 (graduation).

The integration does NOT require rewriting any module from scratch. It requires inserting new Say blocks or modifying existing ones at the mapped touch points. The deepest change is 2.4 where progressive summarization could be added as a new step in the teaching flow.

**B2 — Utility Slash Commands**
Four commands are to be created as pre-built artifacts that students can use after completing the course. Module 4.5 already teaches students to build these commands — the pre-built versions serve as: (a) starting templates for students to copy/customize, and (b) things that actually work immediately after module 4.5.

Commands needed:
- `/daily` — Create today's daily note from template (module 4.5 script already includes this exact command definition; it just needs to be created as a real file in `.claude/commands/daily.md`)
- `/weekly-review` — Run a weekly review across daily notes from the past 7 days
- `/process-inbox` — Trigger the Inbox Pattern triage workflow
- `/project-brief` — Create a new project brief using the Client Brief Template

All four commands are referenced in the `course-structure.json` description for module 4.5 ("Build /daily, /weekly-review, /process-inbox, and more") and in PROJECT.md requirements. The module 4.5 script creates these during the lesson — the question is whether they should also pre-exist in `.claude/commands/` or only get created during the lesson.

**Recommendation:** Pre-seed all four in `.claude/commands/` so they exist when students clone the repo. The lesson still teaches how to build them by showing the process. Students who want to jump ahead can use them immediately.

**B3 — Hook Scripts**
Module 4.2 teaches students to create `add-frontmatter.sh` during the lesson — the script is embedded verbatim in the module 4.2 teaching script. The pre-built version should live at `.claude/scripts/add-frontmatter.sh`.

The hook script must:
- Check `CLAUDE_FILE_PATH` environment variable (as shown in the module 4.2 script)
- Only act on `*/vault/*.md` files
- Be executable (`chmod +x`)
- Match exactly what the 4.2 teaching script describes

This is a small but precise deliverable. The content is already fully specified in the 4.2 script.

**B4 — .gitignore**
The `.gitignore` at the project root needs to cover at minimum:
- `.obsidian/workspace.json` (Obsidian session state, changes on every open)
- `.obsidian/workspace-mobile.json`
- `.DS_Store` (macOS finder metadata)
- `*.log`
- `.env` (precautionary)

What to NOT ignore:
- `.obsidian/` itself — the Obsidian config directory contains the vault's plugin settings, theme, and appearance config that should ship with the course
- `vault/` contents — all pre-seeded notes must be distributed
- `lesson-modules/` — teaching scripts must be distributed

---

### Component C: Distribution Prep

**What it is:** Making the repository work correctly when a stranger clones it for the first time.

**Boundary:** Modifies README.md, possibly CLAUDE.md, adds LICENSE, verifies `.gitignore`. Does not touch lesson content or vault notes.

**Sub-tasks within this component:**

**C1 — README Polish**
The current README.md is already strong — it has the course description, level/time table, quick-start steps, command list, story context, and requirements. Polish needs:
- Verify quick-start steps work verbatim (the four steps: install Obsidian, install Claude Code, open vault, run `/start-0-1`)
- Add a "How it works" section that explains the slash command teaching mechanism to people who have never seen it
- Add a license badge or note
- Consider adding a screenshot or demo GIF (out of scope per PROJECT.md — no video/audio content required; skip)
- Confirm the Claude Code docs URL in requirements points to the current getting-started page

**C2 — LICENSE**
No LICENSE file exists in the repository. For open-source public distribution, this is required. MIT License is the appropriate choice given the course pattern being followed (Carl Vellotti's PM course) and the intent to maximize reach. Without a LICENSE file, the repo is technically "all rights reserved" even though distributed publicly.

**C3 — Works Out of the Box Verification**
The core promise is: clone the repo, open `vault/` in Obsidian, run `/start-0-1`, and the course works. Things that can silently break this:
- Empty vault folders without `.gitkeep` files (Git won't preserve `vault/07-MOCs/` and `vault/08-Published/`, causing module 2.2 to fail when it tries to create notes there)
- References in teaching scripts to files that don't exist (the unresolved `[[wiki links]]` identified in Component A)
- The hook script at `.claude/scripts/add-frontmatter.sh` not being executable (shell scripts lose their executable bit in some Git configurations — the fix is to add it to `.gitattributes`)
- `.claude/settings.local.json` containing local machine-specific settings

**C4 — Course Structure Accuracy**
`course-structure.json` claims 450 total estimated minutes across 24 modules. The individual module estimates (5 + 10 + 10 + 20 + 20 + 15 + 15 + 10 + 25 + 20 + 25 + 25 + 25 + 20 + 25 + 20 + 20 + 25 + 20 + 25 + 25 + 25 + 20 + 15) sum to 465 minutes, not 450. This is a small discrepancy but it means either the total or individual estimates need adjustment. The README shows "~7.5 hours" which is consistent with 450 minutes (7h30m). The actual estimated total is ~7h45m. This needs a decision: adjust individual module times or update the total.

---

## Data Flow: How Changes Cascade

Understanding cascade direction is critical for ordering work correctly. Some changes in one area force rework in another.

```
creator-context/ (PROFILE, CLIENTS, PROJECTS, STYLE-GUIDE)
    |
    |-- [read by] --> lesson-modules/ (all 24 teaching scripts)
    |                     |
    |                     |-- [reference] --> vault/ (pre-seeded notes)
    |                     |                       |
    |                     |                       |-- [must align] --> [[wiki links]]
    |
    |-- [read by] --> .claude/agents/ (Librarian, Connector, Critic)

course-structure.json
    |
    |-- [defines] --> .claude/commands/ (slash commands)
    |-- [total time] --> README.md

.claude/SCRIPT_INSTRUCTIONS.md
    |
    |-- [governs format] --> lesson-modules/ (all 24 teaching scripts)

lesson-modules/4.2/CLAUDE.md (contains hook script verbatim)
    |
    |-- [must match] --> .claude/scripts/add-frontmatter.sh

lesson-modules/4.5/CLAUDE.md (contains command definitions verbatim)
    |
    |-- [should match] --> .claude/commands/daily.md (and others)
```

**Cascade rules:**
1. If creator-context changes, check all teaching scripts that reference the changed fact
2. If a vault note is renamed, all `[[wiki links]]` pointing to it break
3. If SCRIPT_INSTRUCTIONS.md changes, all 24 scripts must be reviewed for compliance
4. If the hook script content changes, module 4.2's verbatim copy in the teaching script must also change (they must stay in sync)
5. If module time estimates change, the course-structure.json total and README time table must both update
6. If a new slash command is added to `.claude/commands/`, the README command list may need updating

---

## Build Order

The component and sub-task dependencies imply a specific build order. Doing things out of order creates rework.

### Phase 1: Establish Ground Truth (do first, no dependencies)

**A3 — Creator Context Verification**
Reason: creator-context files are the root source of truth. All teaching scripts reference them. Any factual corrections here cascade forward. Do this before reviewing scripts, not after.

**A2 — Vault Consistency Check**
Reason: vault note problems (missing frontmatter, broken links, empty folders needing `.gitkeep`) are independent of teaching script content. Fixing them first means the teaching scripts can be reviewed with an accurate picture of what vault state they're operating on.

### Phase 2: Content Review (depends on Phase 1)

**A1 — Teaching Script Review**
Reason: with creator-context verified and vault state understood, scripts can be reviewed accurately. Reviewers will know which `[[wiki links]]` in scripts are genuinely broken vs. intentionally pointing at notes created during earlier lessons.

### Phase 3: BASB Integration (depends on Phase 2)

**B1 — BASB Concept Integration**
Reason: BASB integration modifies existing teaching scripts. Those scripts must have passed review first, so BASB edits are layered onto clean, reviewed content rather than potentially conflicting with review changes. Integration is additive (new Say blocks, new paragraphs) not structural, so it doesn't invalidate Phase 2 review work.

### Phase 4: Enhancements (depends on Phase 2, parallel with Phase 3)

**B2 — Utility Slash Commands**
Reason: the command content is specified in module 4.5's teaching script. After script review (Phase 2), the command definitions are known to be correct and can be extracted into real command files.

**B3 — Hook Script**
Reason: the script content is specified in module 4.2's teaching script. Same logic as B2 — extract after script review confirms the content.

**B4 — .gitignore**
Reason: no dependencies. Can happen at any time. Place here for simplicity.

### Phase 5: Distribution Prep (depends on Phases 2-4)

**C1 — README Polish**
Reason: the README's command list must match the actual command files. All command files must exist before the README can be verified accurate.

**C2 — LICENSE**
Reason: no dependencies, but logically belongs with distribution prep.

**C3 — Works Out of the Box Verification**
Reason: this is the final integration test. It can only be done after all enhancements are in place and README is polished. It validates the whole system end-to-end.

**C4 — Course Structure Accuracy**
Reason: the time discrepancy (450 vs 465 minutes) can only be resolved after all module scripts are reviewed and timing feels accurate.

### Build Order Summary

```
Phase 1: A3 (creator context) + A2 (vault consistency)  ← parallel, no dependencies
Phase 2: A1 (teaching script review)                    ← depends on Phase 1
Phase 3: B1 (BASB integration)                          ← depends on Phase 2
Phase 4: B2 (utility commands) + B3 (hook script)       ← parallel, depends on Phase 2
         B4 (.gitignore)                                ← can happen any time
Phase 5: C1 (README) + C2 (LICENSE) + C4 (time accuracy) ← depends on Phases 2-4
         C3 (out-of-box verification)                   ← final, depends on all above
```

---

## Component Scope Boundaries (Explicit)

These boundaries prevent scope confusion between work streams:

| Component | Touches | Does NOT Touch |
|-----------|---------|---------------|
| A: Review/Polish | `lesson-modules/` (editorial), `vault/` (frontmatter, links), `creator-context/` (corrections) | System structure, command files, config files |
| B: Enhancement | `.claude/commands/` (new files), `.claude/scripts/` (new files), `lesson-modules/` (BASB insertions only), `.gitignore` | README, LICENSE, existing vault notes |
| C: Distribution | `README.md`, `LICENSE` (new), `course-structure.json` (time fix), `.gitignore` verification | Teaching scripts, vault notes, agents |

**Boundary the review phase cannot cross:** Component A reviewers must not restructure teaching scripts — only edit within existing blocks. Structural changes (adding new steps, reordering teaching flow) belong to the BASB integration work in Component B, which happens after review.

---

## BASB Integration Architecture Detail

Because BASB integration touches multiple existing scripts, this deserves explicit specification of what the touch points look like in practice.

**Pattern: Light touch insertion**
The BASB integration is additive. Each touch point adds 1-3 sentences to an existing Say block, or adds a new brief Say block before a Check point. The teaching scripts already reference Zettelkasten and the PARA-like vault folder structure. BASB integration names what's already implicit.

**Module 1.1 insertion point (the framing introduction):**
In Step 8 (Preview and Excitement), after the current preview bullets, add a paragraph acknowledging that this course builds on Tiago Forte's "Building a Second Brain" methodology. The course's vault folder structure (00-Inbox through 08-Published) mirrors the PARA framework. Claude is the force multiplier that BASB always assumed you'd supply yourself.

**Module 2.1 insertion point (CODE workflow):**
In Step 2 (The Three Types of Notes), add a brief context sentence connecting the note types to CODE: Capture (fleeting notes), Organize (templates and structure), Distill (literature notes that pull out key ideas), Express (permanent notes that become writing). This is a labeling change, not a content change.

**Module 2.4 insertion point (progressive summarization — deepest change):**
This module covers research and literature notes. Progressive summarization (the technique of layering highlights over multiple reading passes) is BASB's signature technique for building toward permanent notes. Adding a step that walks through progressive summarization on one of Alex's existing research notes would be high value. This is the only BASB integration point that may require adding a new teaching flow step rather than just amending an existing one.

**Module 4.6 graduation integration:**
The final module should acknowledge BASB explicitly as the course concludes, framing the completed vault as "BASB running on AI rails." This is the payoff of the framing introduced in 1.1.

---

## Vault State at Distribution

The vault as distributed (what someone gets when they clone) must be a coherent initial state that makes sense as a starting point for module 0.1. Issues to resolve before distribution:

**Empty folders:** `vault/07-MOCs/` and `vault/08-Published/` are genuinely empty — these are destinations created during lessons. They need `.gitkeep` files so Git preserves the folder structure.

**Unresolved wiki links:** Several pre-seeded vault notes reference notes that get created during lessons:
- `vault/03-Research/Zettelkasten Method.md` links to `[[AI as Extended Memory]]` and `[[Tools for Thought - The Design Philosophy]]` — neither exists in the pre-seeded vault
- `vault/02-Projects/Horizon-Magazine/AI Writing Partner - Brief.md` links to `[[Meeting notes Sarah 03-15]]` and `[[Draft - The AI Writing Partner Opening]]` — both exist, which is correct

**Recommendation:** Document the intentionally unresolved links. The 1.1 welcome script already frames the vault as "intentionally messy" — unresolved links are part of that design. But they should be intentional rather than accidental.

**Inbox notes without frontmatter:** This is correct — the Inbox pattern is predicated on notes being raw and unstructured. The 4.2 hook script adds frontmatter to vault notes automatically, so Inbox notes will get frontmatter added when the hook fires during lessons. Pre-seeded state is correct as-is.

---

## Sources

This analysis is derived entirely from direct inspection of the codebase:
- All 24 teaching scripts in `lesson-modules/`
- All 38 vault notes in `vault/`
- `course-structure.json`, `CLAUDE.md`, `README.md`
- `.claude/SCRIPT_INSTRUCTIONS.md`, `.claude/agents/` (3 files), `.claude/commands/` (24 files)
- `.planning/PROJECT.md`, `.planning/codebase/STRUCTURE.md`, `.planning/codebase/ARCHITECTURE.md`

No web search was performed. All findings are HIGH confidence (direct observation of existing files).

---

*Architecture analysis: 2026-03-20*
