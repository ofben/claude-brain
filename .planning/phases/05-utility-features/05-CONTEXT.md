# Phase 5: Utility Features - Context

**Gathered:** 2026-03-21
**Status:** Ready for planning

<domain>
## Phase Boundary

Ship four ready-to-use slash commands (/daily, /weekly-review, /process-inbox, /project-brief) pre-committed to the repo, verify and fix the add-frontmatter.sh hook script syntax against real Claude Code API, and update Modules 4.1, 4.2, and 4.6 teaching scripts to reflect these changes.

</domain>

<decisions>
## Implementation Decisions

### Pre-built vs lesson-created
- Pre-commit the 4 slash commands (/daily, /weekly-review, /process-inbox, /project-brief) to `.claude/commands/` so they exist on clone
- Do NOT pre-commit add-frontmatter.sh — leave it to Module 4.2's "build from scratch" teaching flow
- Phase 5's UTIL-05 scope for add-frontmatter.sh: verify hook syntax correctness, not create the file

### Module 4.6 teaching narrative
- Module 4.6 shifts from "build from scratch" to "explore and customize" — commands already exist, the lesson opens them, explains how they work, and guides the student to customize one
- The "aha" moment becomes seeing how simple the command files are, not building them from nothing

### Template alignment
- Commands hard-code content that matches the vault templates exactly (Daily Note Template.md, Weekly Review Template.md, Client Brief Template.md)
- Commands do NOT read template files at runtime — they contain matching inline content
- /process-inbox has no vault template; uses Module 4.6's current triage workflow format as-is
- /project-brief aligns with Client Brief Template.md structure

### Command quality and tone
- Teaching quality — simple, readable, easy for students to understand during the "explore and customize" lesson
- Generic/adaptable — no Alex Rivera-specific client references; commands use generic language ("your projects", "your clients") so students can repurpose them for their own vaults after the course
- Edge case handling: basic (check for existing notes, handle empty states) but not production-grade

### Hook script correctness
- Research actual Claude Code hook API syntax (env vars, matcher format, command structure) and verify against what Modules 4.1 and 4.2 currently teach
- Fix both Module 4.1 (conceptual intro) and Module 4.2 (hands-on build) if syntax differs from reality
- Hook script must use array syntax for frontmatter tags: `tags: []` / `tags: [created-by-claude]` — matches Phase 1 vault-wide standard
- Resolves STATE.md research flag: "Verify current Claude Code hooks (PostToolUse/PreToolUse) syntax against Anthropic docs"

### Claude's Discretion
- Exact wording of Module 4.6's revised teaching narrative
- How to structure the "explore and customize" flow (which command to customize, what customization to suggest)
- Level of detail in hook API verification (how deep to research)
- Exact command file content within the constraints above (match templates, generic, teaching quality)

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Vault templates (commands must match these formats)
- `vault/06-Templates/Daily Note Template.md` — Daily note sections: What I Did Today, Ideas and Observations, Tomorrow's Priorities
- `vault/06-Templates/Weekly Review Template.md` — Weekly review sections: What Got Done, What Didn't Get Done, Key Insights, Next Week Priorities, Open Questions
- `vault/06-Templates/Client Brief Template.md` — Brief structure: Assignment, Angle, Key Points, Sources, Notes

### Teaching scripts to update
- `lesson-modules/4-automation/4.6-custom-slash-commands/CLAUDE.md` — Must rewrite from "build" to "explore and customize" narrative
- `lesson-modules/4-automation/4.1-intro-hooks/CLAUDE.md` — Verify and fix hook syntax if incorrect
- `lesson-modules/4-automation/4.2-auto-organize-hook/CLAUDE.md` — Verify and fix hook script syntax, env vars, matcher format

### Teaching format
- `.claude/SCRIPT_INSTRUCTIONS.md` — Say/Check/Action format that updated modules must follow
- `course-structure.json` — Module metadata; may need minor updates if module descriptions change

### Existing commands (for reference)
- `.claude/commands/` — All 25 existing slash commands; new commands go here

### Prior phase context
- `.planning/phases/04-skills-integration/04-CONTEXT.md` — Phase 4 established: weekly-digest skill and /weekly-review command are complementary, not competing; commands stay in .claude/commands/

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- 5 vault templates in `vault/06-Templates/` — Daily Note, Weekly Review, Client Brief, Draft, Research Note templates define the formats commands should produce
- 25 slash commands in `.claude/commands/` — established pattern for command file format (YAML frontmatter with description + plain-English instructions)
- Module 4.6 teaching script has fully-written command content for all 4 commands — starting point for pre-committed versions (needs template alignment + genericization)

### Established Patterns
- Command files use YAML frontmatter with `description` field + plain-English step-by-step instructions
- Vault folder structure: 00-Inbox, 01-Daily-Notes, 02-Projects, 03-Research, 04-Drafts, 05-References, 06-Templates, 07-MOCs, 08-Published
- Frontmatter tags use array syntax: `tags: [tag-name]` (Phase 1 decision, vault-wide)
- Non-technical language in all student-facing content ("folder" not "directory", "note" not "file")

### Integration Points
- New command files go in `.claude/commands/` alongside existing start-X-X.md commands
- Module 4.6 teaching script needs rewrite to "explore and customize" flow
- Modules 4.1 and 4.2 need hook syntax verification/fixes
- Hook settings live in `.claude/settings.local.json` — currently has no hooks config (Module 4.2 creates it during lesson)

</code_context>

<specifics>
## Specific Ideas

- Module 4.6's new narrative: "You've been using /start commands throughout this course. But there are other commands already here — let's explore /daily, /weekly-review, /process-inbox, and /project-brief to see how they work, then customize one to fit your workflow"
- The weekly-digest skill (from Phase 4's Module 4.5) and /weekly-review command are complementary — the skill is an "ability" Claude can use anywhere, the command is a one-word action for a specific workflow

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 05-utility-features*
*Context gathered: 2026-03-21*
