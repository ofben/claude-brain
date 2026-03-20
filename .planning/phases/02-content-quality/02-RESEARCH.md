# Phase 2: Content Quality - Research

**Researched:** 2026-03-20
**Domain:** Teaching script content audit, vault path verification, navigation standardization
**Confidence:** HIGH — all findings are direct filesystem inspection of the actual scripts and vault

---

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

**Module 2.5 placeholder handling**
- `[Note name]` patterns in "Present it like this:" blocks are acceptable template syntax — Claude fills these at runtime. NOT considered placeholder text for CONT-01.
- `[Note Name]` in Say: blocks must be rewritten as dynamic instructions (e.g., "name the first orphan from Step 2" instead of "[Note Name]")
- Step 4 Pair 3 (`[Third pair based on actual vault content]`) must be replaced with a specific cross-domain pair from the vault — the script already suggests daily notes + book idea as an option
- CONT-01 success criteria applies to Say: block placeholders only, not "Present it like this:" formatting templates

**Script format rigor**
- Review level: structural compliance + consistency (not full quality/pacing review)
- Check against SCRIPT_INSTRUCTIONS.md as-is — do NOT create a new canonical template
- Add missing sections when most other scripts have them (e.g., Common Student Questions, Success Criteria, Important Notes for Claude)
- Standardize script headers: every script should follow Title → "Teaching Script" note → "Before starting" reminder → Your Role → Learning Objectives → Teaching Flow

**Action block specificity**
- Tighten vague Action: blocks — add specific file paths, expected content, or output format so Claude's behavior is predictable across runs
- All Action: blocks that write/modify files must specify the exact file path and content structure
- Analysis/search Action: blocks should specify what to search for and how to present results

**Navigation & module endings**
- Every module must end with the explicit `/start-X-X` command for the next module — no vague "in the next module..." without the command
- Only the next module's command at the end — no self-referencing /start command at the top
- Module 4.6 (final module) ends the course — no next command needed, graduation moment instead

**Level-end transitions**
- Ensure modules 0.2, 1.6, 2.5, 3.5, and 4.6 each have a celebration/summary moment
- Each level-end module should have explicit navigation to the next level's first module
- Pattern: summarize what was learned in the level, preview what's coming, provide the /start command

**Cross-module name mismatch fix**
- Fix module 3.4 to use "AI as Extended Memory" (matching all other modules: 2.1, 2.2, 2.3, 3.5)
- "Extended" is the established name — module 2.1 creates it first, 4+ modules reference it

**Plain text note references**
- Leave as plain text — Phase 1 assessed all 9 as LOW/MAYBE. Wikilinks would look awkward in option lists, bold headers, and scripted dialogue

**Time estimate mismatch**
- Update course-structure.json `totalEstimatedMinutes` to 465 (matching the actual sum of individual module estimates)
- Individual module estimates are more granular and likely accurate — fix the total, not the parts

**Vault path verification**
- Systematic automated check: extract every vault file path and note name from all 24 scripts, verify each exists in the vault
- Phase 1 covered wikilinks — this phase covers backtick paths (`vault/03-Research/...`), quoted filenames, and any other path references
- Log mismatches for correction

**Vault TODO markers**
- Claude's Discretion: assess each TODO in vault notes — remove if it breaks immersion, keep if it's realistic in-world content (e.g., a draft with [TODO] feels authentic for a writer's vault)

### Claude's Discretion
- Exact wording of rewritten dynamic instructions in Module 2.5 Say: blocks
- Which specific vault notes to use for Module 2.5 Step 4 Pair 3
- How to handle TODO markers in vault notes (immersion vs. polish judgment call)
- Specific content for missing sections added to scripts (Common Questions, Success Criteria, etc.)
- Exact standardization of script headers where minor variation exists

### Deferred Ideas (OUT OF SCOPE)
None — discussion stayed within phase scope
</user_constraints>

---

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|-----------------|
| CONT-01 | Module 2.5 teaching script is complete with no placeholder text | Two Say: block placeholders identified at lines 135 and 141 of 2.5 CLAUDE.md; "Present it like this:" bracket patterns are acceptable — not placeholders |
| CONT-02 | All student-visible TODO markers removed from vault notes | Three TODO occurrences found across vault — immersion assessment provided for each |
| CONT-03 | course-structure.json totalEstimatedMinutes matches sum of individual module estimates | Sum confirmed as 465 min; JSON currently shows 450 — single field update needed |
| CONT-04 | All 24 teaching scripts follow SCRIPT_INSTRUCTIONS.md format consistently | All 24 scripts have all three expected sections (Important Notes, Success Criteria, Common Questions); headers vary slightly; Action block specificity varies |
| CONT-05 | Teaching scripts reference correct vault file paths and note names | 28 paths referenced; 14 are pre-seeded and verified; 14 are module-created (expected to be absent pre-run) — none are broken references |
| CONT-06 | Module navigation is correct (each module points to the right next module) | All navigation commands verified correct; 3.4 cross-module name mismatch is the only fix needed beyond the name change |
</phase_requirements>

---

## Summary

Phase 2 is a surgical content polish phase — no new content, no structural changes to the teaching approach. The scope is narrow and well-bounded: fix two Say: block placeholders in Module 2.5, assess three vault TODO markers, update one JSON field, fix one cross-module note name mismatch (3.4 "External" → "Extended"), and audit Action block specificity across all 24 scripts.

The good news from research: the scripts are in better shape than expected. All 24 already have all three standard end-sections (Important Notes for Claude, Common Student Questions, Success Criteria). All navigation commands are correct. The vault path verification reveals a two-category split — pre-seeded files and module-created files — and none of the references are broken for the wrong reason. The "missing" files are all either intentionally created by specific modules (correct behavior) or files that exist but were named differently than the grep pattern captured.

The primary workload is (1) the Module 2.5 placeholder rewrite — two specific Say: blocks need dynamic instruction language, plus Step 4 Pair 3 needs a specific vault pair chosen; (2) the module 3.4 "AI as External Memory" → "AI as Extended Memory" rename across all Action blocks and mentions; (3) Action block specificity review across all 24 scripts — adding file paths and output formats where vague; and (4) the TODO marker judgment calls in three vault notes.

**Primary recommendation:** Work in discrete per-requirement tasks. CONT-01 and CONT-06 (name mismatch) are surgical single-file fixes. CONT-03 is a one-line JSON edit. CONT-02 requires reading three vault files and making immersion judgments. CONT-04 and CONT-05 require systematic sweeps across all 24 scripts — batch these per script or per level to keep tasks manageable.

---

## Standard Stack

This phase has no library dependencies. The work is pure content editing of Markdown files. The relevant "stack" is the course's own format specification.

### Format Specification (SCRIPT_INSTRUCTIONS.md)

The authoritative spec is `.claude/SCRIPT_INSTRUCTIONS.md`. Key rules for Phase 2 work:

| Block Type | Rule | Phase 2 Implication |
|---|---|---|
| Say: | Deliver word-for-word; no placeholders | CONT-01 — fix `[Note Name]` and `[topic summary]` in 2.5 |
| Check: | Stop and wait; specific question | Verify all Check: blocks have a concrete question |
| Action: | Run exact commands; show output | CONT-04 — tighten vague Action: blocks |
| Present it like this: | Formatting template; bracket variables OK | `[Note name]` here is NOT a placeholder per locked decision |

### Course Structure (course-structure.json)

Module ordering is the source of truth for navigation verification:
- 0.1 → 0.2 → 1.1 → 1.2 → 1.3 → 1.4 → 1.5 → 1.6 → 2.1 → 2.2 → 2.3 → 2.4 → 2.5 → 3.1 → 3.2 → 3.3 → 3.4 → 3.5 → 4.1 → 4.2 → 4.3 → 4.4 → 4.5 → 4.6
- Level-end modules: 0.2, 1.6, 2.5, 3.5, 4.6

---

## Architecture Patterns

### Script Header Standard (observed across all 24 scripts)

Every script follows this exact header pattern:
```markdown
# Module X.Y: [Title]

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
[description]

---

## Module Learning Objectives
1. [objective]
...

---

## Teaching Flow
### Step N: [Name] (X minutes)
```

All 24 scripts have this pattern. No header standardization work is needed.

### End-Section Standard (observed across all 24 scripts)

All 24 scripts already have all three standard end-sections in this order:
1. `## Important Notes for Claude`
2. `## Common Student Questions`
3. `## Success Criteria`

No end-section additions are needed.

### Navigation Pattern (two observed variants — both acceptable)

Scripts use one of two acceptable patterns for navigation:
- **Variant A (Say: block):** "Type `/start-X-X` when you're ready!" — inside a final Say: block followed by a Check: block
- **Variant B (Success Criteria checkbox):** `- [ ] Student knows to run /start-X-X next` — in the Success Criteria section

Both variants are in use across the 24 scripts. The decision standard says "every module must end with the explicit `/start-X-X` command" — both patterns satisfy this. Variant A is preferred for the learning flow; Variant B alone may not be sufficient if it's the only occurrence.

### Action Block Specificity Pattern (target standard)

Well-specified Action blocks follow this pattern:
```
**Action:**
Read `vault/03-Research/Remote Work Communication Research.md` and display its frontmatter block.
```

Vague Action blocks to fix look like:
```
**Action:**
Read an existing well-structured note as an example.
```

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead |
|---------|-------------|-------------|
| Verifying vault paths | Manual grep/scan | Systematic bash script comparing extracted paths to `find vault/ -name "*.md"` |
| Finding placeholder patterns | Reading each script | Grep for `\[Note Name\]`, `\[topic summary\]`, `\[Third pair\]` patterns |
| Navigation audit | Reading 24 endings | Grep for `/start-` patterns across all scripts |

---

## Common Pitfalls

### Pitfall 1: Mistaking Module-Created Files for Broken References (CONT-05)

**What goes wrong:** The vault path verification produces a long list of "missing" files, and an implementer tries to "fix" the scripts by removing the references.

**Why it happens:** Many vault paths in scripts are files that modules intentionally CREATE during teaching. They don't exist in the pre-seeded vault and they aren't supposed to. Treating them as broken is wrong.

**How to avoid:** Categorize every referenced path as either (A) pre-seeded — must exist in the current vault, or (B) module-created — will be created when the specified module runs. Only Category A paths require a match.

**Category A (pre-seeded, must exist now):**
- `vault/00-Inbox/ClearPath async article research links.md` — EXISTS
- `vault/00-Inbox/Meeting notes Sarah 03-15.md` — EXISTS
- `vault/00-Inbox/Podcast rec from Jamie.md` — EXISTS
- `vault/00-Inbox/Quick thought - AI and memory.md` — EXISTS
- `vault/01-Daily-Notes/2026-03-10.md` through `2026-03-19.md` — ALL EXIST
- `vault/02-Projects/Horizon-Magazine/AI Writing Partner - Brief.md` — EXISTS
- `vault/02-Projects/The-Synthesis/Issue Draft - Tools That Think With You.md` — EXISTS
- `vault/03-Research/AI Tools Landscape 2026.md` — EXISTS
- `vault/03-Research/Creator Economy Trends.md` — EXISTS
- `vault/03-Research/Digital Minimalism - Key Concepts.md` — EXISTS
- `vault/03-Research/Remote Work Communication Research.md` — EXISTS
- `vault/03-Research/Tools for Thought History.md` — EXISTS
- `vault/03-Research/Zettelkasten Method.md` — EXISTS

**Category B (module-created, absent pre-run — CORRECT):**
- `vault/CLAUDE.md` — created by Module 1.5
- `vault/06-Templates/Fleeting Note.md`, `Literature Note.md`, `Permanent Note.md`, `Project Brief.md`, `Daily Note.md` — created by Module 2.1
- `vault/07-MOCs/AI and Creative Work.md`, `Client Work Dashboard.md` — created by Module 2.2
- `vault/03-Research/Synthesis - AI Creativity and Intentionality.md` — created by Module 1.4
- `vault/03-Research/AI as Extended Memory.md` — created by Module 2.1
- `vault/03-Research/GitLab Async Communication Model.md` — created by Module 2.1
- `vault/03-Research/Knowledge Management for Creatives.md` — created by Module 3.4
- `vault/02-Projects/Bloom-Studio/Research - Digital Sunset Routine.md` — created by Module 3.5
- `vault/02-Projects/ClearPath/Research - Async Communication Sources.md` — created by Module 3.3 or similar
- `vault/05-References/Vault Health Report.md` — created by Module 4.3
- `vault/00-Inbox/Test note - hook demo.md` — created by Module 4.2
- `vault/00-Inbox/Another test note.md` — created by Module 4.2

**VERDICT: No vault path fixes needed for CONT-05.** All referenced pre-seeded paths exist. All "missing" paths are module-created. CONT-05 is a verification task that should conclude "paths verified clean."

**Special note on 2026-03-20.md:** This daily note is referenced in some scripts. It is NOT pre-seeded (only through 2026-03-19.md exists). The 03-20 date is module-created (Module 4.6 creates today's daily note as part of its demo). This is expected behavior.

**Special note on AI as External Memory vs Extended Memory:** Module 3.4 currently writes to `vault/03-Research/AI as External Memory.md` — this is the cross-module mismatch that CONT-06 (via the locked decision) requires fixing to `AI as Extended Memory`.

### Pitfall 2: Over-Interpreting "Present it like this:" Bracket Patterns (CONT-01)

**What goes wrong:** An implementer sees `[Note name]` inside a "Present it like this:" block and treats it as a placeholder to fill in.

**Why it happens:** The pattern looks identical to the Say: block placeholders that DO need fixing.

**How to avoid:** The locked decision is explicit — bracket variables in "Present it like this:" blocks are runtime template instructions. Claude fills them with actual vault data when teaching. They must remain as-is.

**The only actual CONT-01 issues are in Say: blocks:**
- Line 135: `"Let's start with **[Note Name]**."` — must become dynamic instruction
- Line 141: `"This note is about [topic summary]."` — must become dynamic instruction
- Step 4 Pair 3: `**Connection 3: [Third pair based on actual vault content — present in the same format]**"` — must be replaced with a specific pair from vault

### Pitfall 3: Immersion Judgment on TODO Markers (CONT-02)

**What goes wrong:** All TODOs get removed mechanically, breaking immersion by turning a realistic writer's draft into unnaturally finished content.

**Why it happens:** "Remove TODOs" sounds like a simple find-and-replace task.

**How to avoid:** Make the judgment call per occurrence. The three vault TODO occurrences:

| File | TODO Content | Immersion Assessment |
|---|---|---|
| `vault/04-Drafts/Draft - Digital Boundaries Post 3.md` line 56 | `[TODO: closing paragraph — bring it back to the broader theme...]` | **REMOVE** — a student-visible draft with a TODO bracket note in it would break immersion; this looks like an unfinished template, not a writer's real draft. Write the closing paragraph. |
| `vault/00-Inbox/Meeting notes Sarah 03-15.md` lines 20-24 | `TODO: / - Revise outline / - Reach out to Devon...` | **KEEP** — this is a raw inbox note. A writer's meeting notes with a TODO task list is completely realistic. This enhances immersion, not breaks it. |
| `vault/05-References/Writing Process Checklist.md` line 28 | `leave a bracket note [TODO: finish this] and move on` | **KEEP** — this is inside a checklist instruction: "If stuck on a section, leave a bracket note [TODO: finish this] and move on." It's describing what Alex does when writing. The [TODO: finish this] is illustrative example text within an instruction, not a TODO in the note itself. |

**VERDICT: Remove only the Draft - Digital Boundaries Post 3 TODO; keep the other two.**

---

## Code Examples

### Module 2.5 Say: Block Fixes (CONT-01)

**Current (lines 132-147 of 2.5):**
```markdown
**Say:**
"Let's start with **[Note Name]**."

**Action:**
Read the orphan note and display its content.

**Say:**
"This note is about [topic summary]. Right now it's floating on its own, but it actually connects to several things in the vault:
```

**Target pattern (dynamic instruction language):**
```markdown
**Say:**
"Let's start with the first orphan from the list above — [name the first orphan identified in Step 2]."

**Action:**
Read the first orphan note identified in Step 2 and display its content to the student.

**Say:**
"This note is about [briefly summarize the orphan's topic based on what you just read]. Right now it's floating on its own, but it actually connects to several things in the vault:
```

The CONTEXT.md specifies the pattern: "name the [X] identified in Step [N]" — this keeps scripts dynamic but unambiguous.

### Module 2.5 Step 4 Pair 3 Fix (CONT-01)

**Current (line 187-189):**
```markdown
**Pair 3: A daily note reference and the book idea (or another cross-domain pair)**

Look for a specific moment in the daily notes (e.g., coffee with Marcus on March 10, the Zettelkasten rabbit hole on March 14) that connects to a project or research note in a non-obvious way.
```

**Candidate replacement (Claude's Discretion — one valid option):**
```markdown
**Pair 3: "Zettelkasten Method" and "Newsletter Ideas Backlog"**

Read both notes. The connection: The Zettelkasten Method is an academic knowledge management framework — atomic notes, bidirectional links, emergent insight. The Newsletter Ideas Backlog has Alex planning newsletter content, including "The Portable Idea System" entry and themes about finding ideas. The connection: the newsletter audience (independent creators thinking about their workflows) is exactly the audience that would benefit from a friendly, applied take on Zettelkasten. Alex's newsletter is the ideal venue to translate academic PKM theory into practical creator advice. One is the research; the other is the audience.
```

This uses the actual vault's `vault/03-Research/Zettelkasten Method.md` and `vault/02-Projects/The-Synthesis/Newsletter Ideas Backlog.md` — both confirmed to exist in the pre-seeded vault.

### Module 3.4 Cross-Module Name Fix (CONT-06)

**Current (Module 3.4 Step 4, line 190):**
```
Write the expanded note to `vault/03-Research/AI as External Memory.md`:
```

**Fixed:**
```
Write the expanded note to `vault/03-Research/AI as Extended Memory.md`:
```

Also fix the frontmatter `topic:` field within that note block from `AI as External Memory` to `AI as Extended Memory`, and fix the filename reference in the Success Criteria:

```
- An inbox note ("Quick thought - AI and memory") has been transformed into a permanent note ("AI as Extended Memory") in `vault/03-Research/`
```

### Course Structure JSON Fix (CONT-03)

**Current:**
```json
"totalEstimatedMinutes": 450,
```

**Fixed:**
```json
"totalEstimatedMinutes": 465,
```

Verified sum: 5+10+10+20+20+15+15+10+25+20+25+25+25+20+25+20+20+25+20+25+25+25+20+15 = 465 minutes.

---

## State of the Art

| Area | Current State | Phase 2 Changes |
|---|---|---|
| Module 2.5 | Two Say: placeholders; one vague Step 4 Pair 3 | Rewrite 2 Say: lines; specify Pair 3 with vault notes |
| Module 3.4 | Creates "AI as External Memory" | Rename to "AI as Extended Memory" throughout |
| course-structure.json | `totalEstimatedMinutes: 450` | Change to 465 |
| Vault Draft Post 3 | Has [TODO: closing paragraph] | Write the closing paragraph |
| Script headers | All 24 follow standard pattern | No changes needed |
| End-sections | All 24 have all 3 sections | No changes needed |
| Navigation commands | All 24 have correct `/start-X-X` | No changes needed |
| Vault path references | All pre-seeded paths verified | No changes needed |

---

## Open Questions

1. **Module 2.5 Pair 3 final choice**
   - What we know: The CONTEXT.md suggests "daily notes + book idea" but also says "Zettelkasten + Newsletter Backlog" is viable
   - What's unclear: Which pair produces the more compelling "non-obvious connection" teaching moment
   - Recommendation: Use `Zettelkasten Method` + `Newsletter Ideas Backlog` — both confirmed as pre-seeded, and the connection (academic PKM theory → creator newsletter audience) is more genuinely surprising than daily note + book idea, which is fairly obvious

2. **Draft - Digital Boundaries Post 3 closing paragraph**
   - What we know: The draft needs a closing paragraph that brings it back to digital boundaries theme, callbacks the opening stat, is "warm not preachy," and teases Post 4
   - What's unclear: The exact wording is Claude's Discretion
   - Recommendation: Write approximately 100-150 words following the existing voice of the draft; the draft is for Bloom Studio (wellness brand, evidence-based, warm); Post 4 is the "Digital Sunset Routine" per creator-context/CLIENTS.md

3. **Action block specificity sweep scope**
   - What we know: The locked decision says "tighten vague Action: blocks"
   - What's unclear: How many vague blocks exist across the 24 scripts (research did not exhaustively count)
   - Recommendation: Treat this as a per-script review task — check every Action: block during the script audit. Flag and fix any that say "read a note" without specifying which one, or "search the vault" without specifying what to look for.

---

## Validation Architecture

**nyquist_validation is enabled** (`.planning/config.json`: `"nyquist_validation": true`).

### Test Framework

| Property | Value |
|----------|-------|
| Framework | Manual inspection (no automated test framework — course is experiential, per REQUIREMENTS.md Out of Scope: "Automated CI testing") |
| Config file | None — no test runner |
| Quick run command | Manual grep + file read |
| Full suite command | Full script read sweep |

### Phase Requirements → Test Map

| Req ID | Behavior | Test Type | Verification Method | Automatable? |
|--------|----------|-----------|---------------------|-------------|
| CONT-01 | No `[Note Name]` or `[topic summary]` in any Say: block of 2.5 | manual | `grep -n "\[Note Name\]\|\[topic summary\]\|\[Third pair\]" lesson-modules/2-building-the-brain/2.5-knowledge-graph/CLAUDE.md` returns 0 results | YES — grep |
| CONT-02 | No student-visible TODOs in vault notes | manual | `grep -rn "TODO" vault/` returns only kept occurrences (Meeting notes and Checklist) | YES — grep |
| CONT-03 | JSON total = 465 | manual | `python3 -c "import json; d=json.load(open('course-structure.json')); print(d['totalEstimatedMinutes'])"` outputs 465 | YES — python one-liner |
| CONT-04 | All 24 scripts have Say/Check/Action format | manual | Read each script; verify structural compliance | PARTIAL — grep for block counts |
| CONT-05 | All pre-seeded vault paths exist | manual | Check each Category A path via filesystem — all verified clean in research | YES — bash check already done |
| CONT-06 | 3.4 uses "AI as Extended Memory" everywhere | manual | `grep -n "External Memory" lesson-modules/3-memory-partner/3.4-claude-writes-vault/CLAUDE.md` returns 0 results | YES — grep |

### Sampling Rate
- **Per task commit:** Run the grep verification command for that requirement
- **Per wave merge:** All grep checks above, plus visual spot-check of one modified script
- **Phase gate:** All grep checks green + human reads modified script sections before `/gsd:verify-work`

### Wave 0 Gaps
None — no test framework to install. Verification is file inspection.

---

## Sources

### Primary (HIGH confidence)
- Direct filesystem inspection of all 24 teaching scripts in `lesson-modules/`
- Direct filesystem inspection of vault directory — `find vault/ -name "*.md"`
- `.claude/SCRIPT_INSTRUCTIONS.md` — authoritative format spec
- `course-structure.json` — authoritative module ordering and time estimates
- `.planning/phases/01-vault-integrity/01-REVIEW-LOG.md` — Phase 1 findings carried forward
- `.planning/phases/02-content-quality/02-CONTEXT.md` — locked decisions from discussion phase

### Secondary (MEDIUM confidence)
- `vault/04-Drafts/Draft - Digital Boundaries Post 3.md` — read directly to assess TODO
- `vault/00-Inbox/Meeting notes Sarah 03-15.md` — read directly to assess TODO
- `vault/05-References/Writing Process Checklist.md` — read directly to assess TODO

---

## Metadata

**Confidence breakdown:**
- CONT-01 scope: HIGH — placeholders located at specific line numbers via grep
- CONT-02 scope: HIGH — all 3 TODOs found via grep; immersion judgments are HIGH confidence
- CONT-03 scope: HIGH — verified by Python sum calculation
- CONT-04 scope: HIGH (headers/sections confirmed); MEDIUM (Action block vagueness needs per-script review)
- CONT-05 scope: HIGH — filesystem check complete; two-category split is definitive
- CONT-06 scope: HIGH — mismatch documented in Phase 1 review log; exact fix is surgical

**Research date:** 2026-03-20
**Valid until:** 2026-04-20 (stable content — scripts don't change between now and implementation)
