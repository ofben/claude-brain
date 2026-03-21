---
phase: 05-utility-features
plan: 02
subsystem: teaching-scripts
tags: [hooks, bash, shell-script, claude-code-api, stdin-json]

# Dependency graph
requires:
  - phase: 04-skills-integration
    provides: Level 4 teaching scripts with initial hook implementation in Module 4.2

provides:
  - Corrected conceptual hook explanation in Module 4.1 (matchers contain command lists)
  - Corrected hands-on hook build in Module 4.2 (stdin JSON parsing, nested hooks array)
  - Removal of non-existent CLAUDE_FILE_PATH env var from all teaching content
  - Working add-frontmatter.sh script syntax that students can follow to produce a functional hook

affects:
  - lesson-modules/4-automation (Modules 4.1 and 4.2 directly fixed)
  - UTIL-05 requirement (hook script correctness)

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Hook scripts receive data via stdin JSON, not environment variables"
    - "Correct settings.local.json format: nested hooks array inside each matcher entry"
    - "python3 -c for JSON parsing in bash scripts (reliable on macOS without requiring jq)"

key-files:
  created: []
  modified:
    - lesson-modules/4-automation/4.1-intro-hooks/CLAUDE.md
    - lesson-modules/4-automation/4.2-auto-organize-hook/CLAUDE.md

key-decisions:
  - "Conceptual framing in 4.1 (event/matcher/command) preserved — only added bridging notes about nested list structure"
  - "Step 6 bridging sentence uses plain language ('small list') not JSON terminology"
  - "python3 chosen for stdin JSON parsing as most reliable on macOS without requiring jq"
  - "CLAUDE_FILE_PATH fully removed — replaced with accurate description of stdin JSON model"
  - "Step 4 settings.json Action block notes to preserve existing permissions, not overwrite them"

patterns-established:
  - "Hook scripts: always read from stdin JSON, never from environment variables"
  - "Hook matchers: always use nested hooks array with type+command, never flat command property"

requirements-completed: [UTIL-05]

# Metrics
duration: 2min
completed: 2026-03-21
---

# Phase 5 Plan 02: Fix Hook API Syntax in Modules 4.1 and 4.2 Summary

**Corrected Claude Code hook API syntax across two teaching scripts: stdin JSON parsing replaces non-existent CLAUDE_FILE_PATH env var, and nested hooks array replaces flat command format**

## Performance

- **Duration:** 2 min
- **Started:** 2026-03-21T10:01:14Z
- **Completed:** 2026-03-21T10:03:00Z
- **Tasks:** 2
- **Files modified:** 2

## Accomplishments
- Module 4.1 Step 4 now correctly notes matchers can have one or more commands attached
- Module 4.1 Step 6 adds bridging sentence explaining matcher-as-list concept in plain language
- Module 4.2 shell script uses `INPUT=$(cat)` + `python3` to parse `tool_input.file_path` from stdin JSON
- Module 4.2 settings.json format updated to nested `"hooks": [{"type": "command", ...}]` structure
- CLAUDE_FILE_PATH fully removed from both files (0 occurrences)
- Important Notes updated: hooks receive JSON via stdin, not environment variables

## Task Commits

Each task was committed atomically:

1. **Task 1: Fix Module 4.1 conceptual hook explanation** - `a7da8f3` (feat)
2. **Task 2: Fix Module 4.2 hook script and settings format** - `b7f420a` (feat)

**Plan metadata:** (docs commit — see below)

## Files Created/Modified
- `lesson-modules/4-automation/4.1-intro-hooks/CLAUDE.md` - Added bridging text in Steps 4 and 6 about nested command lists
- `lesson-modules/4-automation/4.2-auto-organize-hook/CLAUDE.md` - Fixed script (stdin JSON), settings format (nested hooks array), Say blocks, Important Notes

## Decisions Made
- Conceptual framing in Module 4.1 preserved — the "three parts" (event/matcher/command) mental model is still accurate; only added notes about nested structure without using JSON terminology
- Step 6 bridging sentence uses "small list" instead of "nested array" — keeps non-technical language consistent with SCRIPT_INSTRUCTIONS.md guidelines
- Module 4.2 Step 4 Action block instructs to preserve existing permissions when adding hooks section — avoids overwriting student's existing settings
- python3 used for stdin JSON parsing (not jq) per RESEARCH.md recommendation: more reliably available on macOS

## Deviations from Plan

None - plan executed exactly as written.

## Issues Encountered

None.

## User Setup Required

None - no external service configuration required.

## Next Phase Readiness
- Both Module 4.1 and 4.2 teaching scripts now accurately reflect the Claude Code hooks API
- A student following Module 4.2 will produce a working add-frontmatter.sh that correctly reads from stdin JSON
- UTIL-05 requirement satisfied
- STATE.md research flag "Verify current Claude Code hooks syntax" can be resolved
- Phase 5 Plan 01 (utility slash commands) is independent and can proceed

---
*Phase: 05-utility-features*
*Completed: 2026-03-21*

## Self-Check: PASSED

- FOUND: lesson-modules/4-automation/4.1-intro-hooks/CLAUDE.md
- FOUND: lesson-modules/4-automation/4.2-auto-organize-hook/CLAUDE.md
- FOUND: .planning/phases/05-utility-features/05-02-SUMMARY.md
- FOUND: commit a7da8f3 (Task 1)
- FOUND: commit b7f420a (Task 2)
