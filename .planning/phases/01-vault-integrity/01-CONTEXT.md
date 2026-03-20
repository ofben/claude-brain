# Phase 1: Vault Integrity - Context

**Gathered:** 2026-03-20
**Status:** Ready for planning

<domain>
## Phase Boundary

Make the vault a reliable ground truth: audit all wikilinks across teaching scripts and vault notes, standardize frontmatter tag format, preserve empty folders via .gitkeep, and ensure dates are internally consistent. No new content is created (except .gitkeep files and frontmatter fixes). Content quality, pacing, and teaching flow are Phase 2 concerns.

</domain>

<decisions>
## Implementation Decisions

### Broken link fix strategy
- When a wikilink points to a non-existent note, rename it to the closest matching vault note IF the match is confident
- When no confident match exists, log the link in a combined review log (`01-REVIEW-LOG.md` in the phase directory) for manual review
- Same approach for both teaching script wikilinks (VAULT-01) and vault-to-vault wikilinks (VAULT-02)
- Preserve existing wikilink display aliases (e.g., `[[Full Name|short name]]`) — they make scripts read naturally

### Plain text note references
- Flag plain-text references to vault notes in teaching scripts (mentions without `[[ ]]`) and log them in the review log
- These are not necessarily broken — but worth reviewing to decide if they should be wikilinks

### Cross-module note name consistency
- Cross-check that note names students are told to create in one module match what later modules expect to find
- Mismatches are logged in the review log for Phase 2 (Content Quality) to fix — Phase 1 identifies but does not fix these

### Review log format
- Single combined file: `.planning/phases/01-vault-integrity/01-REVIEW-LOG.md`
- Sections: Uncertain Links, Plain Text References, Cross-Module Mismatches, Intentional Unresolved Links

### Frontmatter standardization
- Fix all frontmatter `tags:` to array syntax (e.g., `tags: [daily]` not `tags: daily`)
- Scope is tags format ONLY — do not add or require additional frontmatter fields beyond what already exists
- Add minimal frontmatter with tags array to vault notes that currently have no frontmatter at all
- Templates (06-Templates/) also use array syntax — students learn the correct format from the start
- Update teaching scripts that show frontmatter examples to use array syntax (so instruction matches vault reality)

### Intentional unresolved links
- Cross-reference every unresolved vault-to-vault wikilink against all 24 teaching scripts
- If a script tells students to create a note with that name, the unresolved link is intentional — document it in the review log's "Intentional Unresolved Links" section with the source note and creating module
- Verify module ordering: the note containing the unresolved link should appear at or before the module that creates the target note. Log order violations.
- If an unresolved link is not referenced in any teaching script and has no confident match, log it in the review log's "Uncertain" section for manual review

### Claude's Discretion
- Date alignment details (VAULT-05) — use March 2026 as the anchor, fix contradictions using best judgment
- Exact tag values to assign when adding frontmatter to notes that had none
- How to structure the review log sections

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Teaching format
- `.claude/SCRIPT_INSTRUCTIONS.md` — Say/Check/Action format that teaching scripts follow; needed to understand script structure when auditing wikilinks within them

### Course structure
- `course-structure.json` — Module ordering (needed for cross-module note name verification and intentional unresolved link ordering checks)

### Creator context
- `creator-context/PROFILE.md` — Alex Rivera timeline and background (needed for date consistency checks)
- `creator-context/CLIENTS.md` — Client relationships and timelines (needed for date consistency checks)
- `creator-context/PROJECTS.md` — Project timelines (needed for date consistency checks)

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- 38 vault notes across 9 folders — the dataset to audit
- 24 teaching scripts in lesson-modules/ — the other dataset to audit for wikilinks
- 5 templates in 06-Templates/ — need frontmatter fixes
- 4 creator-context files — date consistency reference

### Established Patterns
- Vault notes use YAML frontmatter with `tags: [array]` format (most notes) — this is the target format
- Templates currently use scalar `tags: value` — these need fixing
- Wikilinks use `[[Note Name]]` and `[[Note Name|Display Alias]]` format
- Daily notes follow `YYYY-MM-DD.md` naming with `date:` frontmatter field

### Integration Points
- Teaching scripts reference vault notes by exact wikilink name — any vault renames must update all referencing scripts
- course-structure.json defines module ordering — needed for cross-module consistency checks
- 07-MOCs/ and 08-Published/ are empty folders that need .gitkeep for Git preservation

</code_context>

<specifics>
## Specific Ideas

- Review log should be a useful artifact — not just a dump of issues, but organized so the user can make decisions quickly
- The "rename to match when confident" approach should prioritize preserving the teaching narrative — the link should still make sense in context after renaming

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 01-vault-integrity*
*Context gathered: 2026-03-20*
