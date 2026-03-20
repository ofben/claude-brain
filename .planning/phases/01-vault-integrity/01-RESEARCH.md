# Phase 1: Vault Integrity - Research

**Researched:** 2026-03-20
**Domain:** Markdown/Obsidian vault audit — wikilinks, YAML frontmatter, Git folder preservation, date consistency
**Confidence:** HIGH (all findings come from direct inspection of actual project files)

---

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

- **Broken link fix strategy:** When a wikilink points to a non-existent note, rename it to the closest matching vault note IF the match is confident. When no confident match exists, log in `01-REVIEW-LOG.md` for manual review. Same approach for both teaching script wikilinks (VAULT-01) and vault-to-vault wikilinks (VAULT-02).
- **Wikilink display aliases preserved:** Preserve existing `[[Full Name|short name]]` aliases — they make scripts read naturally.
- **Plain text note references:** Flag plain-text mentions of vault notes in teaching scripts (without `[[ ]]`) and log in review log. Not necessarily broken — worth reviewing.
- **Cross-module note name consistency:** Cross-check note names students are told to create vs what later modules expect. Log mismatches for Phase 2 to fix — Phase 1 identifies only.
- **Review log format:** Single combined file `.planning/phases/01-vault-integrity/01-REVIEW-LOG.md` with sections: Uncertain Links, Plain Text References, Cross-Module Mismatches, Intentional Unresolved Links.
- **Frontmatter scope:** Fix `tags:` to array syntax only. Do not add or require additional frontmatter fields. Add minimal frontmatter (with tags array) to notes that currently have none. Templates also use array syntax. Teaching scripts that show frontmatter examples update to array syntax.
- **Intentional unresolved links:** Cross-reference every unresolved vault-to-vault wikilink against all 24 teaching scripts. If a script tells students to create a note with that name, it is intentional — document in review log's "Intentional Unresolved Links" section with source note and creating module. Verify module ordering (note containing link must appear at or before the module that creates the target). Log ordering violations. If unresolved link not referenced in any script and no confident match, log in "Uncertain" section.
- **GITKEEP:** 07-MOCs/ and 08-Published/ each need a `.gitkeep` file.

### Claude's Discretion

- Date alignment details (VAULT-05) — use March 2026 as the anchor, fix contradictions using best judgment.
- Exact tag values to assign when adding frontmatter to notes that had none.
- How to structure the review log sections.

### Deferred Ideas (OUT OF SCOPE)

None — discussion stayed within phase scope.
</user_constraints>

---

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|-----------------|
| VAULT-01 | All `[[wikilinks]]` in teaching scripts resolve to existing vault notes (fix phantom references) | Direct inspection identified 9 missing-from-vault wikilinks across 24 scripts; 6 are intentional (created during lessons), 3 are genuinely broken or unresolved |
| VAULT-02 | All `[[wikilinks]]` in pre-seeded vault notes resolve to existing notes or are intentionally unresolved | Direct inspection found all 39 vault-to-vault wikilinks resolve (including folder-style links); zero unresolved vault-to-vault links remain |
| VAULT-03 | Frontmatter tag format consistent across all vault notes and templates (standardize on array syntax) | Direct inspection: 5 templates use scalar format; 13 vault notes have no frontmatter at all; 24 vault notes already use array syntax — these are the exact files to fix |
| VAULT-04 | Empty folders (07-MOCs, 08-Published) contain `.gitkeep` files | Both folders confirmed empty; `.gitkeep` files need to be created |
| VAULT-05 | Dates in creator-context and vault notes are internally consistent | Direct inspection found two concrete contradictions: (1) Horizon deadline discrepancy, (2) Bloom series post titles and dates conflict between vault note and creator-context files |
</phase_requirements>

---

## Summary

Phase 1 is a pure audit-and-fix phase with no new content creation (except `.gitkeep` files and frontmatter additions). All findings below come from direct inspection of the actual files — no inference required.

The vault has 37 pre-seeded `.md` notes across 9 folders and 24 teaching scripts across 5 levels. The wikilink situation is cleaner than expected: all vault-to-vault wikilinks already resolve. The teaching script wikilinks have 9 missing-from-vault targets, but 6 of those are notes that teaching modules explicitly instruct students (via Claude) to create during the course. Three wikilinks are genuinely problematic.

The frontmatter situation is the highest-volume fix: all 5 templates use scalar `tags:` format and need conversion, and 13 vault notes (mostly in 00-Inbox and 05-References) have no frontmatter at all and need minimal frontmatter added. Twenty-four vault notes already use correct array syntax.

Date inconsistency is concrete and locatable: the Horizon Magazine article deadline differs between the vault project brief (April 4) and creator-context files (March 28), and the Bloom Studio "Digital Boundaries" series has completely different post titles AND publication dates in the vault overview note vs creator-context files and teaching scripts.

**Primary recommendation:** Execute five focused tasks in sequence — wikilink audit (VAULT-01/02), frontmatter standardization (VAULT-03), gitkeep creation (VAULT-04), date alignment (VAULT-05), and review log production.

---

## Standard Stack

This phase requires no external libraries. All work is file editing using native tools available in Claude Code.

### Core Capabilities Needed
| Capability | Tool | Notes |
|------------|------|-------|
| Read markdown files | Claude Code `Read` tool | Primary mechanism for all audit tasks |
| Write/edit markdown files | Claude Code `Write`/`Edit` tools | Frontmatter fixes, `.gitkeep` creation, date fixes |
| Search file contents | Claude Code `Grep` tool | Wikilink extraction, tags audit |
| List files | Claude Code `Glob`/`Bash` | Inventory vault notes |
| Python one-liners | `Bash` with python3 | Cross-referencing wikilinks against note names |

### Wikilink Extraction Pattern (verified working)
```bash
grep -rn "\[\[" /path/ --include="*.md" | grep -oE "\[\[[^]]+\]\]" | sort -u
```

### Frontmatter Tag Detection (verified working)
```python
# Detect scalar tags in frontmatter
if line.startswith('tags:') and '[' not in line:
    # scalar format — needs fixing
```

---

## Architecture Patterns

### Recommended Task Sequence

```
Phase 1 Tasks:
1. Wikilink Audit (VAULT-01 + VAULT-02)
   ├── Extract all wikilinks from 24 teaching scripts
   ├── Extract all wikilinks from 37 vault notes
   ├── Compare against vault note inventory
   ├── Categorize: intentional / confident-rename / uncertain
   └── Write 01-REVIEW-LOG.md
2. Frontmatter Standardization (VAULT-03)
   ├── Fix 5 templates: scalar → array tags
   ├── Add minimal frontmatter to 13 no-frontmatter notes
   └── Update teaching script examples showing frontmatter
3. Gitkeep Creation (VAULT-04)
   ├── Create vault/07-MOCs/.gitkeep
   └── Create vault/08-Published/.gitkeep
4. Date Alignment (VAULT-05)
   ├── Fix Horizon deadline discrepancy
   └── Fix Bloom series titles/dates
```

### Obsidian Wikilink Rules (from inspection)
Obsidian resolves `[[Note Name]]` by matching against the filename (without `.md` extension) regardless of folder location. Aliases are `[[Full Name|Display Text]]`. Folder-style links `[[00-Inbox/]]` are used for illustrative purposes in prose, not as clickable vault links.

### Frontmatter Array Syntax (target format)
```yaml
---
tags: [tag1, tag2]
---
```

### Frontmatter Scalar Syntax (to fix)
```yaml
---
tags: daily-note
---
```

### Anti-Patterns to Avoid
- **Fixing intentional unresolved links:** Notes that modules instruct students to create are intentionally absent from the pre-seeded vault. Do not create these notes in Phase 1.
- **Altering wikilink aliases:** `[[Full Name|alias]]` format must be preserved even when the target note name changes.
- **Adding extra frontmatter fields:** Scope is tags format ONLY. Do not add `created:`, `modified:`, or other fields not already present.
- **Touching content or teaching narrative:** This phase is structural only. Phrasing, teaching flow, and note content quality are Phase 2 concerns.

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Wikilink extraction | Custom parser | `grep -oE "\[\[[^]]+\]\]"` | Already verified working; handles aliases |
| Note inventory | Directory walker | Python `os.walk` or `Glob` tool | Simple, already verified |
| Frontmatter parsing | YAML library | Direct string matching on `tags:` line | Frontmatter in this vault is simple enough; no edge cases found |

---

## Common Pitfalls

### Pitfall 1: Confusing "created during lesson" links with broken links
**What goes wrong:** Treating `[[Synthesis - AI Creativity and Intentionality]]` as a broken link and either creating the note or flagging it as an error.
**Why it happens:** The note doesn't exist in the pre-seeded vault, so it looks broken. But module 1.4 explicitly instructs Claude to create it during the lesson.
**How to avoid:** Before classifying any wikilink as broken, cross-reference the link target name against all 24 teaching scripts for `vault/path/NoteNameHere.md` patterns.
**Warning signs:** A wikilink target that sounds like a synthesis, research note, or MOC that fits the course narrative.

### Pitfall 2: Missing the Async Communication - Outline deadline error
**What goes wrong:** The frontmatter of `vault/02-Projects/ClearPath/Async Communication - Outline.md` has `deadline: 2026-03-28`, but the correct ClearPath deadline is March 25. This is easy to miss because other files show March 25 correctly.
**How to avoid:** Compare every `deadline:` frontmatter field against the canonical dates in `creator-context/CLIENTS.md` and `creator-context/PROJECTS.md`.

### Pitfall 3: Treating folder-style links as broken
**What goes wrong:** Flagging `[[00-Inbox/]]` or `[[06-Templates/]]` in vault notes as broken wikilinks.
**Why it happens:** These aren't note links — they're used as illustrative prose references to folder locations. Obsidian doesn't resolve them as notes.
**How to avoid:** Exclude links ending in `/` from the wikilink resolution check.

### Pitfall 4: Fixing the wrong Bloom series data
**What goes wrong:** Fixing only dates without also fixing the post titles in the Digital Boundaries Series Overview note.
**Why it happens:** VAULT-05 says "dates" but the inconsistency in the vault note goes deeper — both the titles and the publication dates are wrong.
**How to avoid:** When fixing VAULT-05, treat `creator-context/CLIENTS.md` + teaching script references as the authoritative source for Bloom post titles and dates. The vault note `Digital Boundaries Series - Overview.md` needs both title and date corrections.

### Pitfall 5: Not updating script frontmatter examples
**What goes wrong:** Fixing vault notes but missing teaching scripts that demonstrate scalar `tags:` syntax to students.
**Why it happens:** Scripts are audited for wikilinks but not for frontmatter example correctness.
**How to avoid:** When fixing VAULT-03, grep teaching scripts for `tags:` patterns to find any instructional examples showing scalar format.

---

## Complete Findings (Verified)

### VAULT-01: Teaching Script Wikilinks Missing from Vault

The 24 teaching scripts contain these wikilink targets that do not exist in the pre-seeded vault:

| Wikilink Target | Status | Evidence |
|----------------|--------|----------|
| `Synthesis - AI Creativity and Intentionality` | INTENTIONAL — module 1.4 creates it | `lesson-modules/1-foundations/1.4-the-connection/CLAUDE.md` line 153 |
| `GitLab Async Communication Model` | INTENTIONAL — module 2.1 creates it | `lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md` line 248 |
| `AI as Extended Memory` | INTENTIONAL — module 2.1 creates it | `lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md` line 311 |
| `AI and Creative Work` | INTENTIONAL — module 2.2 creates it (MOC) | `lesson-modules/2-building-the-brain/2.2-maps-of-content/CLAUDE.md` line 102 |
| `Client Work Dashboard` | INTENTIONAL — module 2.2 creates it (MOC) | `lesson-modules/2-building-the-brain/2.2-maps-of-content/CLAUDE.md` line 185 |
| `Research - Digital Sunset Routine` | INTENTIONAL — module 3.5 creates it | `lesson-modules/3-memory-partner/3.5-inbox-pattern/CLAUDE.md` line 282 |
| `The Notification Audit` | UNCERTAIN — not created by any module | Referenced in 3.5 (`[[The Notification Audit]] (Post 1)`), likely refers to Bloom Post 1 content |
| `Tools for Thought - The Design Philosophy` | UNCERTAIN — not created by any module | Referenced 3 times in 3.5; no module creates this note |
| `The Synthesis` | SPECIAL CASE — newsletter name, not a vault note | Appears inside note content written by 2.1; used as conceptual reference, not a note link |

**Module ordering verification (intentional links):**
- `[[Synthesis - AI Creativity and Intentionality]]` referenced in module 1.6 and 3.4 — created in 1.4. Ordering is correct.
- `[[GitLab Async Communication Model]]` and `[[AI as Extended Memory]]` referenced in 3.4, 3.5 — created in 2.1. Ordering is correct.
- `[[AI and Creative Work]]` and `[[Client Work Dashboard]]` referenced in 2.5 — created in 2.2. Ordering is correct.
- `[[Research - Digital Sunset Routine]]` created and referenced within the same module (3.5). No ordering issue.

### VAULT-02: Vault-to-Vault Wikilinks

**All 39 vault-to-vault wikilinks resolve to existing notes.** Zero unresolved vault-to-vault wikilinks found. (Folder-style links `[[00-Inbox/]]` and `[[06-Templates/]]` are illustrative prose — not note links — and are not counted.)

### VAULT-03: Frontmatter Issues

**Templates requiring scalar→array fix (5 files):**
- `vault/06-Templates/Draft Template.md` — `tags: draft`
- `vault/06-Templates/Daily Note Template.md` — `tags: daily-note`
- `vault/06-Templates/Research Note Template.md` — `tags: research`
- `vault/06-Templates/Weekly Review Template.md` — `tags: weekly-review`
- `vault/06-Templates/Client Brief Template.md` — `tags: client-brief`

**Vault notes with NO frontmatter at all (13 files):**
- `vault/00-Inbox/Book idea fragments.md`
- `vault/00-Inbox/ClearPath async article research links.md`
- `vault/00-Inbox/Meeting notes Sarah 03-15.md`
- `vault/00-Inbox/Podcast rec from Jamie.md`
- `vault/00-Inbox/Quick thought - AI and memory.md`
- `vault/02-Projects/Bloom-Studio/Bloom Brand Voice Notes.md`
- `vault/02-Projects/ClearPath/ClearPath Content Guidelines.md`
- `vault/02-Projects/The-Synthesis/Newsletter Ideas Backlog.md`
- `vault/05-References/Content Calendar March 2026.md`
- `vault/05-References/Freelance Rate Card.md`
- `vault/05-References/Invoice Tracker.md`
- `vault/05-References/Pitch Template.md`
- `vault/05-References/Writing Process Checklist.md`

**Vault notes already using correct array syntax (24 files):** All notes in 01-Daily-Notes, 02-Projects (Bloom, ClearPath, Horizon, The-Synthesis project files), 03-Research, and 04-Drafts.

### VAULT-04: Empty Folders

Both `vault/07-MOCs/` and `vault/08-Published/` are confirmed empty. Neither contains any files (including `.gitkeep`). Both need a `.gitkeep` file added.

### VAULT-05: Date Inconsistencies

**Contradiction 1: Horizon Magazine deadline**
- `vault/02-Projects/Horizon-Magazine/AI Writing Partner - Brief.md` frontmatter: `deadline: 2026-04-04`
- `vault/04-Drafts/Draft - The AI Writing Partner Opening.md` frontmatter: `deadline: 2026-03-28`
- `vault/00-Inbox/Meeting notes Sarah 03-15.md`: "Deadline still April 4 but she said 'soft April 4'"
- `vault/05-References/Content Calendar March 2026.md`: "Horizon deadline moved up from April 4 to March 28"
- `creator-context/CLIENTS.md`: "Due: March 28, 2026"
- `creator-context/PROJECTS.md`: "Due: March 28, 2026" and "Submit March 27 (one day buffer)"
- **Resolution:** Content Calendar explains the narrative — deadline moved from April 4 to March 28. The Brief note (`AI Writing Partner - Brief.md`) was not updated. Fix the Brief's `deadline:` field to `2026-03-28` to match all other sources.

**Contradiction 2: Bloom Studio "Digital Boundaries" series**
- `vault/02-Projects/Bloom-Studio/Digital Boundaries Series - Overview.md` shows:
  - Post 1: "The Myth of Always-On..." — Published Feb 12, 2026 (3x engagement)
  - Post 2: "Screen Rituals..." — Published Feb 26, 2026
  - Post 3: "Notification Detox..." — In draft, first draft done March 10
  - Post 4: "The Intentional Evening..." — Not started
- `creator-context/CLIENTS.md`, `creator-context/PROJECTS.md`, and module 3.5 teaching script all show:
  - Post 1: "The Notification Audit" — published March 5
  - Post 2: "Screen Time Is the Wrong Metric" — published March 12
  - Post 3: "The Case for Boring Phones" — due March 20
  - Post 4: "Building a Digital Sunset Routine" — due March 27
- **Resolution:** The creator-context files and teaching scripts agree with each other. The vault Overview note is wrong on both titles and dates. The vault Overview note must be rewritten to match creator-context/teaching script version. Use March anchor dates as canonical.

**Contradiction 3: ClearPath Async article deadline in frontmatter**
- `vault/02-Projects/ClearPath/Async Communication - Outline.md` frontmatter: `deadline: 2026-03-28`
- `vault/04-Drafts/Draft - Async Communication.md` frontmatter: `deadline: 2026-03-25`
- All other sources (CLIENTS.md, PROJECTS.md, Content Calendar, Daily Notes): March 25
- **Resolution:** Fix `Async Communication - Outline.md` deadline frontmatter from `2026-03-28` to `2026-03-25`.

---

## Code Examples

### Frontmatter array fix pattern
```yaml
# Before (scalar — wrong)
---
tags: daily-note
---

# After (array — correct)
---
tags: [daily-note]
---
```

### Minimal frontmatter to add to notes that have none
```yaml
---
tags: [inbox]
---
```
Tag values by folder (Claude's discretion, suggested):
- `00-Inbox/` notes → `[inbox]`
- `05-References/` notes → `[reference]`
- `02-Projects/` brand/guidelines notes → `[client-work]` + client tag (e.g., `[client-work, bloom]`)

### Wikilink with alias (preserve this format)
```markdown
# Correct — alias preserved
[[AI Writing Partner - Brief|Horizon AI piece]]

# Wrong — alias removed when fixing a link
[[AI Writing Partner - Brief]]
```

### `.gitkeep` file content
Empty file — zero bytes. Create with `Write` tool using empty string content.

---

## State of the Art

| Old Approach | Current Approach | Notes |
|--------------|-----------------|-------|
| Manual wikilink auditing | Script-assisted extraction with grep | Use grep pattern verified in research |
| Scalar YAML tags | Array YAML tags | Obsidian processes both, but array is standard for multi-tag notes |

---

## Validation Architecture

> `nyquist_validation: true` in `.planning/config.json` — this section is included.

### Test Framework

| Property | Value |
|----------|-------|
| Framework | None — this is a content/file audit project, not code |
| Config file | None |
| Quick run command | Manual file inspection |
| Full suite command | Manual file inspection |

This phase has no automated test framework. The "tests" are manual verification steps because the work is editing markdown files in a course vault.

### Phase Requirements → Test Map

| Req ID | Behavior | Test Type | Verification Method | Automatable? |
|--------|----------|-----------|---------------------|--------------|
| VAULT-01 | All teaching script wikilinks resolve | Manual | Run grep extraction, compare against vault note list | Semi — grep command is fast |
| VAULT-02 | All vault-to-vault wikilinks resolve | Manual | Run grep extraction, compare against vault note list | Semi — grep command is fast |
| VAULT-03 | No scalar tags remain in vault or templates | Manual | `grep -rn "^tags:" vault/ --include="*.md"` — visually inspect for non-array lines | Yes |
| VAULT-04 | `.gitkeep` files exist in both empty folders | Manual | `ls -la vault/07-MOCs/ vault/08-Published/` | Yes |
| VAULT-05 | Dates are internally consistent | Manual | Compare deadline fields against creator-context files | Manual only |

### Sampling Rate
- **Per task completion:** Run the relevant grep command to verify the specific fix was applied
- **Phase gate:** Run all verification commands before calling `/gsd:verify-work`

### Wave 0 Gaps

None — no test infrastructure gaps. This phase uses grep-based spot checks rather than an automated test suite. All verification is manual inspection of file contents.

---

## Open Questions

1. **`[[The Notification Audit]]` and `[[Tools for Thought - The Design Philosophy]]` in module 3.5**
   - What we know: These wikilinks appear in the Librarian agent output that module 3.5 generates when processing inbox notes. They are inside the content of notes that Claude writes to the vault during the lesson.
   - What's unclear: Are these intentional references to notes that students should have created in earlier modules, or are they phantom references that the script author assumed would exist?
   - Recommendation: `[[The Notification Audit]]` likely refers to the Bloom Post 1 ("The Notification Audit" per CLIENTS.md); if so, there's no vault note with that name — these should be logged as uncertain and flagged for manual review.

2. **`[[The Synthesis]]` as a wikilink in note content**
   - What we know: Appears inside the content of `GitLab Async Communication Model.md` which module 2.1 writes. Refers to Alex's newsletter, not a vault note.
   - What's unclear: Whether this is intentional (newsletter name used as informal reference) or a phantom link that should point to a real note.
   - Recommendation: Log as intentional — "The Synthesis" is Alex's newsletter name, not a vault note. No fix needed; document in review log's "Intentional Unresolved Links" section.

---

## Sources

### Primary (HIGH confidence)
- Direct file inspection of `/Users/benest/dev/claude-brain/vault/` — all 37 vault notes read
- Direct file inspection of `/Users/benest/dev/claude-brain/lesson-modules/` — all 24 teaching scripts examined
- Direct file inspection of `/Users/benest/dev/claude-brain/creator-context/` — PROFILE.md, CLIENTS.md, PROJECTS.md, STYLE-GUIDE.md
- Direct file inspection of `/Users/benest/dev/claude-brain/.planning/phases/01-vault-integrity/01-CONTEXT.md`
- Direct file inspection of `/Users/benest/dev/claude-brain/.planning/REQUIREMENTS.md`

### Secondary (MEDIUM confidence)
- Python cross-reference scripts run during research to validate wikilink analysis
- grep-based extraction verified against known vault contents

### Tertiary (LOW confidence)
- None

---

## Metadata

**Confidence breakdown:**
- VAULT-01 (script wikilinks): HIGH — all 24 scripts read, complete list extracted and categorized
- VAULT-02 (vault-to-vault wikilinks): HIGH — all 37 vault notes read, zero unresolved found
- VAULT-03 (frontmatter): HIGH — all 37 notes checked with Python; exact file lists provided
- VAULT-04 (gitkeep): HIGH — `ls -la` confirmed both folders empty
- VAULT-05 (dates): HIGH — 3 concrete contradictions found with file-level evidence

**Research date:** 2026-03-20
**Valid until:** N/A — these are file-level findings. They remain valid until the files are edited.
