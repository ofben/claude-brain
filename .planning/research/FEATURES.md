# Feature Landscape

**Domain:** Interactive open-source educational course — PKM (personal knowledge management) with AI tooling
**Project:** Claude Brain: Build Your Second Brain with Claude Code + Obsidian
**Researched:** 2026-03-20
**Confidence:** MEDIUM — based on direct codebase audit, BASB framework knowledge (training data, August 2025 cutoff), and open-source course conventions. Web access was unavailable; BASB and GitHub polish findings are HIGH confidence from training. Reference repo (carlvellotti/claude-code-pm-course) was not accessible.

---

## Table Stakes

Features users expect. Missing = product feels incomplete, broken, or untrustworthy.

### 1. Consistent, Complete Teaching Scripts (24/24 modules)

| Feature | Why Expected | Complexity | Current Status |
|---------|--------------|------------|----------------|
| Every module delivers on its promise | Students will follow the exact sequence; one broken module breaks the whole chain | Low (editing, not building) | PARTIAL — module 2.5 has a TODO marker at line 124; several modules have jargon before explanation |
| Consistent teaching voice | SCRIPT_INSTRUCTIONS.md defines the standard; deviations erode trust | Low | PARTIAL — some modules (3.1, 4.2) use technical terms without the non-technical framing |
| Non-technical language throughout | Target audience is explicitly non-technical; "directory" vs "folder" matters | Low | PARTIAL — language conventions exist but aren't uniformly applied |
| Each module ends with clear next-module instruction | Students navigate solely via in-lesson prompts | Low | Good — present in all reviewed modules |
| Say/Check/Action format respected | Defined in SCRIPT_INSTRUCTIONS.md; any deviation breaks the interactive contract | Low | Good overall |

**Dependency:** Vault consistency must be verified before teaching script quality pass — scripts reference vault files by exact name.

---

### 2. Vault Cross-Reference Integrity

| Feature | Why Expected | Complexity | Current Status |
|---------|--------------|------------|----------------|
| All [[wikilinks]] resolve to existing notes | Broken links in Obsidian show up as red text; immediately undermines confidence | Low (audit + fix) | UNKNOWN — not yet verified |
| Frontmatter consistency across all pre-seeded notes | Templates and agents depend on `type`, `tags`, `date` fields; inconsistent frontmatter causes agent failures | Low | UNKNOWN |
| Dates in daily notes are internally consistent | Notes reference "today" in lesson-specific ways; if dates don't match each other, the Alex Rivera narrative falls apart | Low | PARTIAL — dates are 2026-03-10 to 2026-03-19, which is coherent but hardcoded |
| No orphan notes (notes with no links in or out) | Obsidian graph view is used in module 2.5 and 3.3; orphan notes make the graph look broken | Low | UNKNOWN |
| Vault file names match exactly what lesson scripts expect | Teaching scripts reference files by hard-coded path (e.g., `vault/03-Research/AI Tools Landscape 2026.md`) | Low | UNKNOWN — audit needed |

**Dependency:** Vault audit must happen before any vault file renames or additions.

---

### 3. Works Out of the Box (Clone → Open → /start-0-1 succeeds)

| Feature | Why Expected | Complexity | Current Status |
|---------|--------------|------------|----------------|
| `.gitignore` that excludes workspace artifacts | `.obsidian/workspace.json`, `.DS_Store`, `*.log` — without this, git status is noisy and commits are polluted | Low | MISSING |
| Pre-committed `.obsidian/` config (app.json, appearance.json, hotkeys.json) | Students opening vault in Obsidian should see a properly-configured vault, not defaults | Low | EXISTS — but risk of version drift |
| README Quick Start that actually works | The README is the first impression; steps must be correct, complete, and tested | Low | EXISTS — appears correct but untested |
| No dangling references in lesson scripts | Scripts reference `.claude/scripts/add-frontmatter.sh` and similar files that may not exist pre-course | Medium | RISK — scripts created during lessons may be referenced before creation |

---

### 4. GitHub Repo Polish Basics

| Feature | Why Expected | Complexity | Current Status |
|---------|--------------|------------|----------------|
| LICENSE file | Any "open source" repo without a license is legally ambiguous; contributors and forks need clarity | Low | MISSING |
| Clear README with setup instructions | Already exists and is well-written | Low | EXISTS |
| .gitignore | Standard for any repo | Low | MISSING |

---

### 5. BASB Conceptual Grounding Visible in Course

| Feature | Why Expected | Complexity | Current Status |
|---------|--------------|------------|----------------|
| PARA naming acknowledged or explained | The vault folder structure (Projects/Research/References/Archive) maps closely to PARA; students who know BASB will notice, those who don't need context | Low | PARTIAL — module 1.1 FAQ mentions BASB briefly but doesn't integrate it |
| CODE process (Capture → Organize → Distill → Express) referenced by name | This is the most actionable BASB framework for writers; the course teaches exactly this workflow without naming it | Low | MISSING — the concepts are taught but not named |
| Progressive summarization labeled as such | Module 2.4 uses the term and teaches it correctly — this is a key differentiator to preserve and make more prominent | Low | EXISTS — well-done in module 2.4 |
| "Second brain" concept introduced with appropriate credit | Tiago Forte coined the term; not crediting it looks sloppy to anyone in the PKM space | Low | PARTIAL — module 1.1 mentions BASB in one FAQ answer but doesn't credit Forte in the main content |

---

## Differentiators

Features that set this course apart. Not expected from typical PKM tutorials, but high value.

### 1. BASB + AI Synthesis Positioning

**Value proposition:** This course occupies a unique position: it takes the most well-known second brain framework (BASB by Tiago Forte) and shows concretely how Claude Code changes what's possible. No other course in this space does both.

| Feature | Value Proposition | Complexity | Notes |
|---------|-------------------|------------|-------|
| Explicit "BASB + AI" framing in README and module 1.1 | Positions the course to the largest audience of second brain practitioners; "this is BASB for the AI era" is a compelling hook | Low | Requires rewrite of ~2 paragraphs |
| CODE walkthrough moment in module 1.4 or 2.4 | Label the "aha" moment as Capture → Organize → Distill → Express; this names what the student is experiencing and connects it to prior knowledge | Low | One additional paragraph in an existing module |
| PARA acknowledgment with extension | Acknowledge PARA (Projects/Areas/Resources/Archives), show how the vault folder structure is PARA-derived, then show how AI adds a dimension PARA didn't have | Low | ~1 paragraph in module 1.1 or a standalone note in vault/05-References/ |
| "Intermediate packets" concept integrated into module 2.4 | Forte's intermediate packets (outputs designed to be reused) are what progressive summarization produces; naming this explicitly gives students a framework to take beyond the course | Low | One addition to module 2.4's wrap-up |

**Dependency:** None — all additive to existing modules.

---

### 2. Ready-to-Use Utility Slash Commands (Post-Course Value)

**Value proposition:** Most courses end when lessons end. These commands ensure the course keeps paying dividends every day after graduation.

| Feature | Value Proposition | Complexity | Notes |
|---------|-------------------|------------|-------|
| `/daily` — create daily note | Replaces a manual multi-step workflow; becomes a habit anchor | Low | Module 4.5 creates this during the lesson — needs to exist as a ready-to-use command file at repo root too |
| `/weekly-review` — synthesize the week | The highest-value PKM habit; Claude dramatically lowers the friction | Low | Same as above |
| `/process-inbox` — triage inbox | Core BASB/GTD workflow; automates the most avoided task | Low | Same as above |
| `/project-brief` — project status snapshot | Unique to this course's creator persona but generalizable | Low | Same as above |
| `/brainstorm [topic]` — ideation against vault context | Combines Claude's synthesis with vault's personal context | Medium | Not in current course; would be a new command |

**Dependency:** The four core commands are already defined in module 4.5's teaching script. The key feature is shipping them as ready-to-use files at the repo root, not only as things created during the lesson.

---

### 3. add-frontmatter.sh Shipped as Ready Hook Script

**Value proposition:** Module 4.2 creates this script during the lesson. But students who want to use it immediately (or who clone the repo as a template) need it pre-populated.

| Feature | Value Proposition | Complexity | Notes |
|---------|-------------------|------------|-------|
| `.claude/scripts/add-frontmatter.sh` pre-created | Level 4 students can use it before hitting module 4.2; returning students have it available | Low | Copy the script from module 4.2's teaching content |
| Script is documented in README | Discoverability for users who explore the repo without doing the course | Low | 1-2 sentences in README |

---

### 4. Content Quality Validation Pass

**Value proposition:** AI-generated teaching material has characteristic failure modes (tonal inconsistency, over-explanation in some places, under-explanation in others, skipped error handling). Humans catching these is what separates a polished course from a generated one.

| Feature | Value Proposition | Complexity | Notes |
|---------|-------------------|------------|-------|
| All 24 modules reviewed for tone consistency | Course was generated in one session; inevitable variation in voice quality | Medium | Human review, not automated |
| Check that every "Check:" point is a real stopping moment | Some Check points may be rhetorical ("check for acknowledgment") vs. actual blocking waits | Low | Read-through of each module |
| Verify fallback paths in technical modules | Module 4.2 has a good fallback ("hooks may not fire mid-session") — verify all Level 4 modules have similar coverage | Medium | Modules 4.1-4.6 |
| Remove or replace student-visible TODOs in vault | vault/04-Drafts/Draft - Digital Boundaries Post 3.md, vault/00-Inbox/Meeting notes Sarah 03-15.md, vault/05-References/Invoice Tracker.md have TODO markers | Low | Direct edits to those 3 files |
| Ensure module 2.5 is complete | Has a TODO marker at line 124; incomplete content at the end of Level 2 breaks the learning arc | Medium | Requires writing teaching content |

---

### 5. Vault Consistency Validation Approach

**Value proposition:** Vault pre-seeding has tight coupling to lesson scripts. A single renamed file breaks multiple modules silently.

| Feature | Value Proposition | Complexity | Notes |
|---------|-------------------|------------|-------|
| Audit: list every vault file reference in all 20 lesson scripts and verify each path exists | Prevents silent breaks | Medium | Grep all lesson-modules/**/*.md for `vault/` paths, compare to actual vault contents |
| Verify all [[wikilinks]] in vault notes resolve | Obsidian renders broken links visually; they undermine the "clean vault" impression | Low | Can be done manually or with a simple grep for `[[` and cross-referencing file names |
| Standardize frontmatter across all 38 vault files | Fields used: `title`, `date`, `tags`, `type`, `source`, `topic` — inconsistency causes agent failures | Low | Read each file, normalize |
| Check date consistency in daily notes | Current daily notes span 2026-03-10 to 2026-03-19; verify project deadlines in creator-context/PROJECTS.md align (they reference March 20/25/27/28 deadlines) | Low | Quick manual check |
| Validate .obsidian/ config is correct and complete | Templates plugin, Daily Notes plugin, Graph settings — must be pre-configured for lessons to work | Low | Open vault in Obsidian and verify plugins are active |

**Approach for validation:** The most reliable method is a two-pass grep:
1. Pass 1: extract all `vault/` paths from lesson-modules/**/*.md
2. Pass 2: for each extracted path, verify the file exists in the repo
This can be done manually or with a shell one-liner. No CI needed for v1.

---

### 6. Educator / Contributor Materials

**Value proposition:** Open source means fork-ability. An EDUCATOR_GUIDE.md and CONTRIBUTING.md let the community improve and extend the course.

| Feature | Value Proposition | Complexity | Notes |
|---------|-------------------|------------|-------|
| CONTRIBUTING.md — how to submit fixes | Reduces friction for contributors; sets expectations about PRs, issue format | Low | ~1 page document |
| EDUCATOR_GUIDE.md — how to modify the course | The hardest part of forking an interactive course is understanding the architecture; this file addresses it | Medium | Describe: how to add a module, how to update vault pre-seeding, how to update creator context |
| GitHub issue templates — bug and content improvement | Structures incoming feedback; "broken link in module X" vs "content suggestion" need different templates | Low | 2 simple YAML files in .github/ISSUE_TEMPLATE/ |

---

### 7. Progress Waymarking (Lightweight, No Code Required)

**Value proposition:** Students who take breaks won't know where they left off. A simple, low-tech solution keeps them on track.

| Feature | Value Proposition | Complexity | Notes |
|---------|-------------------|------------|-------|
| `vault/PROGRESS.md` — a note students can update as they go | "Check off modules as you complete them" — a markdown checklist the student maintains | Low | One file with a checklist of all 24 modules |
| Module completion noted in daily notes | The `/daily` command could optionally include "last module completed" as a field | Low | Optional addition to the daily command |

**Note:** Full progress tracking is listed under Anti-Features (too much complexity for v1). This waymarking approach requires zero infrastructure and fits the vault-native paradigm.

---

## Anti-Features

Features to explicitly NOT build for v1. These add complexity without proportional value, or conflict with the course's design constraints.

### 1. Automated CI/CD Testing

**Why avoid:** The course is interactive and experiential. No automated test can validate whether the teaching content lands, whether the pacing is right, or whether a student completes a Check point. Manual playtest is the correct validation method.

**What to do instead:** One complete end-to-end playtest by a human following the course from /start-0-1 to /start-4-6, with issues captured in a doc.

---

### 2. Website / Landing Page

**Why avoid:** PROJECT.md explicitly rules this out. A GitHub repo is the distribution channel. A landing page is a different product.

**What to do instead:** Invest in README quality — it IS the landing page for this product.

---

### 3. Community Infrastructure (Discord, Forum, Discussions)

**Why avoid:** Community is a full-time maintenance obligation. For a solo-maintained open source repo, GitHub Issues is the right community surface.

**What to do instead:** Enable GitHub Discussions as a low-maintenance alternative to a forum, if desired. Does not require any code.

---

### 4. Paid/Gating Features

**Why avoid:** The course is explicitly open source and free. Any gating creates friction that contradicts the distribution model.

---

### 5. Automated Vault Link Checking (CI-based linter)

**Why avoid:** Obsidian's wiki-link syntax is non-standard; existing markdown linters don't parse it correctly. Building a custom linter is over-engineering for v1.

**What to do instead:** Manual audit with grep — extract all `[[link]]` patterns from vault notes, compare to file names. One-time effort.

---

### 6. Obsidian Plugin Installer / Setup Assistant

**Why avoid:** Plugins are managed by Obsidian directly; automating plugin installation requires deeper Obsidian integration than the course scope warrants. The `.obsidian/` config handles plugin settings; students just need to accept the committed config.

**What to do instead:** Document in module 0.1 which plugins need to be enabled and how (3-4 sentences).

---

### 7. Multilingual Versions

**Why avoid:** Course content is deeply language-dependent (the Alex Rivera narrative, the PKM terminology). Translations require recreating the entire narrative in each language, not just translating words.

---

### 8. Full PARA Implementation (Areas + Archive folders)

**Why avoid:** The vault uses a hybrid structure (00-Inbox, 01-Daily-Notes, 02-Projects, 03-Research, 04-Drafts, 05-References, 06-Templates, 07-MOCs, 08-Published) that is pedagogically clearer than strict PARA for a writing-focused persona. Refactoring to strict PARA would require rewriting all 24 modules and re-seeding the vault. The value is marginal.

**What to do instead:** Acknowledge PARA in module 1.1 and explain how the vault structure relates to it, without forcing a strict PARA renaming.

---

### 9. Zettelkasten Numbering System

**Why avoid:** Luhmann-style ID numbering (e.g., 20231015-142305) is a legitimate PKM approach but is counter to Obsidian's link-based paradigm and would confuse non-technical users. The course already introduces Zettelkasten concepts (fleeting/literature/permanent notes) without the numbering overhead.

---

### 10. Progress Tracking Database (SQLite, JSON, or API)

**Why avoid:** Any progress tracking that requires a database or external API breaks the "just clone and run" setup. The vault-native waymarking approach (a markdown checklist) achieves 80% of the value at 0% of the complexity.

---

## Feature Dependencies

```
Vault consistency audit
  → Content quality review (can't review scripts accurately if vault references are broken)
  → Playtest (can't playtest if vault links are broken)

BASB integration writing
  → No dependencies — purely additive to existing module content

Utility slash commands (shipped as files)
  → Exists in module 4.5 teaching content — copy-out, not build

add-frontmatter.sh (shipped as hook)
  → Exists in module 4.2 teaching content — copy-out, not build

.gitignore creation
  → No dependencies — standalone file

LICENSE creation
  → No dependencies — standalone file

CONTRIBUTING.md / EDUCATOR_GUIDE.md
  → Should happen after architecture is stable (after vault audit + content review)

GitHub issue templates
  → No dependencies — standalone YAML files
```

---

## MVP Recommendation

For the "polish and ship" milestone, prioritize in this order:

**Must ship (blockers for public release):**
1. Vault consistency audit — broken links and mismatched file references undermine everything
2. Module 2.5 completion — incomplete content at end of Level 2 is a critical gap
3. Vault TODO cleanup — three files have student-visible TODOs that break narrative immersion
4. .gitignore — standard; missing from current repo
5. LICENSE — legally necessary for "open source" distribution

**High-value polish (strong differentiators):**
6. BASB integration — acknowledge Tiago Forte, name CODE and PARA, label intermediate packets in 2.4
7. Utility commands shipped as ready files — `/daily`, `/weekly-review`, `/process-inbox`, `/project-brief` in `.claude/commands/`
8. `add-frontmatter.sh` pre-shipped in `.claude/scripts/`
9. Content quality review of all 24 modules (voice consistency, jargon check)
10. `vault/PROGRESS.md` — lightweight progress waymarking

**Ecosystem completeness (good for community):**
11. CONTRIBUTING.md
12. EDUCATOR_GUIDE.md
13. GitHub issue templates (2 templates)

**Defer:**
- `/brainstorm` command — new capability, not polish
- Any progress tracking beyond the markdown checklist
- Automated linting

---

## Sources

- Direct codebase audit: `/Users/benest/dev/claude-brain/` (2026-03-20)
- `.planning/codebase/CONCERNS.md` — identified broken/incomplete content locations
- `.planning/codebase/ARCHITECTURE.md` — system structure
- Training knowledge: Tiago Forte, "Building a Second Brain" (BASB framework) — HIGH confidence, well-documented framework
  - PARA: Projects, Areas, Resources, Archives
  - CODE: Capture, Organize, Distill, Express
  - Progressive Summarization: layered highlighting/summarization (Layer 1-5)
  - Intermediate Packets: reusable output units designed for future recombination
- Training knowledge: Open-source GitHub repository conventions — HIGH confidence
  - Standard files: LICENSE, CONTRIBUTING.md, CHANGELOG.md, .gitignore, issue templates
  - Standard for educational repos: EDUCATOR_GUIDE equivalent, dependency documentation
- Training knowledge: PKM course ecosystem (Obsidian Publish, digital garden repos, interactive tutorial repos) — MEDIUM confidence (market evolves quickly; specific competitor details not verified)
