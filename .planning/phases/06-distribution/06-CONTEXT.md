# Phase 6: Distribution - Context

**Gathered:** 2026-03-21
**Status:** Ready for planning

<domain>
## Phase Boundary

Make the repo publicly releasable — README is accurate and welcoming, LICENSE is present, .gitignore excludes non-essential files, and the clone-to-working-course journey has been verified end-to-end. No new course content or features.

</domain>

<decisions>
## Implementation Decisions

### README polish
- Add a ballpark cost estimate for Claude API usage in plain language (e.g., "The course uses Claude's API, which costs roughly $X–$Y to complete all modules")
- Prerequisites section stays minimal — list Obsidian (free) and Claude Code (requires API key) with links, no version numbers
- Add GitHub badges (license, module count) at the top of README
- Add a screenshot of the Obsidian vault showing notes open — static image, not a GIF
- Add kepano/obsidian-skills to the existing Acknowledgments section (DIST-04 gap)

### .gitignore
- Exclude: .planning/, .DS_Store, .obsidian/workspace.json, node_modules/, .claude/memory/
- Keep visible: lesson-modules/, creator-context/, vault/.obsidian/ (except workspace.json)
- Standard extras: *.swp, .env, Thumbs.db, etc.

### Clone verification
- Two-part verification: scripted structural check THEN manual walkthrough of /start-0-1
- Scripted check: clone to temp directory, verify file structure, check wikilinks resolve, validate slash commands exist
- Manual check: open vault/ in Obsidian, run /start-0-1, confirm it works with no errors or dead ends
- Scope: first module only for v1 (full playtest is v2 requirement EPOL-01)

### License & copyright
- Dual license: MIT for code (slash commands, scripts, hooks, config), CC BY 4.0 for course content (teaching scripts, vault notes, course structure)
- Copyright holder: "benest"
- Copyright year: 2026
- LICENSE file in repo root explains both licenses clearly

### Claude's Discretion
- Exact cost estimate range (will need to estimate based on typical module token usage)
- Screenshot composition and placement in README
- Badge styling and which specific badges to include
- .gitignore completeness (additional entries beyond the decided set)
- Scripted check implementation details

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Distribution requirements
- `.planning/REQUIREMENTS.md` — DIST-01 through DIST-06 define exact success criteria for this phase

### Existing README
- `README.md` — Current README content to polish (already has Quick Start, Course Structure, Requirements, Acknowledgments)

### Prior phase decisions affecting README
- `.planning/phases/03-basb-integration/03-CONTEXT.md` — Acknowledgments placement decision (after Requirements, end of README)

### Course metadata
- `course-structure.json` — Module list, time estimates, total hours (needed for badges and cost estimate)

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- `README.md`: Already well-structured with Quick Start, Course Structure, The Story, Requirements, Acknowledgments sections
- `vault/.obsidian/`: Pre-configured Obsidian settings that ship with the course (app.json, appearance.json, etc.)
- `course-structure.json`: Single source of truth for module metadata — can derive badge counts and cost estimates

### Established Patterns
- Acknowledgments section already credits BASB, Zettelkasten, LYT (Phase 3 work) — just needs kepano/obsidian-skills added
- No .gitignore exists yet — starting fresh

### Integration Points
- LICENSE file referenced by README badges
- .gitignore must not exclude any files needed by the course (slash commands, vault notes, teaching scripts, .obsidian config)
- Clone verification tests the entire repo structure holistically

</code_context>

<specifics>
## Specific Ideas

- Screenshot should show the Obsidian vault with some notes open — gives prospective users a visual of what they'll be working with
- Cost estimate should be concrete and approachable for non-technical users (no jargon about tokens or API pricing tiers)
- Dual license (MIT + CC BY 4.0) is the standard pattern for educational open-source repos — code is freely reusable, course content requires attribution

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 06-distribution*
*Context gathered: 2026-03-21*
