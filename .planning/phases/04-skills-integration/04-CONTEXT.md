# Phase 4: Skills Integration - Context

**Gathered:** 2026-03-21
**Status:** Ready for planning

<domain>
## Phase Boundary

Add a new module teaching Claude Code skills as a distinct capability, introduce the kepano/obsidian-skills plugin, demonstrate skills in action, guide students to build a custom skill, and document existing sub-agents in the skills ecosystem context. Renumber affected modules (current 4.5 and 4.6 shift to 4.6 and 4.7). No changes to existing module content beyond navigation updates for renumbering.

</domain>

<decisions>
## Implementation Decisions

### Module placement
- New Module 4.5: "Claude Code Skills" inserted between MCP Tools (4.4) and Custom Slash Commands
- Current Module 4.5 (Custom Slash Commands) becomes Module 4.6
- Current Module 4.6 (The Living Vault) becomes Module 4.7
- Full renumber: update course-structure.json, slash command files (start-4-5.md → start-4-6.md, start-4-6.md → start-4-7.md), teaching scripts' next-module navigation, and lesson-modules/ folder names
- Single module (~27 minutes), not split into two

### Skills mental model framing
- Three-part distinction: "Commands are tools in a toolbox. Agents are roles Claude can play. Skills are abilities Claude can learn."
- Light technical peek: briefly show that a skill is a .md file with metadata, then back to hands-on — don't dwell on file formats or YAML
- Conceptual emphasis on WHEN to use which, not HOW they work internally

### Plugin demo choices
- Demo 1: **obsidian-markdown** skill — Claude learns proper Obsidian-flavored Markdown (wikilinks, embeds, callouts, properties). Directly relevant to everything the course teaches about vault notes.
- Demo 2: **json-canvas** skill — Claude creates a visual canvas showing Alex's 4 projects (Horizon Magazine, Bloom Studio, ClearPath, The Synthesis) as nodes with connections showing idea flow between them. Ties to the Connector agent's cross-pollination concept from Module 3.2.
- The canvas demo is the "wow" moment — visual mind mapping that students haven't seen before

### Custom skill project
- Student builds a **weekly digest skill** that scans the vault for notes created/modified during the current week and produces a digest summary
- Working draft level of polish — functional after one test, not production-grade. The point is learning the skill pattern, not shipping a perfect tool.
- Skill file lives in `.claude/skills/` — standard Claude Code location. Student sees the parallel: plugins add skills from outside, you create your own here.

### Sub-agent documentation (SKIL-06)
- Handled in Step 6 of the module as a recap tying it all together: "You've now seen all three ways to extend Claude — commands (tools), agents (roles), and skills (abilities). Your Librarian, Critic, and Connector are agents."
- No updates to the agent .md files themselves — the ecosystem framing lives in the teaching script

### Command migration (SKIL-05)
- Keep course slash commands (.claude/commands/) as-is — they ARE commands (step-by-step recipes), not skills (abilities)
- Document the distinction in the module: "These /start commands are recipes — that's exactly what commands are for. Skills are different."
- No migration needed

### Claude's Discretion
- Exact wording of the tools/roles/abilities analogy in Step 1
- How to structure the obsidian-skills installation walkthrough (Step 2)
- Exact canvas layout and node arrangement for Alex's project map
- Weekly digest skill file content and structure
- How much detail in the technical peek (keep it brief)

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Skills plugin
- `https://github.com/kepano/obsidian-skills` — The plugin to install. Contains 5 skills: obsidian-markdown, json-canvas, obsidian-bases, obsidian-cli, defuddle

### Teaching format
- `.claude/SCRIPT_INSTRUCTIONS.md` — Say/Check/Action format that the new module must follow
- `course-structure.json` — Module ordering, time estimates, file paths; must be updated for renumbering

### Existing extension mechanisms (for comparison/framing)
- `.claude/commands/` — Existing slash commands; the "tools" in the tools/roles/abilities framing
- `.claude/agents/librarian.md` — Librarian sub-agent; referenced in ecosystem recap
- `.claude/agents/critic.md` — Critic sub-agent; referenced in ecosystem recap
- `.claude/agents/connector.md` — Connector sub-agent; referenced in ecosystem recap and canvas demo ties to cross-pollination concept

### Prior modules that set up context
- `lesson-modules/3-memory-partner/3.2-sub-agents/CLAUDE.md` — Where sub-agents were introduced (agents = "roles")
- `lesson-modules/4-automation/4.5-custom-slash-commands/CLAUDE.md` — Will become 4.6; where commands are taught (commands = "tools")

### Creator context
- `creator-context/CLIENTS.md` — Alex's 4 projects used in canvas demo
- `creator-context/PROFILE.md` — Alex Rivera background for contextual teaching

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- 3 sub-agent files in `.claude/agents/` (librarian.md, critic.md, connector.md) — referenced in ecosystem recap
- 24 slash command files in `.claude/commands/` — two need renaming (start-4-5.md → start-4-6.md, start-4-6.md → start-4-7.md)
- Existing module folder structure in `lesson-modules/4-automation/` — new folder 4.5-skills-integration needed, existing 4.5 and 4.6 folders need renaming

### Established Patterns
- Say/Check/Action block format — universal across all 24 scripts, new module must follow
- Warm, non-technical language — "folder" not "directory", "note" not "file"
- Alex Rivera fictional context maintained throughout
- Module endings use explicit `/start-X-X` navigation to next module

### Integration Points
- course-structure.json — must add new module entry and update IDs/commands/paths for renumbered modules
- Module 4.4 (MCP Tools) ending — must update to point to new 4.5 instead of old 4.5
- New Module 4.5 ending — must point to 4.6 (Custom Slash Commands)
- Module 4.6 (was 4.5, Custom Slash Commands) ending — must point to 4.7 (The Living Vault)
- New `.claude/skills/` directory — created during module for custom skill

</code_context>

<specifics>
## Specific Ideas

- Canvas demo should create a project map with Alex's 4 projects as nodes showing how ideas cross-pollinate — this callbacks the Connector agent from Module 3.2 and makes the "abilities" concept tangible
- The weekly digest skill ties forward to the /weekly-review command in Module 4.6 — student sees skills and commands as complementary, not competing
- "Light technical peek" means one brief aside showing the skill file structure, not a deep dive into YAML frontmatter specs
- The three-part framing (tools/roles/abilities) should be a recurring thread through the module, not just stated once in Step 1

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 04-skills-integration*
*Context gathered: 2026-03-21*
