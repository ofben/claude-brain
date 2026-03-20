---
phase: 02-content-quality
plan: 01
subsystem: content
tags: [markdown, course-content, teaching-scripts, vault]

# Dependency graph
requires:
  - phase: 02-content-quality
    provides: research findings and locked decisions from CONTEXT.md and RESEARCH.md
provides:
  - Module 2.5 teaching script with Say: placeholders replaced by dynamic instructions
  - Module 3.4 teaching script with correct "AI as Extended Memory" note name
  - course-structure.json with correct totalEstimatedMinutes of 465
  - Vault Draft Post 3 with complete closing paragraph
affects:
  - 02-content-quality (plans 02+: clean baseline for Action block specificity sweep)

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Dynamic instruction pattern: [name the X identified in Step N] for runtime-resolved Say: block content"
    - "Vault pair specificity: Step 4 Pair 3 references actual vault notes by filename"

key-files:
  created:
    - lesson-modules/2-building-the-brain/2.5-knowledge-graph/CLAUDE.md
    - lesson-modules/3-memory-partner/3.4-claude-writes-vault/CLAUDE.md
    - course-structure.json
    - vault/04-Drafts/Draft - Digital Boundaries Post 3.md
  modified: []

key-decisions:
  - "Module 2.5 Pair 3 uses Zettelkasten Method + Newsletter Ideas Backlog — both pre-seeded vault notes, stronger non-obvious connection than daily note + book idea"
  - "Draft Post 3 closing paragraph callbacks 80-120 notification stat, reframes as agency/empowerment, teases Post 4 (Digital Sunset Routine)"
  - "totalEstimatedMinutes fixed to 465 — the individual module estimates are authoritative; the summary total was stale"

patterns-established: []

requirements-completed: [CONT-01, CONT-02, CONT-03, CONT-06]

# Metrics
duration: 2min
completed: 2026-03-20
---

# Phase 2 Plan 01: Content Quality Surgical Fixes Summary

**Four surgical content fixes: Module 2.5 Say: placeholders replaced with dynamic instructions, Module 3.4 renamed to "AI as Extended Memory" throughout, course JSON total corrected to 465 min, Draft Post 3 closing paragraph written**

## Performance

- **Duration:** 2 min
- **Started:** 2026-03-20T22:53:20Z
- **Completed:** 2026-03-20T22:55:28Z
- **Tasks:** 2
- **Files modified:** 4

## Accomplishments
- Module 2.5: Zero Say: block placeholders remain — [Note Name] and [topic summary] replaced with dynamic instruction language; Step 4 Pair 3 replaced with specific Zettelkasten Method + Newsletter Ideas Backlog pair and matching Connection 3 Say: block
- Module 3.4: All four occurrences of "AI as External Memory" corrected to "AI as Extended Memory" — file path, frontmatter topic, note heading, and Success Criteria all consistent
- course-structure.json: totalEstimatedMinutes updated from 450 to 465 (verified sum of all 24 individual module estimates)
- Draft Post 3: [TODO: closing paragraph] replaced with ~130-word closing that callbacks opening stat, reframes as empowerment, teases Post 4 (Digital Sunset Routine) — Bloom Studio voice throughout

## Task Commits

Each task was committed atomically:

1. **Task 1: Fix Module 2.5 placeholders and Module 3.4 name mismatch** - `ac11b21` (fix)
2. **Task 2: Fix course-structure.json total and write Draft Post 3 closing paragraph** - `18eb59d` (fix)

**Plan metadata:** TBD (docs: complete plan)

## Files Created/Modified
- `lesson-modules/2-building-the-brain/2.5-knowledge-graph/CLAUDE.md` - Three Say: block fixes: dynamic orphan instruction, dynamic topic summary, Pair 3 replaced with vault-specific pair; matching Connection 3 Say: block added
- `lesson-modules/3-memory-partner/3.4-claude-writes-vault/CLAUDE.md` - Four "External Memory" → "Extended Memory" replacements: file path, frontmatter, heading, Success Criteria
- `course-structure.json` - totalEstimatedMinutes: 450 → 465
- `vault/04-Drafts/Draft - Digital Boundaries Post 3.md` - [TODO: closing paragraph] replaced with real closing paragraph

## Decisions Made
- Used "Zettelkasten Method" + "Newsletter Ideas Backlog" for Module 2.5 Step 4 Pair 3 — both are pre-seeded vault notes, confirmed to exist; the connection (academic PKM framework → creator newsletter audience) is more genuinely non-obvious than daily note + book idea
- Closing paragraph for Draft Post 3 follows Bloom Studio brand voice: empowering not prescriptive, evidence-informed, avoids fear-based framing; "agency" framing for the notification stat reframe

## Deviations from Plan

None — plan executed exactly as written.

## Issues Encountered

None.

## User Setup Required

None — no external service configuration required.

## Next Phase Readiness
- Clean baseline established for Phase 02 Plan 02 sweep (Action block specificity audit across all 24 scripts)
- All four CONT-01/02/03/06 verification commands pass cleanly
- CONT-04 and CONT-05 remain for subsequent plans in this phase

## Verification Results

All four requirement verifications pass:

| Req | Command | Expected | Result |
|-----|---------|----------|--------|
| CONT-01 | `grep -n "\[Note Name\]\|\[topic summary\]\|\[Third pair\]" ...2.5.../CLAUDE.md` | 0 results | PASS — no matches |
| CONT-02 | `grep -rn "TODO" vault/` | 2 results (intentional) | PASS — Meeting notes + Writing Process Checklist |
| CONT-03 | `python3 -c "...print(d['totalEstimatedMinutes'])"` | 465 | PASS — 465 |
| CONT-06 | `grep -n "External Memory" ...3.4.../CLAUDE.md` | 0 results | PASS — no matches |

## Self-Check: PASSED

---
*Phase: 02-content-quality*
*Completed: 2026-03-20*
