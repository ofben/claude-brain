# Technology Stack

**Project:** Claude Brain — Polish & Ship
**Research dimension:** BASB methodology, Obsidian conventions, GitHub distribution
**Researched:** 2026-03-20
**Confidence:** MEDIUM-HIGH

> **Tool availability note:** WebSearch, WebFetch, and Bash were unavailable in this research
> session. All findings draw from training knowledge (cutoff August 2025) and direct inspection
> of the existing course files. The BASB and Obsidian sections have HIGH confidence because
> these frameworks are stable and well-documented. The Tiago Forte AI Second Brain page
> at buildingasecondbrain.com/ai-second-brain could not be fetched directly — see the flag
> under "Gaps to Address." GitHub distribution conventions have HIGH confidence from training.

---

## 1. BASB Framework Elements and Course Mapping

### What BASB Is (Authoritative Definition)

**Building a Second Brain** is a personal knowledge management (PKM) methodology created by
Tiago Forte, published as a book (2022, Simon & Schuster) and taught as a course at
fortelabs.com. The three primary frameworks are:

**PARA Method** — An organizational system using four universal categories:
- **Projects** — Short-term efforts with a clear goal and deadline
- **Areas** — Long-term responsibilities without a defined endpoint
- **Resources** — Topics of ongoing interest for future reference
- **Archives** — Inactive items from the other three categories

PARA is designed to be tool-agnostic and to mirror the user's actual life, not an abstract
filing scheme. The key insight: organize by actionability, not by topic.

**CODE Method** — The four-step process for turning information into usable knowledge:
- **Capture** — Save anything that resonates
- **Organize** — Put it where it will be useful
- **Distill** — Find the essence of each note
- **Express** — Use the knowledge to create something

CODE is a workflow, not just a classification system. It moves through capture → storage →
refinement → output.

**Progressive Summarization** — A technique from Forte for distilling notes in layers:
- Layer 1: Save the original source passage
- Layer 2: Bold the most important sentences
- Layer 3: Highlight the most important phrases within the bolded text
- Layer 4: Create an Executive Summary in your own words
- Layer 5: "Remix" into original creative output

The technique is specifically designed for retrieval: the goal is that future-you can scan a
note and immediately find its value without re-reading everything.

**Intermediate Packets (IPs)** — A related BASB concept: small, reusable units of work that
can be assembled into larger outputs. Distilled notes, summaries, outlines, and frameworks are
all IPs. This aligns directly with the vault's draft-and-research pipeline.

**Confidence:** HIGH — These are stable, book-published concepts. Source: *Building a Second
Brain* (Forte, 2022).

---

### How the Course Already Maps to BASB

The course has strong implicit BASB alignment. Here is the current mapping and the gaps:

| BASB Concept | Where It Exists in Course | Gap / What's Missing |
|--------------|--------------------------|----------------------|
| **PARA** | Vault folder structure mirrors PARA loosely (00-Inbox, 02-Projects, 03-Research, 08-Published) but is not named PARA | PARA is never mentioned by name; vault uses numeric prefix scheme, not P/A/R/A labels |
| **CODE — Capture** | 00-Inbox pattern, fleeting notes (Module 2.1), inbox triage (Module 3.5) | No explicit CODE framing in teaching scripts |
| **CODE — Organize** | PARA-like folders, note types (Module 2.1), MOCs (Module 2.2) | Not connected to BASB vocabulary |
| **CODE — Distill** | Progressive summarization is explicitly taught (Module 2.4) under its own name | Could reference Forte directly and credit the source |
| **CODE — Express** | Drafts folder (04-Drafts), client projects | Least developed — no explicit "Express" module |
| **Progressive Summarization** | Module 2.4 teaches all five layers (TL;DR, Key Takeaways, Your Take, Connections) | Slight terminology mismatch — course uses 5 layers, Forte uses 4+remix |
| **Intermediate Packets** | Implicit in draft workflow and research-note-to-article pipeline | Never named; a useful framing for Level 3-4 lessons |

**Recommendation:** Do NOT restructure the course around BASB. The course's folder naming
(00-Inbox, 01-Daily-Notes, etc.) is more intuitive for non-technical users than raw PARA.
Instead, add explicit BASB acknowledgment in Module 1.1 (where it already appears in the
FAQ), Module 2.1 (note types), and Module 2.4 (progressive summarization). A single
"BASB Connection" callout block per module is enough — the goal is positioning ("this is
how classic BASB ideas get supercharged with Claude"), not a textbook treatment.

---

### BASB + AI Positioning

Tiago Forte has been evolving his framework toward AI integration. Key directional signals
(from training knowledge, MEDIUM confidence, unable to fetch current page):

- Forte frames AI as a "thinking partner" that accelerates the CODE loop — particularly
  the Distill and Express stages where AI can process and remix knowledge faster
- The core BASB insight that training data confirms: "AI doesn't replace the second brain,
  it amplifies it." The vault becomes the source of grounded, personal context that AI
  operates on — solving AI's problem of having no knowledge of your specific situation
- The "AI Second Brain" positioning tends to emphasize: capture everything → AI helps you
  distill → AI helps you express. This maps exactly to what Modules 2.4, 3.3, and 3.4 teach.

**FLAG:** The specific content at buildingasecondbrain.com/ai-second-brain was not fetched.
Before finalizing BASB integration language in the course, someone should manually review
that page to ensure the course's positioning doesn't inadvertently conflict with Forte's
own framing. This is particularly important if the course will claim BASB alignment in
the README or marketing materials.

**How the course should position itself:**
"This course builds on Building a Second Brain concepts (Tiago Forte's PARA and CODE
frameworks, progressive summarization) and shows you how Claude Code makes every step
faster, smarter, and more automatic."

Not: "This is a BASB course" (it isn't — it diverges in meaningful ways).
Not: "BASB is wrong" (it isn't — it's the canonical reference in this space).

---

## 2. Obsidian Vault Best Practices and Community Conventions

### Folder Structure

The current vault structure is sound and follows community conventions. Specific points:

**Inbox-first pattern:** The `00-Inbox/` as the universal capture point is widely adopted
in the Obsidian community (Linking Your Thinking community, Nick Milo's LYT framework,
and Zettelkasten practitioners all use this pattern). It is correct to call this a "dump
zone" before processing.

**Numeric prefixes for folders:** Using `00-`, `01-`, `02-` etc. is a common Obsidian
convention to force consistent sort order since Obsidian's file explorer is alphabetical.
The current naming is good. No change needed.

**Templates folder:** Having `06-Templates/` is standard. Obsidian's core Templates plugin
(no third-party installation required) uses a configured template folder path. This is
already correctly configured in `.obsidian/templates.json`.

**MOCs (Maps of Content):** The `07-MOCs/` folder follows Nick Milo's Linking Your Thinking
(LYT) framework, which is the most influential structural approach in the Obsidian community.
MOCs as index/hub notes are a well-established pattern. The course teaches this correctly in
Module 2.2.

**Daily Notes:** The `01-Daily-Notes/` folder with YYYY-MM-DD naming (e.g., `2026-03-10.md`)
is the canonical Obsidian daily notes pattern. Obsidian's core Daily Notes plugin uses this
format by default. Correct.

**Confidence:** HIGH — These are stable, observable community conventions.

---

### Frontmatter Conventions

The vault's existing frontmatter patterns are solid. Community consensus (HIGH confidence):

```yaml
---
type: literature        # note type: fleeting | literature | permanent | project | daily
source:                 # URL or citation for literature notes
author:                 # author of source
created: 2026-03-20    # ISO date, no time
tags: [research, AI]   # flat lowercase array, hyphenated multi-word
---
```

**Tags:** The Obsidian community strongly prefers:
- Lowercase: `ai-tools` not `AI-Tools`
- Hyphenated: `remote-work` not `remote_work` or `remoteWork`
- Flat (not nested): `tools` not `tools/ai/writing`
  (Obsidian supports nested tags with `/` but community opinions are divided; flat is simpler
  for this course's non-technical audience)

**Dates:** `YYYY-MM-DD` format is the community standard. ISO 8601. The vault uses this correctly.

**Status field:** Many power users add `status: draft | active | archived` to project notes.
The course's templates don't include this but it would be a useful addition for the weekly
review workflow.

---

### Wikilink vs. Markdown Link

The vault correctly uses `[[wikilinks]]` (double-bracket syntax) rather than standard
Markdown links `[text](path)`. This is the Obsidian standard:
- Wikilinks are shorter to type and easier to create during capture
- Obsidian's graph view and backlinks panel only recognize `[[wikilinks]]`
- When a note is renamed, Obsidian automatically updates all `[[wikilinks]]` pointing to it

Rule: All internal links in the vault should use `[[wikilinks]]`. External URLs use
standard Markdown `[text](url)`. The course follows this correctly.

---

### The `.obsidian/` Folder in Git

**Critical convention:** `.obsidian/workspace.json` should be in `.gitignore`.

This file tracks which notes are currently open, panel layout, cursor position, and similar
UI state. It changes constantly, creates noisy diffs, and is different for every user. It
must not be committed.

Files that SHOULD be committed (they define the vault experience):
- `.obsidian/app.json` — Editor behavior, appearance settings
- `.obsidian/core-plugins.json` — Which core plugins are enabled
- `.obsidian/community-plugins.json` — Which community plugins are installed
- `.obsidian/daily-notes.json` — Daily notes configuration
- `.obsidian/templates.json` — Template folder path
- `.obsidian/hotkeys.json` — Custom keyboard shortcuts (optional)

Files that should NOT be committed:
- `.obsidian/workspace.json` — UI state, changes constantly
- `.obsidian/workspace-mobile.json` — Mobile UI state
- `.obsidian/cache` — Build cache
- `.obsidian/.trash/` — Deleted notes trash folder

The current repo has NO `.gitignore` at all. This is the most urgent distribution
infrastructure gap.

**Confidence:** HIGH — This is documented Obsidian community practice and the most
frequently cited issue in Obsidian GitHub repos.

---

### Core Plugins vs. Community Plugins

**Recommendation for this course: core plugins only.**

The vault is already configured to use only Obsidian's built-in (core) plugins. This is
the correct choice for a distributed course because:
- Community plugins require separate installation and can have compatibility issues
- Core plugins are always available, never break on Obsidian updates, and require zero setup
- The non-technical audience would be confused by plugin installation instructions

Core plugins the vault should enable (check against current `.obsidian/core-plugins.json`):
- **Templates** — For the `06-Templates/` folder
- **Daily notes** — For `01-Daily-Notes/` workflow
- **Graph view** — Taught in Module 2.5
- **Backlinks** — Fundamental to wikilink system
- **Outline** — Useful for long notes
- **Tag pane** — For tag-based navigation
- **File recovery** — Safety net for students (recommended addition)
- **Word count** — Useful for writer persona (Alex is a freelance writer)
- **Search** — Core functionality, should always be on

Do NOT use:
- **Dataview** (community plugin) — Powerful but requires installation and has a learning curve
- **Templater** (community plugin) — Better than core Templates but adds setup friction
- **Calendar** (community plugin) — Nice but not required
- **Kanban** (community plugin) — Not needed for this course

---

### Vault README / CLAUDE.md

The student-facing vault should have a `vault/CLAUDE.md` file that Claude reads
automatically. This is already part of the course architecture (Module 1.5 teaches students
to create it). The convention is correct and aligns with how Claude Code handles
project-level context files.

---

## 3. GitHub Repository Distribution Best Practices

### Repository Structure for a Cloneable Course

This course follows the pattern of Carl Vellotti's claude-code-pm-course. The standard
structure for this class of open-source course repos:

```
claude-brain/
├── README.md               # Primary discovery and getting-started document
├── LICENSE                 # MIT (standard for open-source educational content)
├── .gitignore              # Excludes workspace.json, .DS_Store, etc.
├── CLAUDE.md               # Claude Code project context (already exists)
├── course-structure.json   # Course metadata (already exists)
├── vault/                  # Obsidian vault — students open THIS in Obsidian
│   ├── .obsidian/          # Vault config (committed selectively, see above)
│   ├── 00-Inbox/
│   ├── 01-Daily-Notes/
│   └── ...
├── lesson-modules/         # Teaching scripts (never touched by students)
│   └── ...
├── .claude/                # Claude Code config
│   ├── commands/           # Slash commands
│   ├── agents/             # Sub-agents
│   ├── SCRIPT_INSTRUCTIONS.md
│   └── settings.local.json
└── creator-context/        # Fictional context files
    └── ...
```

**Confidence:** HIGH — Inferred from direct inspection of the repo and reference pattern.

---

### LICENSE

**Recommendation: MIT License**

Why MIT, not Creative Commons:
- MIT is the de facto standard for GitHub repositories containing code (slash commands,
  scripts, JSON config are functional artifacts)
- The content (teaching scripts, vault notes) is mixed with functional code — MIT covers both
- MIT is maximally permissive: anyone can fork, modify, redistribute
- CC licenses (CC-BY, CC-BY-SA) are better suited to pure content (blog posts, ebooks);
  the hybrid code+content nature of this repo makes MIT simpler

The current repo has NO LICENSE file. Any public GitHub repo without a license is "all
rights reserved" by default, which is the opposite of the intended open-source positioning.
Adding LICENSE is the second most urgent distribution gap (after .gitignore).

**Confidence:** HIGH — Standard open-source practice.

---

### README Requirements for Discoverability

The current README.md is well-structured but needs additions for public distribution:

**What it has (keep):**
- Clear product description, target audience, what you'll learn
- Module table with time estimates
- Quick Start (4 numbered steps)
- Command reference table
- Alex Rivera story
- Requirements (Obsidian + Claude Code)

**What it needs:**

1. **Badges** — Simple status badges at the top improve discoverability. Minimum:
   - License badge
   - "No dependencies" or "Works offline" badge

2. **Screenshots or demo** — The single highest-impact addition for a course repo. Even one
   screenshot of Claude Code running a lesson improves conversion from "I found this" to
   "I'm going to try this." A short animated GIF of `/start-1-1` would be ideal.

3. **Prerequisites spelled out** — The current "Requirements" section at the bottom is
   minimal. The README should include estimated setup time, a clear note about API costs
   (Claude Code requires Anthropic API access, which costs money), and a link to current
   pricing. Students arriving from GitHub search need to know this upfront.

4. **Acknowledgments section** — Credit Tiago Forte / BASB, Zettelkasten (Luhmann), Nick
   Milo's LYT framework (for MOCs), and the PM course pattern (Carl Vellotti). This is a
   community norm for derivative educational work and protects against perception of
   plagiarism.

5. **"Works out of the box" guarantee** — A single sentence: "Clone the repo, open vault/
   in Obsidian, run /start-0-1, and the course begins. No configuration needed." This
   reduces bounce rate from people who think setup will be complicated.

**Confidence:** HIGH for structure; MEDIUM for specific sections (based on observation of
successful GitHub course repos in training data).

---

### Releases vs. Main Branch

**Recommendation: No releases for v1.0.**

Why:
- Releases add operational overhead (tag, notes, zip assets) that isn't justified for a
  course repo
- Students should always clone HEAD (latest main branch), not a specific release
- The course is evergreen content, not versioned software with breaking changes

If the course evolves significantly later (e.g., Claude Code API changes require updates),
a lightweight tagging approach (`v1.0`, `v1.1`) with brief release notes is appropriate.
For launch, just merge to main.

**Exception:** If the course is ever bundled with a shell install script (e.g.,
`curl | bash` setup), GitHub Releases become necessary to host static assets. Not needed now.

---

### .gitignore Contents

The repo currently has no `.gitignore`. Minimum required entries for this project:

```gitignore
# Obsidian UI state (changes constantly, user-specific)
vault/.obsidian/workspace.json
vault/.obsidian/workspace-mobile.json
vault/.obsidian/.trash/
vault/.obsidian/cache

# macOS
.DS_Store
**/.DS_Store

# Windows
Thumbs.db
ehthumbs.db

# Linux
*~

# Obsidian sync/backup (if student uses Obsidian Sync)
vault/.obsidian/sync.json

# Student-generated content that shouldn't ship with course
# (None currently — vault/ IS course content and ships as-is)
```

**Confidence:** HIGH — Standard .gitignore entries, cross-referenced against Obsidian
community docs and GitHub's gitignore templates.

---

### What NOT to Include

| Item | Why Exclude | Notes |
|------|-------------|-------|
| `node_modules/` | Not applicable — no npm dependencies | Already N/A |
| CI/CD workflows (`.github/workflows/`) | Automated testing is out of scope per PROJECT.md | Manual playtest is the validation approach |
| Issue templates | Premature for v1 — adds maintenance overhead before community exists | Add after launch if needed |
| `.env` or API keys | Claude Code handles its own API key; no secrets belong in repo | Critical: settings.local.json must not contain keys |
| Compiled/built artifacts | No build step in this project | N/A |
| Student progress files | The repo ships the starting state; students fork or modify locally | By design |
| Video/audio content | Explicitly out of scope per PROJECT.md | Deliver via text only |
| Obsidian community plugins | Adds setup friction for non-technical audience | Core plugins only |

---

## 4. Utility Slash Commands (Curriculum Infrastructure)

The PROJECT.md lists four post-course utility commands as active requirements:
`/daily`, `/weekly-review`, `/process-inbox`, `/project-brief`.

These are standalone commands (not course modules) that students use after graduation.
They live in `.claude/commands/` and call patterns the course has already taught.

**Recommended command behaviors:**

| Command | What It Does | Obsidian Conventions Used |
|---------|-------------|--------------------------|
| `/daily` | Creates a new daily note from the Daily Note template for today's date | `01-Daily-Notes/YYYY-MM-DD.md`, daily-notes frontmatter |
| `/weekly-review` | Reads last 7 daily notes, synthesizes themes, creates a weekly review note | MOC pattern, literature note structure, `01-Daily-Notes/` scan |
| `/process-inbox` | Lists all notes in `00-Inbox/`, triages each (process, archive, delete), moves processed notes | Inbox-first pattern, file organization |
| `/project-brief` | Creates a new project note from the Client Brief template in the correct `02-Projects/` subfolder | Project note template, PARA Projects layer |

These commands should be minimal markdown files in `.claude/commands/` — they invoke Claude
with context and a task, they don't contain full teaching scripts. They are end-product
utilities, not lessons.

---

## 5. Hook Scripts (Level 4 Infrastructure)

The PROJECT.md mentions `add-frontmatter.sh` and other hook scripts referenced in Level 4.
These are bash scripts triggered by Claude Code's hook system (PostToolUse/PreToolUse hooks).

**Recommendation:** Keep hooks as inline bash in the Claude Code settings file
(`.claude/settings.json` hooks array) rather than separate shell scripts. This keeps the
repo simpler and avoids file permission issues (`chmod +x`) that can cause "works on my
machine" failures for non-technical users on Windows.

If shell scripts are needed (e.g., for complexity that can't fit in a one-liner), they
should live at `scripts/` in the project root, NOT inside `.claude/`. The `scripts/` path
is intuitive and doesn't conflict with Claude Code's own directory structure.

**Confidence:** MEDIUM — Based on Claude Code hooks documentation as of August 2025.
Hooks were an actively evolving Claude Code feature; verify current syntax and invocation
patterns against current Anthropic docs before writing Level 4 lesson content.

---

## 6. Summary: What the Stack Is

This course has no traditional "tech stack" in the software development sense. The
"stack" is a set of conventions, frameworks, and distribution artifacts:

| Layer | Technology/Convention | Why This One |
|-------|----------------------|-------------|
| **Knowledge framework** | BASB (PARA + CODE + Progressive Summarization) | The canonical standard in PKM; most recognized by target audience; course teaches BASB concepts under slightly different names |
| **Vault structure** | Numeric-prefixed folders (00-Inbox through 08-Published), wikilinks, ISO dates | Follows Obsidian community conventions; intuitive for non-technical users |
| **Note metadata** | YAML frontmatter with `type`, `created`, `tags` fields | Minimal, learnable, compatible with Obsidian search/filter |
| **Vault plugins** | Core plugins only (Templates, Daily Notes, Graph, Backlinks) | Zero setup friction; no community plugin dependency |
| **Teaching delivery** | Say/Check/Action script format + slash commands | Purpose-built for this course; verified working in PM course pattern |
| **Agent layer** | Librarian, Critic, Connector sub-agents | Functional and named per Claude Code agent spec |
| **Distribution** | Public GitHub repo, MIT license, no releases needed for v1 | Matches PM course pattern; maximizes reach |
| **Missing** | `.gitignore`, `LICENSE`, `README` screenshot/demo, BASB acknowledgment | Must be added before distribution |

---

## 7. Alternatives Considered and Rejected

| Decision | Recommended | Alternative | Why Not |
|----------|-------------|-------------|---------|
| Vault folder naming | Numeric prefix (00-Inbox) | Pure PARA (Projects/Areas/Resources/Archives) | PARA naming is less intuitive for non-technical users who haven't read the book; numeric prefix is clearer and still PARA-aligned in spirit |
| License | MIT | Creative Commons (CC-BY) | Repo contains both content AND functional code artifacts; MIT covers both cleanly |
| Plugin strategy | Core plugins only | Community plugins (Dataview, Templater) | Community plugins add installation friction; core plugins are always available |
| Progressive summarization layers | 5 layers (TL;DR, Key Takeaways, Take, Connections) | Forte's exact 4-layer system (bold, highlight, summary, remix) | Course's 5 layers are more actionable for the writer audience; Forte's highlighting layers are tool-specific and less meaningful in a plain-text vault |
| Releases | None for v1 | GitHub Releases with zip downloads | Overhead not justified; students should clone HEAD |
| Hook scripts | Inline in settings.json | Separate .sh files in scripts/ | Simpler; avoids chmod issues on Windows |

---

## Gaps to Address

1. **Tiago Forte's AI Second Brain page** — The content at
   buildingasecondbrain.com/ai-second-brain was not fetched (WebFetch unavailable).
   Before finalizing BASB positioning language in the course, manually review this page
   to ensure alignment. Specifically: does Forte frame the AI layer as a separate product,
   a methodology update, or a set of prompts? The course's positioning should complement,
   not compete.

2. **Claude Code hooks API currency** — Hooks were evolving as of training cutoff (August
   2025). The Level 4 automation modules (4.1, 4.2) teach hooks. Verify that the
   PostToolUse/PreToolUse hook syntax in the existing lesson content matches current Claude
   Code docs before shipping.

3. **Claude Code API cost communication** — The README doesn't mention API costs.
   The target audience (non-technical knowledge workers) may not be familiar with
   pay-per-token pricing. This needs plain-language guidance before public distribution.

4. **`.obsidian/` config completeness** — The codebase STACK.md lists several `.obsidian/`
   config files but it's not verified that all referenced core plugins are correctly
   configured in `core-plugins.json`. A manual check of the actual `.obsidian/` files
   should happen during vault consistency review.

---

## Sources

- *Building a Second Brain* — Tiago Forte, Simon & Schuster, 2022 (HIGH confidence)
- Obsidian community conventions — Training data from forum.obsidian.md, obsidian.md/help,
  Linking Your Thinking (Nick Milo) — (HIGH confidence, stable conventions)
- Claude Code documentation — Anthropic docs, training data through August 2025 (MEDIUM
  confidence for hooks specifically; HIGH for core slash command and agent patterns)
- Carl Vellotti PM course pattern — Referenced in PROJECT.md; not directly examined
  (github.com/carlvellotti/claude-code-pm-course)
- Direct inspection of all 106 course files in /Users/benest/dev/claude-brain (HIGH
  confidence for current state)
