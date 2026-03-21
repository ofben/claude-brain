# Phase 4: Skills Integration - Research

**Researched:** 2026-03-21
**Domain:** Claude Code Skills system, obsidian-skills plugin, module authoring (teaching scripts)
**Confidence:** HIGH

---

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

**Module placement:**
- New Module 4.5: "Claude Code Skills" inserted between MCP Tools (4.4) and Custom Slash Commands
- Current Module 4.5 (Custom Slash Commands) becomes Module 4.6
- Current Module 4.6 (The Living Vault) becomes Module 4.7
- Full renumber: update course-structure.json, slash command files (start-4-5.md → start-4-6.md, start-4-6.md → start-4-7.md), teaching scripts' next-module navigation, and lesson-modules/ folder names
- Single module (~27 minutes), not split into two

**Skills mental model framing:**
- Three-part distinction: "Commands are tools in a toolbox. Agents are roles Claude can play. Skills are abilities Claude can learn."
- Light technical peek: briefly show that a skill is a .md file with metadata, then back to hands-on — don't dwell on file formats or YAML
- Conceptual emphasis on WHEN to use which, not HOW they work internally

**Plugin demo choices:**
- Demo 1: obsidian-markdown skill — Claude learns proper Obsidian-flavored Markdown (wikilinks, embeds, callouts, properties). Directly relevant to everything the course teaches about vault notes.
- Demo 2: json-canvas skill — Claude creates a visual canvas showing Alex's 4 projects (Horizon Magazine, Bloom Studio, ClearPath, The Synthesis) as nodes with connections showing idea flow between them. Ties to the Connector agent's cross-pollination concept from Module 3.2.
- The canvas demo is the "wow" moment — visual mind mapping that students haven't seen before

**Custom skill project:**
- Student builds a weekly digest skill that scans the vault for notes created/modified during the current week and produces a digest summary
- Working draft level of polish — functional after one test, not production-grade. The point is learning the skill pattern, not shipping a perfect tool.
- Skill file lives in `.claude/skills/` — standard Claude Code location. Student sees the parallel: plugins add skills from outside, you create your own here.

**Sub-agent documentation (SKIL-06):**
- Handled in Step 6 of the module as a recap tying it all together: "You've now seen all three ways to extend Claude — commands (tools), agents (roles), and skills (abilities). Your Librarian, Critic, and Connector are agents."
- No updates to the agent .md files themselves — the ecosystem framing lives in the teaching script

**Command migration (SKIL-05):**
- Keep course slash commands (.claude/commands/) as-is — they ARE commands (step-by-step recipes), not skills (abilities)
- Document the distinction in the module: "These /start commands are recipes — that's exactly what commands are for. Skills are different."
- No migration needed

### Claude's Discretion
- Exact wording of the tools/roles/abilities analogy in Step 1
- How to structure the obsidian-skills installation walkthrough (Step 2)
- Exact canvas layout and node arrangement for Alex's project map
- Weekly digest skill file content and structure
- How much detail in the technical peek (keep it brief)

### Deferred Ideas (OUT OF SCOPE)
None — discussion stayed within phase scope
</user_constraints>

---

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|-----------------|
| SKIL-01 | New module teaches what Claude Code skills are and how they extend Claude's capabilities | Skills system architecture, distinction from commands/agents, three-part framing |
| SKIL-02 | Module guides student to install kepano/obsidian-skills plugin | Installation methods verified: manual copy into .claude/ directory; repository structure documented |
| SKIL-03 | Module demonstrates obsidian-skills in action (markdown skill, canvas skill) | Both skills verified present in kepano/obsidian-skills; demo scripts documented |
| SKIL-04 | Module guides student to build a custom skill for their vault (weekly digest) | SKILL.md format fully documented from official Claude Code docs; working example provided |
| SKIL-05 | Course slash commands migrated from .claude/commands/ to .claude/skills/ format (or documented why commands are kept) | Decision locked: keep commands as-is, document distinction in module |
| SKIL-06 | Existing sub-agents (Librarian, Critic, Connector) documented in context of skills ecosystem | Agent files reviewed; ecosystem recap approach documented |
</phase_requirements>

---

## Summary

Phase 4 introduces a new module (4.5) teaching Claude Code skills as a distinct capability, then renumbers the two existing terminal modules (Custom Slash Commands → 4.6, The Living Vault → 4.7). The work divides cleanly into two categories: content authoring (writing the new teaching script) and file-system renaming (updating paths, command files, and JSON).

The new module hinges on a three-part mental model (commands/agents/skills) that threads through six steps: conceptual intro, obsidian-skills plugin installation, markdown skill demo, canvas skill demo (the "wow" moment), building a custom weekly-digest skill, and an ecosystem recap that ties in the Librarian/Critic/Connector agents. All steps follow the established Say/Check/Action format. No existing module content changes other than navigation pointer updates.

**Primary recommendation:** Write the new 4.5 teaching script first, then do the renaming pass. The script is the creative work; renaming is mechanical and should not block it.

---

## Standard Stack

### Core
| Asset | Version/Path | Purpose | Why Standard |
|-------|-------------|---------|--------------|
| SKILL.md format | Claude Code skills spec | Defines new module's custom skill | Official Claude Code format; what the course teaches |
| kepano/obsidian-skills | GitHub main | Plugin providing obsidian-markdown and json-canvas skills | The canonical plugin the course covers (SKIL-02/03) |
| Say/Check/Action blocks | SCRIPT_INSTRUCTIONS.md | Teaching script format | Universal across all 24 existing scripts |
| course-structure.json | v1.0.0 | Module registry | Single source of truth per CLAUDE.md |

### Supporting
| Asset | Path | Purpose | When to Use |
|-------|------|---------|-------------|
| start-4-5.md (new) | .claude/commands/ | Slash command launching new module 4.5 | Created as part of renaming pass |
| start-4-6.md (renamed) | .claude/commands/ | Was start-4-5.md; launches Custom Slash Commands | Renamed during renaming pass |
| start-4-7.md (renamed) | .claude/commands/ | Was start-4-6.md; launches The Living Vault | Renamed during renaming pass |

### Installation: kepano/obsidian-skills for this project

The course vault already has a `.claude/` directory. The obsidian-skills plugin installs by copying the repository contents into that folder. The planner needs to decide whether the module asks the student to do this via terminal, or whether the teaching script performs it as an Action step on the student's behalf (Claude does it for them, then shows the result). The latter fits the course's non-technical audience better.

**Manual copy approach (recommended for this audience):**
```bash
# Claude runs this as an Action step on the student's behalf
# Clone or copy kepano/obsidian-skills into .claude/
# The skills/ subdirectory ends up at .claude/skills/
```

The installed structure becomes:
```
.claude/
├── skills/
│   ├── obsidian-markdown/
│   │   └── SKILL.md
│   ├── json-canvas/
│   │   └── SKILL.md
│   ├── obsidian-bases/
│   │   └── SKILL.md
│   ├── obsidian-cli/
│   │   └── SKILL.md
│   └── defuddle/
│       └── SKILL.md
├── agents/
├── commands/
└── SCRIPT_INSTRUCTIONS.md
```

Note: the project vault already has `.claude/agents/` and `.claude/commands/` — these must not be overwritten. The install only adds the `skills/` subdirectory.

---

## Architecture Patterns

### SKILL.md File Format
**What:** A markdown file with YAML frontmatter and instructions. The directory name becomes the slash command.
**When to use:** Whenever Claude needs a reusable capability beyond a one-off command.

Official format (source: code.claude.com/docs/en/skills):
```markdown
---
name: skill-name
description: What this skill does and when to use it. Claude uses this to decide when to apply the skill automatically.
disable-model-invocation: true   # optional: prevents Claude auto-invoking
allowed-tools: Read, Grep, Glob  # optional: restrict tools
---

# Skill Name

Your instructions here. Plain English. Tell Claude exactly what to do.
```

**Key facts the module must convey (non-technically):**
- The folder name = the slash command name
- `description` is what Claude reads to decide when to load the skill automatically
- Without `disable-model-invocation: true`, Claude can also load a skill on its own when relevant
- Skills can include supporting files (templates, examples) in their directory

### Weekly Digest Skill (Custom Skill for SKIL-04)

Skill lives at `.claude/skills/weekly-digest/SKILL.md`.

Recommended content:

```markdown
---
name: weekly-digest
description: Scan the vault for notes created or modified this week and produce a digest summary. Use when the user asks for a weekly digest, weekly summary, or what happened this week in the vault.
allowed-tools: Read, Grep, Glob
---

# Weekly Digest

You are generating a weekly digest of vault activity.

1. Determine the current week (Monday through Sunday, or the last 7 days)
2. Search for notes in vault/ that were created or modified during this period:
   - Check vault/00-Inbox/ for new captures
   - Check vault/01-Daily-Notes/ for daily notes
   - Check vault/02-Projects/ for project updates
   - Check vault/03-Research/ for new research notes
   - Check vault/04-Drafts/ for draft activity
3. Read each relevant note
4. Produce a digest in this format:

## Weekly Digest: [start date] to [end date]

**Notes added:** [count]
**Most active area:** [folder with most activity]

### Captures & Quick Notes
- [brief description of inbox notes]

### Daily Notes Highlights
- [recurring themes or key moments from daily notes]

### Project Progress
- [what moved forward this week in projects]

### New Research
- [research notes added]

### Drafts in Progress
- [draft activity]

### One Surprising Connection
- [a link between notes from different areas that emerged this week]

5. After the digest, ask: "Would you like me to save this as a note?"
   If yes, save to vault/01-Daily-Notes/Weekly Digest - [date range].md
```

### Three-Part Framing (Commands / Agents / Skills)

The module introduces the mental model once, then callbacks to it throughout. The canonical analogies:

| Extension | Analogy | What it is | Example |
|-----------|---------|------------|---------|
| Commands (.claude/commands/) | A recipe card | Step-by-step instructions you trigger manually | /daily, /weekly-review |
| Agents (.claude/agents/) | A specialist wearing a different hat | Claude takes on a role with a distinct personality | Librarian, Critic, Connector |
| Skills (.claude/skills/) | A new ability Claude learns | Knowledge/behavior Claude applies when relevant | obsidian-markdown, json-canvas |

**Key distinction to emphasize:** Skills can trigger automatically when relevant (because their description lives in Claude's context at all times). Commands only run when you type them. This is what makes skills feel like "learned abilities" rather than tools.

### Canvas Demo: Alex's Project Map

The json-canvas skill teaches Claude to produce `.canvas` files in Obsidian JSON Canvas format. The demo creates a visual map of Alex's four projects with connections showing how ideas flow between them.

Obsidian JSON Canvas format (simplified for module purposes):
```json
{
  "nodes": [
    {"id": "1", "type": "text", "text": "Horizon Magazine\nAI Writing Partner\nDue: March 28", "x": -300, "y": -100, "width": 200, "height": 80, "color": "1"},
    {"id": "2", "type": "text", "text": "Bloom Studio\nDigital Boundaries Series\nDue: March 27", "x": 100, "y": -100, "width": 200, "height": 80, "color": "3"},
    {"id": "3", "type": "text", "text": "ClearPath\nAsync Communication\nDue: March 25", "x": -300, "y": 100, "width": 200, "height": 80, "color": "4"},
    {"id": "4", "type": "text", "text": "The Synthesis\nNewsletter Draft\nEvery other Saturday", "x": 100, "y": 100, "width": 200, "height": 80, "color": "2"}
  ],
  "edges": [
    {"id": "e1", "fromNode": "1", "toNode": "4", "label": "AI+writing themes"},
    {"id": "e2", "fromNode": "2", "toNode": "4", "label": "Digital wellness angle"},
    {"id": "e3", "fromNode": "3", "toNode": "4", "label": "Knowledge tools theme"},
    {"id": "e4", "fromNode": "1", "toNode": "3", "label": "Tech-changing-cognition thread"}
  ]
}
```

The canvas file saves to `vault/07-MOCs/Alex Project Map.canvas`. Opening it in Obsidian shows the visual graph.

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Skills plugin content | Writing obsidian-markdown or json-canvas SKILL.md from scratch | Copy from kepano/obsidian-skills repo | kepano maintains these; they contain complete Obsidian format specs Claude needs |
| JSON Canvas format spec | Manually documenting the canvas schema | Let json-canvas SKILL.md teach Claude the format | The SKILL.md is machine-readable documentation — that's the entire point of the demo |
| Module navigation wiring | Manually tracking which files reference which module | Follow the renaming checklist systematically | Six files need updates; a checklist prevents misses |

**Key insight:** The obsidian-skills plugin is self-documenting — the SKILL.md files ARE the format specifications. The module teaches this concept by showing it in action, not by explaining the spec.

---

## Common Pitfalls

### Pitfall 1: Overwriting existing .claude/ contents during plugin install
**What goes wrong:** A naive `git clone ... .claude` or `cp -r` wipes out `.claude/agents/`, `.claude/commands/`, and `SCRIPT_INSTRUCTIONS.md`.
**Why it happens:** The kepano repo has its own structure that doesn't match the existing project's `.claude/` layout.
**How to avoid:** The install step must ONLY copy the `skills/` subdirectory from the repo into `.claude/skills/`. The Action block should read: copy `obsidian-skills/skills/` to `.claude/skills/`, not copy the whole repo.
**Warning signs:** If `.claude/agents/librarian.md` disappears after the install step, something went wrong.

### Pitfall 2: YAML frontmatter in weekly-digest SKILL.md triggering auto-invocation at wrong times
**What goes wrong:** Without `disable-model-invocation: true`, Claude might auto-load the weekly-digest skill during unrelated conversations about "this week."
**Why it happens:** The description contains phrases like "notes created this week" that could match casual questions.
**How to avoid:** The teaching script should include `disable-model-invocation: true` in the weekly-digest skill OR write the description narrowly. For a beginner's first skill, explicit manual invocation via `/weekly-digest` is safer and more learnable.

### Pitfall 3: Module navigation mismatch after renumbering
**What goes wrong:** A student reaches end of Module 4.4 and types `/start-4-5` expecting new Skills content, but it still points to Custom Slash Commands because course-structure.json or start-4-4.md wasn't updated.
**Why it happens:** Renumbering touches 7 distinct locations; missing any one breaks navigation.
**How to avoid:** Planner should create a single renaming task that lists all 7 locations as a checklist. They all must succeed together.
**Complete list of renaming locations:**
1. `course-structure.json` — add new module entry, update ids/paths/commands for 4.5→4.6, 4.6→4.7
2. `lesson-modules/4-automation/4.5-custom-slash-commands/` → rename folder to `4.6-custom-slash-commands/`
3. `lesson-modules/4-automation/4.6-living-vault/` → rename folder to `4.7-living-vault/`
4. `.claude/commands/start-4-5.md` → rename to `start-4-6.md` (update description too)
5. `.claude/commands/start-4-6.md` → rename to `start-4-7.md` (update description too)
6. `lesson-modules/4-automation/4.4-mcp-tools/CLAUDE.md` — update "Type `/start-4-5` to continue" → `/start-4-5` (new skills module)
7. `lesson-modules/4-automation/4.6-custom-slash-commands/CLAUDE.md` (after rename) — update "Type `/start-4-6`" → "Type `/start-4-7`"

### Pitfall 4: Canvas file saved with wrong extension
**What goes wrong:** Teaching script instructs Claude to save the canvas as `.md` instead of `.canvas`.
**Why it happens:** The course uses `.md` for everything. Canvas is an exception.
**How to avoid:** The Action block must explicitly use the `.canvas` extension: `vault/07-MOCs/Alex Project Map.canvas`. Obsidian will only render it as an interactive canvas with the correct extension.

### Pitfall 5: Skills directory placement confusion
**What goes wrong:** Student or planner assumes skills go in `~/.claude/skills/` (personal/global) rather than `.claude/skills/` (project-local).
**Why it happens:** The Claude Code skills docs describe both scopes. For this course, project-local is correct — the skill should live in the repo and be part of the vault.
**How to avoid:** Module always specifies `.claude/skills/` (with the leading `.` indicating project root), never the home directory path.

---

## Code Examples

Verified patterns from official sources.

### Minimal SKILL.md (from code.claude.com/docs/en/skills)
```markdown
---
name: explain-code
description: Explains code with visual diagrams and analogies. Use when explaining how code works, teaching about a codebase, or when the user asks "how does this work?"
---

When explaining code, always include:

1. **Start with an analogy**: Compare the code to something from everyday life
2. **Draw a diagram**: Use ASCII art to show the flow, structure, or relationships
3. **Walk through the code**: Explain step-by-step what happens
4. **Highlight a gotcha**: What's a common mistake or misconception?
```

### Slash command file (from existing .claude/commands/start-4-5.md pattern)
```markdown
---
description: "Module 4.5: Claude Code Skills — learn, install, and build skills"
---

**Do this SILENTLY:**

1. Read `lesson-modules/4-automation/4.5-skills-integration/CLAUDE.md` - this is your teaching script

2. Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical teaching rules

3. Follow the teaching script precisely as instructed:
   - Execute "Say:" blocks word-for-word
   - Stop at "Check:" points and wait
   - Run "Action:" blocks exactly as specified
   - Start teaching immediately (no meta-commentary)
```

### course-structure.json new module entry pattern (based on existing entries)
```json
{
  "id": "4.5",
  "title": "Claude Code Skills",
  "slug": "skills-integration",
  "path": "lesson-modules/4-automation/4.5-skills-integration/CLAUDE.md",
  "command": "start-4-5",
  "description": "Learn, install, and build Claude Code skills for your vault",
  "estimatedMinutes": 27
}
```

---

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| .claude/commands/ only | Skills (.claude/skills/) merged with commands | Claude Code skills launch (~late 2025) | Commands still work; skills add auto-invocation and directory structure |
| Separate slash commands and skills | Unified: a file at .claude/commands/deploy.md and .claude/skills/deploy/SKILL.md both create /deploy | Current | No migration needed; coexistence works |

**Key fact for the module:** The course's existing `.claude/commands/` files are still fully supported. Skills are an extension, not a replacement. This is what makes SKIL-05's "document why commands are kept" answer genuine: the course's `/start-X-X` commands ARE the right tool for what they do.

---

## Open Questions

1. **How does the kepano/obsidian-skills install actually happen in the module?**
   - What we know: The skills/ subdirectory needs to land at `.claude/skills/`. Manual copy is safest to avoid overwriting existing files.
   - What's unclear: Should the module have Claude download/install live during the lesson (requires network and git), or should the files be pre-committed to the repo so the Action step is just "I've added these skill files — let me show you what's now available"?
   - Recommendation: Pre-commit the skills/ subdirectory to the repo as part of this phase's implementation, then the module Action step reads the files and demonstrates them. This eliminates installation risk during teaching.

2. **Does json-canvas require the Obsidian JSON Canvas plugin or is it built in?**
   - What we know: JSON Canvas is an open format. Obsidian has supported `.canvas` files natively since Obsidian 1.1.
   - What's unclear: Whether the course's target Obsidian version (documented in README prerequisites) includes canvas support.
   - Recommendation: The module should note "open this in Obsidian's canvas view" and add a fallback: if canvas doesn't open automatically, right-click the file and choose "Open as Canvas."

3. **Should totalEstimatedMinutes in course-structure.json update after adding the 27-minute module?**
   - What we know: Current total is 465 minutes. Adding 27 brings it to 492.
   - Recommendation: Yes, update totalEstimatedMinutes to 492 as part of the renaming task.

---

## Validation Architecture

> nyquist_validation is enabled in .planning/config.json

### Test Framework

| Property | Value |
|----------|-------|
| Framework | None — course is tested via manual playtest (per REQUIREMENTS.md: "Manual playtest over automated testing") |
| Config file | none |
| Quick run command | Manual: run `/start-4-5` in Claude Code and step through the module |
| Full suite command | Manual: run `/start-4-1` through `/start-4-7` in sequence |

### Phase Requirements → Test Map

| Req ID | Behavior | Test Type | Automated Command | File Exists? |
|--------|----------|-----------|-------------------|-------------|
| SKIL-01 | New module explains skills vs commands vs agents | manual | n/a — verify teaching script Step 1 content | ❌ Wave 0 (create module file) |
| SKIL-02 | obsidian-skills plugin is installable / pre-installed | manual | n/a — verify .claude/skills/ directory exists with correct contents | ❌ Wave 0 |
| SKIL-03 | obsidian-markdown and json-canvas demos work | manual | n/a — verify Action blocks produce expected vault artifacts | ❌ Wave 0 |
| SKIL-04 | Weekly digest skill exists and is functional | manual | Run `/weekly-digest` in Claude Code and verify output | ❌ Wave 0 |
| SKIL-05 | Commands-vs-skills distinction documented in module | manual | n/a — verify Step 5 content in teaching script | ❌ Wave 0 |
| SKIL-06 | Ecosystem recap in module ties agents to skills framing | manual | n/a — verify Step 6 content in teaching script | ❌ Wave 0 |

### Sampling Rate
- **Per task commit:** Verify file exists at correct path with correct content
- **Per wave merge:** Run `/start-4-5` in Claude Code and step through at least Steps 1, 3, 4, and 5
- **Phase gate:** Run `/start-4-4` through `/start-4-7` in sequence to confirm navigation chain is unbroken

### Wave 0 Gaps
- [ ] `lesson-modules/4-automation/4.5-skills-integration/CLAUDE.md` — covers SKIL-01, SKIL-02, SKIL-03, SKIL-04, SKIL-05, SKIL-06
- [ ] `.claude/skills/` directory with obsidian-skills contents — covers SKIL-02, SKIL-03
- [ ] `.claude/skills/weekly-digest/SKILL.md` — covers SKIL-04
- [ ] `.claude/commands/start-4-5.md` (new), `start-4-6.md` (renamed), `start-4-7.md` (renamed)
- [ ] Renamed folders: `lesson-modules/4-automation/4.6-custom-slash-commands/` and `4.7-living-vault/`
- [ ] Updated `course-structure.json` with new module and corrected paths

*(If no automated test framework: wave gate is the manual run of `/start-4-5` with a human confirming each step succeeds)*

---

## Sources

### Primary (HIGH confidence)
- `https://code.claude.com/docs/en/skills` — Complete Claude Code skills documentation: SKILL.md format, frontmatter reference, directory structure, invocation control, auto-discovery
- `https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview` — Agent Skills architecture: three-level loading model, SKILL.md spec, progressive disclosure
- `https://github.com/kepano/obsidian-skills` — Plugin repository: five included skills, installation methods, directory structure
- Existing project files: `.claude/SCRIPT_INSTRUCTIONS.md`, `.claude/agents/*.md`, `.claude/commands/start-4-*.md`, `lesson-modules/4-automation/4.4-mcp-tools/CLAUDE.md`, `lesson-modules/4-automation/4.5-custom-slash-commands/CLAUDE.md`, `lesson-modules/4-automation/4.6-living-vault/CLAUDE.md`, `course-structure.json`, `creator-context/CLIENTS.md`, `creator-context/PROFILE.md`

### Secondary (MEDIUM confidence)
- `https://deepwiki.com/kepano/obsidian-skills/1.2-installation-and-setup` — Installation walkthrough; confirms `.claude/` directory structure and Claude Code discovery mechanism

### Tertiary (LOW confidence)
- None

---

## Metadata

**Confidence breakdown:**
- Standard stack: HIGH — all assets are either existing project files or verified from official Claude Code docs
- Architecture patterns: HIGH — SKILL.md format sourced directly from official docs; canvas format from json-canvas SKILL.md spec
- Pitfalls: HIGH — renaming checklist derived from direct reading of all affected files; installation pitfall verified against actual project structure
- Canvas file content: MEDIUM — JSON Canvas format documented but exact node/edge structure for "wow moment" is discretionary

**Research date:** 2026-03-21
**Valid until:** 2026-06-21 (stable spec — skills format is unlikely to change in 90 days; kepano plugin is actively maintained)
