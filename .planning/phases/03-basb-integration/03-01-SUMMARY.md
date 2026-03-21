---
phase: 03-basb-integration
plan: 01
subsystem: content
tags: [teaching-scripts, pkm, basb, attribution, second-brain]

# Dependency graph
requires:
  - phase: 02-content-quality
    provides: polished teaching scripts that are now receiving framework attribution
provides:
  - "BASB attribution (Tiago Forte) woven into Module 1.1 Step 1"
  - "CODE method (Capture, Organize, Distill, Express) introduced in Module 2.1 Step 2"
  - "PARA/Zettelkasten/LYT multi-framework framing in Module 2.1 Step 2"
  - "Narrative callback phrase linking Module 1.1 to Module 2.1"
affects:
  - "03-basb-integration plans 02 and 03 (progressive summarization and README acknowledgments)"
  - "Any future module audits — Module 1.1 and 2.1 now establish the PKM lineage baseline"

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Attribution-inline pattern: weave framework credits inside existing Say blocks, never as separate callout boxes or headings"
    - "Callback pattern: downstream modules reference upstream content with 'Remember X from Module Y.Z?' phrasing"

key-files:
  created: []
  modified:
    - lesson-modules/1-foundations/1.1-welcome/CLAUDE.md
    - lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md

key-decisions:
  - "Used exact CONTEXT.md wording for Module 1.1 attribution: 'This idea was popularized by Tiago Forte in his book Building a Second Brain. We're going to take those ideas and show how AI changes the game — because the version you're building here isn't just a notebook. It's a knowledge partner.'"
  - "Used exact RESEARCH.md suggested wording for Module 2.1 CODE callback and multi-framework paragraph — all required strings present (PARA is one popular system, LYT — Linking Your Thinking by Nick Milo, Our course draws from all three)"
  - "Insertion in Module 2.1 placed between Zettelkasten intro and existing note-type definitions — preserves flow from concept introduction to concrete examples"

patterns-established:
  - "Inline attribution pattern: attribution sentences go inside existing Say blocks without creating new block types"
  - "Cross-module callback pattern: 'Remember [concept] from Module X.X?' bridges related modules"

requirements-completed: [BASB-01, BASB-02, BASB-04, BASB-06]

# Metrics
duration: 1min
completed: 2026-03-21
---

# Phase 3 Plan 01: BASB Integration — Module 1.1 and 2.1 Summary

**BASB attribution (Tiago Forte) woven into Module 1.1 Step 1 and CODE/PARA/Zettelkasten/LYT framework framing added to Module 2.1 Step 2 with cross-module callback**

## Performance

- **Duration:** ~1 min
- **Started:** 2026-03-21T02:36:20Z
- **Completed:** 2026-03-21T02:37:47Z
- **Tasks:** 2
- **Files modified:** 2

## Accomplishments
- Module 1.1 Step 1 now credits Tiago Forte and Building a Second Brain with AI positioning ("knowledge partner"), woven naturally after the "second brain" concept is defined
- Module 2.1 Step 2 now introduces Forte's CODE workflow (Capture, Organize, Distill, Express), maps it to the three note types, and frames the course as drawing from PARA, Zettelkasten, and LYT
- Narrative thread established: a student reading Module 1.1 then Module 2.1 encounters "remember Building a Second Brain from Module 1.1?" as a natural callback
- PARA correctly deferred to Module 2.1 only — does not appear in Module 1.1 (per locked decision in CONTEXT.md)

## Task Commits

Each task was committed atomically:

1. **Task 1: Weave BASB attribution into Module 1.1 Step 1** - `e67868e` (feat)
2. **Task 2: Add CODE method and multi-framework framing to Module 2.1 Step 2** - `8888a4c` (feat)

**Plan metadata:** (docs commit follows)

## Files Created/Modified
- `lesson-modules/1-foundations/1.1-welcome/CLAUDE.md` - Step 1 Say block extended with Tiago Forte / BASB attribution and AI positioning
- `lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md` - Step 2 Say block extended with CODE callback paragraph and PARA/Zettelkasten/LYT framing paragraph

## Decisions Made
- Used CONTEXT.md locked wording exactly for Module 1.1 — no discretionary changes to the attribution sentence
- Used RESEARCH.md example wording for Module 2.1 CODE callback and framework paragraph — exact strings match all acceptance criteria
- Insertion in Module 2.1 placed immediately after Zettelkasten intro paragraph and before "Here are the three types:" transition line — preserves the concept-to-examples flow

## Deviations from Plan

None — plan executed exactly as written.

## Issues Encountered

None. Both teaching scripts had clear, unambiguous insertion points. Say/Check/Action block structure preserved in both files.

## User Setup Required

None - no external service configuration required.

## Self-Check: PASSED

- lesson-modules/1-foundations/1.1-welcome/CLAUDE.md: FOUND
- lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md: FOUND
- .planning/phases/03-basb-integration/03-01-SUMMARY.md: FOUND
- Commit e67868e: FOUND
- Commit 8888a4c: FOUND

## Next Phase Readiness

- Module 1.1 and 2.1 attribution complete — ready for Plan 02 (Module 2.4 progressive summarization attribution + AI callouts)
- Plan 03 (README acknowledgments paragraph) can also proceed independently
- No blockers

---
*Phase: 03-basb-integration*
*Completed: 2026-03-21*
