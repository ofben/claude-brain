# Phase 2: Content Quality - Context

**Gathered:** 2026-03-20
**Status:** Ready for planning

<domain>
## Phase Boundary

Review all 24 teaching scripts for format, accuracy, and completeness. Fix known issues from Phase 1 audit (cross-module name mismatch, placeholder text). Standardize navigation, script headers, and section patterns. Verify vault paths. No new content or features are added — this is polish of existing material.

</domain>

<decisions>
## Implementation Decisions

### Module 2.5 placeholder handling
- `[Note name]` patterns in "Present it like this:" blocks are acceptable template syntax — Claude fills these at runtime. NOT considered placeholder text for CONT-01.
- `[Note Name]` in Say: blocks must be rewritten as dynamic instructions (e.g., "name the first orphan from Step 2" instead of "[Note Name]")
- Step 4 Pair 3 (`[Third pair based on actual vault content]`) must be replaced with a specific cross-domain pair from the vault — the script already suggests daily notes + book idea as an option
- CONT-01 success criteria applies to Say: block placeholders only, not "Present it like this:" formatting templates

### Script format rigor
- Review level: structural compliance + consistency (not full quality/pacing review)
- Check against SCRIPT_INSTRUCTIONS.md as-is — do NOT create a new canonical template
- Add missing sections when most other scripts have them (e.g., Common Student Questions, Success Criteria, Important Notes for Claude)
- Standardize script headers: every script should follow Title → "Teaching Script" note → "Before starting" reminder → Your Role → Learning Objectives → Teaching Flow

### Action block specificity
- Tighten vague Action: blocks — add specific file paths, expected content, or output format so Claude's behavior is predictable across runs
- All Action: blocks that write/modify files must specify the exact file path and content structure
- Analysis/search Action: blocks should specify what to search for and how to present results

### Navigation & module endings
- Every module must end with the explicit `/start-X-X` command for the next module — no vague "in the next module..." without the command
- Only the next module's command at the end — no self-referencing /start command at the top
- Module 4.6 (final module) ends the course — no next command needed, graduation moment instead

### Level-end transitions
- Ensure modules 0.2, 1.6, 2.5, 3.5, and 4.6 each have a celebration/summary moment
- Each level-end module should have explicit navigation to the next level's first module
- Pattern: summarize what was learned in the level, preview what's coming, provide the /start command

### Cross-module name mismatch fix
- Fix module 3.4 to use "AI as Extended Memory" (matching all other modules: 2.1, 2.2, 2.3, 3.5)
- "Extended" is the established name — module 2.1 creates it first, 4+ modules reference it

### Plain text note references
- Leave as plain text — Phase 1 assessed all 9 as LOW/MAYBE. Wikilinks would look awkward in option lists, bold headers, and scripted dialogue

### Time estimate mismatch
- Update course-structure.json `totalEstimatedMinutes` to 465 (matching the actual sum of individual module estimates)
- Individual module estimates are more granular and likely accurate — fix the total, not the parts

### Vault path verification
- Systematic automated check: extract every vault file path and note name from all 24 scripts, verify each exists in the vault
- Phase 1 covered wikilinks — this phase covers backtick paths (`vault/03-Research/...`), quoted filenames, and any other path references
- Log mismatches for correction

### Vault TODO markers
- Claude's Discretion: assess each TODO in vault notes — remove if it breaks immersion, keep if it's realistic in-world content (e.g., a draft with [TODO] feels authentic for a writer's vault)

### Claude's Discretion
- Exact wording of rewritten dynamic instructions in Module 2.5 Say: blocks
- Which specific vault notes to use for Module 2.5 Step 4 Pair 3
- How to handle TODO markers in vault notes (immersion vs. polish judgment call)
- Specific content for missing sections added to scripts (Common Questions, Success Criteria, etc.)
- Exact standardization of script headers where minor variation exists

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Teaching format
- `.claude/SCRIPT_INSTRUCTIONS.md` — Say/Check/Action format definition; the standard all 24 scripts are checked against
- `course-structure.json` — Module ordering, time estimates, file paths; source of truth for navigation verification and CONT-03

### Phase 1 artifacts
- `.planning/phases/01-vault-integrity/01-REVIEW-LOG.md` — Cross-module mismatches, plain text references, uncertain links deferred to Phase 2
- `.planning/phases/01-vault-integrity/01-CONTEXT.md` — Phase 1 decisions (frontmatter scope, link fix strategy) that constrain Phase 2 work

### Creator context
- `creator-context/CLIENTS.md` — Client names and project details referenced in teaching scripts
- `creator-context/PROFILE.md` — Alex Rivera background referenced throughout the course

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- 24 teaching scripts in `lesson-modules/` — all have Say/Check/Action blocks (521 total occurrences across all files)
- Phase 1 review log — contains categorized findings (9 plain text refs, 1 cross-module mismatch, 7 intentional unresolved links) ready for Phase 2 action
- course-structure.json — authoritative module ordering for navigation verification

### Established Patterns
- Say/Check/Action block format is universal — all 24 scripts follow it
- "Present it like this:" blocks use `[bracket]` template variables for dynamic content — this is the accepted pattern
- Module endings vary between explicit `/start-X-X` commands and vague references — standardization needed
- Script headers vary: most have Title → Teaching Script → Before starting → Your Role → Learning Objectives, but some skip sections

### Integration Points
- Module 3.4 writes `AI as External Memory` into vault — must be updated to `AI as Extended Memory` to match established name
- Module 2.5 Step 4 Pair 3 needs a specific third cross-domain pair from vault notes
- course-structure.json `totalEstimatedMinutes` must be updated from 450 to 465

</code_context>

<specifics>
## Specific Ideas

- The "AI as Extended/External Memory" fix is surgical — just change the note name in module 3.4's Action blocks and any Say blocks that reference it
- Module 2.5 placeholder rewrite should use the pattern "name the [X] identified in Step [N]" to keep scripts dynamic but unambiguous
- For Step 4 Pair 3, the script already suggests "a daily note reference and the book idea" — this is a strong candidate to formalize

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 02-content-quality*
*Context gathered: 2026-03-20*
