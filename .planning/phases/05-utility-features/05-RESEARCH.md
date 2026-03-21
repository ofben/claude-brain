# Phase 5: Utility Features - Research

**Researched:** 2026-03-21
**Domain:** Claude Code hooks API, slash command file format, shell scripting for hook scripts
**Confidence:** HIGH (hooks API verified against official docs; command format verified against existing codebase)

---

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions
- Pre-commit the 4 slash commands (/daily, /weekly-review, /process-inbox, /project-brief) to `.claude/commands/` so they exist on clone
- Do NOT pre-commit add-frontmatter.sh — leave it to Module 4.2's "build from scratch" teaching flow
- Phase 5's UTIL-05 scope for add-frontmatter.sh: verify hook syntax correctness, not create the file
- Module 4.6 shifts from "build from scratch" to "explore and customize" — commands already exist, the lesson opens them, explains how they work, and guides the student to customize one
- Commands hard-code content that matches the vault templates exactly (Daily Note Template.md, Weekly Review Template.md, Client Brief Template.md)
- Commands do NOT read template files at runtime — they contain matching inline content
- /process-inbox has no vault template; uses Module 4.6's current triage workflow format as-is
- /project-brief aligns with Client Brief Template.md structure
- Commands are generic/adaptable — no Alex Rivera-specific client references; use generic language ("your projects", "your clients")
- Edge case handling: basic (check for existing notes, handle empty states) but not production-grade
- Research actual Claude Code hook API syntax and verify against what Modules 4.1 and 4.2 currently teach
- Fix both Module 4.1 (conceptual intro) and Module 4.2 (hands-on build) if syntax differs from reality
- Hook script must use array syntax for frontmatter tags: `tags: []` / `tags: [created-by-claude]`
- Resolves STATE.md research flag: "Verify current Claude Code hooks (PostToolUse/PreToolUse) syntax against Anthropic docs"

### Claude's Discretion
- Exact wording of Module 4.6's revised teaching narrative
- How to structure the "explore and customize" flow (which command to customize, what customization to suggest)
- Level of detail in hook API verification (how deep to research)
- Exact command file content within the constraints above (match templates, generic, teaching quality)

### Deferred Ideas (OUT OF SCOPE)
- None — discussion stayed within phase scope
</user_constraints>

---

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|-----------------|
| UTIL-01 | /daily slash command pre-built and ready to use | Command file format verified (YAML frontmatter + plain-English instructions); vault template sections confirmed |
| UTIL-02 | /weekly-review slash command pre-built and ready to use | Weekly Review Template.md sections confirmed; weekly-digest skill shows proven pattern for how to structure synthesis logic |
| UTIL-03 | /process-inbox slash command pre-built and ready to use | No vault template; Module 4.6 current triage workflow format is the reference; folder structure verified |
| UTIL-04 | /project-brief slash command pre-built and ready to use | Client Brief Template.md sections confirmed; vault project folder structure verified |
| UTIL-05 | add-frontmatter.sh hook script exists at .claude/scripts/ and works as documented in Level 4 | CRITICAL: Current Modules 4.1 and 4.2 contain incorrect hook API syntax — see Hook Syntax Findings section |
</phase_requirements>

---

## Summary

Phase 5 has two distinct workstreams: (1) pre-building four utility slash commands and (2) fixing incorrectly documented Claude Code hook syntax across two teaching scripts plus updating Module 4.6's narrative.

The slash command work is straightforward. The command file format is well-established in the existing 25 commands — YAML frontmatter with a `description` field followed by plain-English instructions. All four vault templates have been read and confirmed. The existing Module 4.6 teaching script already contains draft versions of all four command files; the task is to genericize them (remove Alex Rivera-specific client references) and align the template sections with the actual vault template content.

The hook syntax work is the more technically critical workstream. Research against the official Claude Code documentation reveals that the hook configuration format taught in Modules 4.1 and 4.2 is incorrect in one significant way: the settings.json hook structure requires a nested `hooks` array inside each matcher entry (e.g., `"hooks": [{"type": "command", "command": "..."}]`), but the teaching script shows a flat `"command"` property directly on the matcher object. Additionally, the `CLAUDE_FILE_PATH` environment variable used in the add-frontmatter.sh script does not exist in the Claude Code API — hook scripts receive data via stdin as JSON, not via that named environment variable. The file path is available as `tool_input.file_path` in the stdin JSON payload.

**Primary recommendation:** Fix hook syntax in Modules 4.1 and 4.2 before the commands work is finalized, since the hook script must actually work for UTIL-05. Pre-build the four commands as genericized versions of the existing Module 4.6 draft content.

---

## Standard Stack

### Core
| Component | Version | Purpose | Why Standard |
|-----------|---------|---------|--------------|
| Claude Code command files | Current | Slash command format: YAML frontmatter + plain-English instructions | Established pattern in all 25 existing commands |
| `.claude/settings.local.json` | Current | Hook configuration storage | Where Claude Code reads hook settings per project |
| Bash shell script | POSIX bash | add-frontmatter.sh hook runner | Only scripting environment available in Claude Code hook execution |

### Supporting
| Component | Version | Purpose | When to Use |
|-----------|---------|---------|-------------|
| stdin JSON parsing | jq or python3 | Read hook input in shell scripts | Required to get file_path from hook payload |
| `$CLAUDE_PROJECT_DIR` | Current | Get absolute project path in hook scripts | Use to construct absolute file paths from relative ones |

### No External Libraries
This phase requires no npm packages, no new dependencies. Everything is file editing and shell scripting.

---

## Architecture Patterns

### Established Command File Pattern
All 25 existing commands follow this exact format:

```markdown
---
description: "Brief description of what the command does"
---

Plain-English instruction paragraph or numbered steps.
Reference vault paths as `vault/folder/note.md`.
```

The utility commands should follow this same pattern — not code, not complex logic, just clear step-by-step prose that Claude will execute.

### Vault Folder Structure (confirmed)
```
vault/
├── 00-Inbox/          # Unprocessed captures
├── 01-Daily-Notes/    # Daily notes and weekly reviews
├── 02-Projects/       # Client/project folders
├── 03-Research/       # Research notes
├── 04-Drafts/         # Work-in-progress drafts
├── 05-References/     # Reference material
├── 06-Templates/      # Templates (not modified by commands)
├── 07-MOCs/           # Maps of Content
└── 08-Published/      # Completed/published work
```

### Vault Template Sections (confirmed by reading files)

**Daily Note Template.md** (`vault/06-Templates/Daily Note Template.md`):
- Frontmatter: `date`, `tags: [daily-note]`
- Sections: `## What I Did Today`, `## Ideas and Observations`, `## Tomorrow's Priorities`

**Weekly Review Template.md** (`vault/06-Templates/Weekly Review Template.md`):
- Frontmatter: `week`, `date`, `tags: [weekly-review]`
- Sections: `## What Got Done`, `## What Didn't Get Done`, `## Key Insights This Week`, `## Next Week Priorities`, `## Open Questions`

**Client Brief Template.md** (`vault/06-Templates/Client Brief Template.md`):
- Frontmatter: `client`, `project`, `deadline`, `status: not-started`, `wordcount`, `tags: [client-brief]`
- Sections: `## Assignment`, `## Angle`, `## Key Points to Cover`, `## Sources and Research`, `## Notes`

### Pattern: Generic Language in Commands
The locked decision requires no Alex Rivera client names in commands. The current Module 4.6 draft uses "Horizon Magazine, Bloom Studio, ClearPath, The Synthesis" throughout. These must all become generic language:
- "your projects" not specific client names
- "your project folders" not `vault/02-Projects/[client folder]/`
- Check `vault/02-Projects/` for all project folders rather than named ones

---

## CRITICAL: Hook Syntax Findings

This section documents the discrepancy between what Modules 4.1/4.2 currently teach and the actual Claude Code API.

### What Module 4.2 Currently Teaches (INCORRECT)

The current settings.local.json example in Module 4.2 Step 4 uses this format:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write",
        "command": ".claude/scripts/add-frontmatter.sh"
      }
    ]
  }
}
```

This is **not the correct format**. The `"command"` property cannot sit directly on the matcher object.

### Actual Claude Code Hook Format (CORRECT)
Source: Official Claude Code documentation (code.claude.com/docs/en/hooks)

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write",
        "hooks": [
          {
            "type": "command",
            "command": ".claude/scripts/add-frontmatter.sh"
          }
        ]
      }
    ]
  }
}
```

Key structural difference: Each matcher entry contains a `"hooks"` array. Each item in that array has a `"type"` field (e.g., `"command"`) plus the type-specific fields (`"command"`, `"url"`, `"prompt"`, etc.).

### What Module 4.2 Currently Teaches for the Shell Script (INCORRECT)

The current add-frontmatter.sh draft uses:

```bash
FILE_PATH="$CLAUDE_FILE_PATH"
```

`CLAUDE_FILE_PATH` **does not exist** as an environment variable in the Claude Code hook API.

### How File Path Actually Reaches a Hook Script (CORRECT)

Hook scripts receive their input via **stdin as JSON**. For a PostToolUse Write event, the stdin payload is:

```json
{
  "session_id": "abc123",
  "hook_event_name": "PostToolUse",
  "tool_name": "Write",
  "tool_input": {
    "file_path": "/absolute/path/to/file.txt",
    "content": "file content"
  },
  "tool_response": {
    "filePath": "/absolute/path/to/file.txt",
    "success": true
  }
}
```

To extract the file path in bash, the script needs to parse stdin JSON:

```bash
#!/bin/bash
# Read the JSON payload from stdin
INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('tool_input',{}).get('file_path',''))" 2>/dev/null)
```

Or using `jq` if available (not guaranteed on all systems). `python3` is more reliably available on macOS.

### Environment Variables That DO Exist

| Variable | Description |
|----------|-------------|
| `$CLAUDE_PROJECT_DIR` | Absolute path to the project root |
| `$CLAUDE_CODE_REMOTE` | Set to `"true"` in remote web environments |
| `$CLAUDE_ENV_FILE` | SessionStart only: file path for persisting env vars |

### Exit Code Behavior

| Exit Code | Meaning |
|-----------|---------|
| 0 | Success — action proceeds |
| 2 | Blocking error — stderr shown to user and action blocked |
| Other | Non-blocking error — stderr shown in verbose mode only |

For the frontmatter script, exit 0 always (non-blocking) — the script should never stop Claude from writing a note.

### What Module 4.1 Needs to Fix

Module 4.1 is conceptual-only (no code created). It teaches the three parts of a hook: event, matcher, command. This remains accurate at a conceptual level. However, Step 6 "A Simple Example" describes a hook as having a `matcher` and a `command` — this mental model should be updated to reflect that the actual configuration has a `matcher` and a `hooks` array. The conceptual "three parts" framing can stay (event, matcher, command); the example format just needs to reflect reality.

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| JSON parsing in bash | Custom string parsing with sed/awk | `python3 -c "import json,sys..."` | String parsing is fragile with paths containing spaces or special characters |
| Command file format | Custom format | Existing YAML frontmatter + prose pattern | Already established and Claude parses it reliably |
| Weekly review logic | New synthesis approach | Adapt Module 4.6's existing draft | Draft already tested conceptually; just needs genericization |

---

## Common Pitfalls

### Pitfall 1: Referencing CLAUDE_FILE_PATH in the Hook Script
**What goes wrong:** Script runs but `FILE_PATH` is empty — the vault filter check `[[ ! "$FILE_PATH" == */vault/*.md ]]` is always true and script exits without doing anything.
**Why it happens:** `CLAUDE_FILE_PATH` is not a real Claude Code env var; it was a placeholder/guess in the original draft.
**How to avoid:** Parse the file path from stdin JSON. Use `python3` for reliable JSON parsing without requiring `jq`.

### Pitfall 2: Using Flat Hook Format Without the Nested hooks Array
**What goes wrong:** Claude Code silently ignores the hook or throws a parse error on the settings file.
**Why it happens:** The simplified format in Module 4.2 was plausible-looking but not the actual schema.
**How to avoid:** Always use the nested structure: `{"matcher": "Write", "hooks": [{"type": "command", "command": "..."}]}`.

### Pitfall 3: Alex Rivera Client References in Pre-Built Commands
**What goes wrong:** A student not named Alex Rivera runs `/project-brief` and Claude asks about "Horizon Magazine, Bloom Studio, or ClearPath" — which don't exist in their vault.
**Why it happens:** Module 4.6 was originally written for use in-lesson where the student IS Alex Rivera.
**How to avoid:** Replace all client name references with generic language in the pre-committed versions.

### Pitfall 4: Daily Command Section Mismatch with Template
**What goes wrong:** `/daily` creates a note with different sections than `Daily Note Template.md`, confusing students who compare them.
**Why it happens:** The existing Module 4.6 draft uses slightly different section names than the actual template.
**How to avoid:** Match exactly: `## What I Did Today`, `## Ideas and Observations`, `## Tomorrow's Priorities` (not "What I did", "Observations", "Ideas", "Tomorrow" as in the current draft).

### Pitfall 5: Weekly Review Tags Don't Match Template
**What goes wrong:** `/weekly-review` creates notes with `tags: [weekly-review, reflection]` and `type: synthesis` but the vault template uses only `tags: [weekly-review]`.
**Why it happens:** Module 4.6 draft added extra frontmatter fields not in the template.
**How to avoid:** Match the template: `week`, `date`, `tags: [weekly-review]`. No `type` field.

---

## Code Examples

### Correct Hook Configuration Format
Source: Official Claude Code documentation (code.claude.com/docs/en/hooks)

```json
{
  "permissions": {
    "allow": [
      "WebFetch(domain:api.github.com)",
      "WebFetch(domain:raw.githubusercontent.com)",
      "Bash(curl:*)"
    ]
  },
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write",
        "hooks": [
          {
            "type": "command",
            "command": ".claude/scripts/add-frontmatter.sh"
          }
        ]
      }
    ]
  }
}
```

### Correct Hook Script Skeleton (Reading File Path from Stdin)
Source: Claude Code docs + bash best practices

```bash
#!/bin/bash

# Auto-Organize Hook: Add frontmatter to new vault notes
# Receives JSON input via stdin from Claude Code hook system.

# Parse file path from stdin JSON payload
INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | python3 -c "
import sys, json
data = json.load(sys.stdin)
print(data.get('tool_input', {}).get('file_path', ''))
" 2>/dev/null)

# Only process markdown files in the vault folder
if [[ ! "$FILE_PATH" == */vault/*.md ]]; then
  exit 0
fi

# Check if the file already has frontmatter (starts with ---)
FIRST_LINE=$(head -n 1 "$FILE_PATH" 2>/dev/null)
if [[ "$FIRST_LINE" == "---" ]]; then
  exit 0
fi

# Generate a title from the filename
FILENAME=$(basename "$FILE_PATH" .md)
TODAY=$(date +%Y-%m-%d)

# Create frontmatter and prepend it to the file
FRONTMATTER="---
title: \"$FILENAME\"
date: $TODAY
tags: []
---

"

TEMP_FILE=$(mktemp)
printf '%s' "$FRONTMATTER" > "$TEMP_FILE"
cat "$FILE_PATH" >> "$TEMP_FILE"
mv "$TEMP_FILE" "$FILE_PATH"
```

Note: `echo "$FRONTMATTER" > "$TEMP_FILE"` in the original draft adds a trailing newline via echo. Using `printf '%s'` is more precise. Either works for this use case but `printf` is more predictable.

### Daily Command File (Genericized, Template-Aligned)
Source: Module 4.6 existing draft + vault template verification

```markdown
---
description: "Create today's daily note with proper template and frontmatter"
---

Create a new daily note for today in the vault. Follow these steps:

1. Get today's date in YYYY-MM-DD format.
2. Check if a daily note already exists at `vault/01-Daily-Notes/[today's date].md`.
   - If it exists, let the user know and show its contents instead of creating a duplicate.
3. If it doesn't exist, create the note at `vault/01-Daily-Notes/[today's date].md` with this format:

---
date: [today's date]
tags: [daily-note]
---

# [today's date]

## What I Did Today


## Ideas and Observations


## Tomorrow's Priorities


4. Tell the user their daily note is ready and they can open it in Obsidian.
5. Mention any helpful context: are there notes in the Inbox that have piled up? Are there any notes from yesterday worth referencing?
```

### Weekly Review Command File (Genericized, Template-Aligned)
Source: Module 4.6 existing draft + vault template verification

```markdown
---
description: "Generate a weekly review by synthesizing this week's daily notes"
---

Perform a weekly review. Follow these steps:

1. Determine the current week (Monday through Sunday, or the last 7 days).
2. Find all daily notes in `vault/01-Daily-Notes/` from this period.
3. Read each daily note carefully.
4. Create a weekly review note at `vault/01-Daily-Notes/Weekly Review - [start date] to [end date].md` with this format:

---
week: [start date] to [end date]
date: [today's date]
tags: [weekly-review]
---

# Weekly Review — [start date] to [end date]

## What Got Done
[Things completed or meaningfully advanced]

## What Didn't Get Done
[Items that were planned but didn't happen]

## Key Insights This Week
[Interesting thoughts and observations from the week]

## Next Week Priorities
[Based on this week, what should next week focus on?]

## Open Questions
[Things that came up but haven't been resolved yet]


5. After creating the review, give the user a brief verbal summary of the week's highlights.
6. Mention any ideas from the daily notes that seem worth developing further.
```

---

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Flat hook format `{"matcher": "...", "command": "..."}` | Nested format `{"matcher": "...", "hooks": [{"type": "command", ...}]}` | Current Claude Code API | Module 4.2 settings.json example must be updated |
| `CLAUDE_FILE_PATH` env var | stdin JSON at `tool_input.file_path` | Current Claude Code API | Shell script must read from stdin, not env var |
| Module 4.6 builds commands from scratch | Module 4.6 explores pre-existing commands | Phase 5 decision | Rewrite Module 4.6 teaching narrative |

**Deprecated/outdated:**
- `CLAUDE_FILE_PATH` environment variable: does not exist in Claude Code hooks API. The teaching script in Module 4.2 must be updated to use stdin JSON parsing.
- The simplified hook format without the nested `hooks` array: not the correct schema.

---

## Open Questions

1. **Does `python3` availability need a fallback?**
   - What we know: macOS ships with python3; the course targets macOS users (Course CLAUDE.md doesn't specify Windows)
   - What's unclear: Whether any Windows users might take the course
   - Recommendation: Use python3 as primary approach; include a comment noting it requires python3. Requirements section in v1 scope notes mobile is out of scope; Windows cross-platform is v2.

2. **Should the add-frontmatter.sh script in Module 4.2 be updated to use stdin, or kept simpler for teaching purposes?**
   - What we know: The script must work correctly for UTIL-05; the env var approach is definitively wrong
   - What's unclear: Whether using `python3 -c` in a teaching script is too technical for non-technical students
   - Recommendation: Use the correct stdin approach but explain it in plain language in the teaching narrative ("Claude Code sends information to the script as a message — we read that message and pull out the file name"). The teaching script already has a "translate it into plain language" instruction pattern.

3. **Does the hook fire during the same Claude Code session it was configured in?**
   - What we know: Module 4.2's fallback path acknowledges hooks may not fire until restart ("hooks pick up new settings on restart"). The official docs don't clarify session-level reload behavior.
   - What's unclear: Whether configuring a hook mid-session makes it active immediately
   - Recommendation: Keep the fallback path in Module 4.2 as-is (it gracefully handles both outcomes). This is a teaching quality issue, not a correctness issue.

---

## Validation Architecture

`nyquist_validation: true` is set in `.planning/config.json`, so this section is required.

### Test Framework
| Property | Value |
|----------|-------|
| Framework | None — course is experiential, manual playtest is the validation approach (per REQUIREMENTS.md "Out of Scope: Automated CI testing") |
| Config file | N/A |
| Quick run command | Manual: run `/daily` in Claude Code and verify output |
| Full suite command | Manual: run each of the four commands and verify against success criteria |

### Phase Requirements → Test Map
| Req ID | Behavior | Test Type | Automated Command | File Exists? |
|--------|----------|-----------|-------------------|-------------|
| UTIL-01 | Running /daily creates a daily note matching Daily Note Template.md sections | manual-smoke | N/A — manual only | ❌ Wave 0 |
| UTIL-02 | Running /weekly-review creates a weekly review note matching Weekly Review Template.md sections | manual-smoke | N/A — manual only | ❌ Wave 0 |
| UTIL-03 | Running /process-inbox triages vault/00-Inbox/ and presents categorized output | manual-smoke | N/A — manual only | ❌ Wave 0 |
| UTIL-04 | Running /project-brief generates a brief from vault/02-Projects/ content | manual-smoke | N/A — manual only | ❌ Wave 0 |
| UTIL-05 | add-frontmatter.sh exists, is executable, and correctly adds frontmatter when triggered | automated + manual | `bash .claude/scripts/add-frontmatter.sh < test_payload.json && echo "exit ok"` — but requires a test JSON fixture | ❌ Wave 0 |

Note: The course design explicitly defers automated testing (see REQUIREMENTS.md Out of Scope). All UTIL requirements are verified by running the commands in Claude Code and confirming output matches the success criteria in the phase objective.

For UTIL-05, the hook script can be partially unit-tested by piping a mock JSON payload to it:
```bash
echo '{"tool_input": {"file_path": "/path/to/vault/00-Inbox/test.md"}}' | bash .claude/scripts/add-frontmatter.sh
```

### Wave 0 Gaps
- No automated test infrastructure needed per project design decisions.
- Verification for this phase: run each command manually and check outputs against the success criteria listed in the phase objective.

---

## Sources

### Primary (HIGH confidence)
- Official Claude Code hooks documentation (code.claude.com/docs/en/hooks) — hook format, event names, environment variables, stdin JSON structure, exit codes
- `vault/06-Templates/Daily Note Template.md` — confirmed section names
- `vault/06-Templates/Weekly Review Template.md` — confirmed section names and frontmatter fields
- `vault/06-Templates/Client Brief Template.md` — confirmed section names and frontmatter fields
- `lesson-modules/4-automation/4.6-custom-slash-commands/CLAUDE.md` — existing draft command content
- `lesson-modules/4-automation/4.2-auto-organize-hook/CLAUDE.md` — current (incorrect) hook syntax reference
- `lesson-modules/4-automation/4.1-intro-hooks/CLAUDE.md` — current conceptual hook documentation
- `.claude/commands/start-1-1.md` — confirmed command file format pattern

### Secondary (MEDIUM confidence)
- All 25 existing command files in `.claude/commands/` — cross-verified the YAML frontmatter + plain prose pattern is consistent

### Tertiary (LOW confidence)
- None

---

## Metadata

**Confidence breakdown:**
- Hook API syntax (correct format, stdin JSON, env vars): HIGH — verified against official Claude Code documentation
- Command file format: HIGH — verified against 25 existing commands in the codebase
- Template section content: HIGH — read directly from vault template files
- Module 4.6 narrative rewrite approach: MEDIUM — based on CONTEXT.md guidance + reading existing script; exact wording is Claude's discretion

**Research date:** 2026-03-21
**Valid until:** 2026-06-21 (stable — Claude Code hooks API changes infrequently; command format is project-established)
