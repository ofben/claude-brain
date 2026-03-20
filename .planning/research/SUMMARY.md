# Project Research Summary

**Project:** Claude Brain — Polish & Ship (Interactive PKM Course)
**Domain:** Open-source interactive course — personal knowledge management + AI tooling distribution
**Researched:** 2026-03-20
**Confidence:** HIGH (all findings derived from direct codebase inspection; BASB and Obsidian conventions from HIGH-confidence training data)

## Executive Summary

Claude Brain is a 24-module slash-command-driven course teaching personal knowledge management (PKM) using Obsidian and Claude Code. It follows the same distribution pattern as open-source educational repos (clone, open vault, run `/start-0-1`) and positions itself at the intersection of Tiago Forte's Building a Second Brain (BASB) methodology and Claude Code's AI capabilities. The course is structurally sound — its teaching architecture (Say/Check/Action scripts, pre-seeded vault, fictional persona Alex Rivera) is well-designed and largely complete. The work ahead is not building new systems but rigorously polishing what exists, wiring up a small number of missing artifacts, and preparing the repo for public distribution.

The recommended approach is a sequenced polish-and-ship effort organized around a strict build order: establish ground truth (vault consistency, creator context) before reviewing content, review content before adding BASB integration, and complete all enhancements before final distribution prep. This order matters because cascade dependencies run in one direction — vault file names cascade into lesson script references, lesson script content cascades into pre-built command files, and everything cascades into README accuracy. Doing steps out of order creates rework. The course has no traditional "tech stack" beyond conventions: BASB frameworks, Obsidian community patterns (numeric-prefix folders, wikilinks, core plugins only), and standard GitHub distribution practices (MIT license, .gitignore, README with Quick Start).

The critical risks are technical integrity issues that will reach students if not fixed: four phantom vault note references that lesson scripts treat as pre-seeded but don't exist; a literal `[Note Name]` placeholder in module 2.5 that Claude Code will deliver verbatim; a frontmatter tag format inconsistency between templates (scalar) and actual vault notes (array); and missing .gitignore and LICENSE files that are blockers for legitimate open-source distribution. These are all solvable with targeted edits and a systematic audit. The secondary risks — hardcoded March 2026 dates aging out, Windows incompatibility in the shell hook module, and progressive summarization slightly misattributed to Forte — require more care but have clear mitigations.

---

## Key Findings

### Recommended Stack

The course has no software build stack. Its "stack" is a set of frameworks and distribution conventions. BASB (PARA + CODE + Progressive Summarization) is the canonical PKM methodology this course builds on — it is stable, widely recognized, and provides the conceptual vocabulary that positions the course favorably with its target audience. Obsidian community conventions (numeric-prefix folders, YAML frontmatter, wikilinks, core-plugins-only strategy) are mature, stable, and already correctly applied in the vault. GitHub distribution follows the standard open-source educational repo pattern: MIT license, .gitignore covering Obsidian workspace state, no releases needed for v1 (students clone HEAD).

**Core conventions:**
- **BASB (PARA + CODE):** Knowledge framework — the conceptual foundation the course teaches and must explicitly acknowledge
- **Obsidian core plugins only:** Zero setup friction for non-technical audience; Templates, Daily Notes, Graph, Backlinks enabled
- **Numeric-prefix vault folders (00–08):** Obsidian community standard for sort order; more intuitive than raw PARA labels for non-technical users
- **YAML frontmatter with `type`, `created`, `tags`:** Minimal, learnable, compatible with Obsidian search/agent scanning
- **MIT License:** Covers hybrid code+content repo; maximally permissive for open-source distribution
- **No community plugins:** Avoids installation friction and version-compatibility failures for students

**Critical version/currency flag:** Claude Code hooks (PostToolUse/PreToolUse) were actively evolving as of training cutoff (August 2025). The Level 4 hook modules must be verified against current Anthropic docs before shipping.

### Expected Features

**Must have (blockers for public release):**
- Vault consistency audit — all `[[wikilinks]]` in lesson scripts resolve to existing vault files; phantom notes created or scripts corrected
- Module 2.5 completion — `[Note Name]` placeholder replaced with real vault note reference
- Vault TODO cleanup — three files have student-visible TODO markers that break narrative immersion
- `.gitignore` — missing entirely; needed to exclude `.obsidian/workspace.json` and `.DS_Store`
- `LICENSE` — repo is technically "all rights reserved" without it; MIT is the correct choice
- `.gitkeep` files in `vault/07-MOCs/` and `vault/08-Published/` — Git won't preserve empty folders

**Should have (high-value differentiators):**
- BASB integration — explicitly acknowledge Tiago Forte, name CODE and PARA, label progressive summarization as an extension of Forte's 4-layer technique, add "BASB + AI" framing to modules 1.1 and 4.6
- Frontmatter tag format standardization — all templates changed from scalar to array syntax (`tags: [daily-note]`)
- Pre-built utility commands — `/daily`, `/weekly-review`, `/process-inbox`, `/project-brief` shipped as real `.claude/commands/` files
- `add-frontmatter.sh` pre-shipped at `.claude/scripts/`
- Content quality review of all 24 modules — voice consistency, jargon check, technical accuracy of Level 4 hook content
- `vault/PROGRESS.md` — lightweight markdown checklist for students to track completion
- README additions — "How it works" section, API cost notice, acknowledgments section, license badge

**Defer to v2+:**
- `/brainstorm [topic]` command — new capability, not polish
- EDUCATOR_GUIDE.md / CONTRIBUTING.md — ecosystem completeness, not launch blockers
- GitHub issue templates — add after community exists
- Automated link checking / CI — manual grep audit is sufficient for v1
- Progress tracking database — markdown checklist achieves 80% of value at 0% complexity

### Architecture Approach

The work decomposes into three distinct components with strict cascade dependencies between them. Component A (Content Review) is purely editorial — it modifies existing files in `lesson-modules/` and `vault/` without changing structure. Component B (Enhancement) creates new files: BASB insertions in existing scripts, pre-built slash commands, the hook script, and .gitignore. Component C (Distribution Prep) modifies README.md, adds LICENSE, and verifies the "clone to working course" promise. The critical dependency is that Component A must complete before B, and both must complete before C — reviewing scripts against a vault with broken links, then modifying those scripts for BASB integration, then verifying the README all point to the same files, creates a single coherent chain.

**Major components:**
1. **Component A: Content Review** — Vault consistency, creator context verification, 24-module script review; establishes ground truth before any changes
2. **Component B: Enhancement** — BASB integration (additive insertions), utility command files, hook script extraction, .gitignore creation
3. **Component C: Distribution Prep** — README polish, LICENSE, works-out-of-the-box verification, course-structure.json time accuracy (465 vs 450 minute discrepancy)

### Critical Pitfalls

1. **Phantom notes in lesson scripts** — Modules 2.2, 2.3, and 3.5 reference `[[AI as Extended Memory]]`, `[[AI and Creative Work]]`, `[[Client Work Dashboard]]`, `[[GitLab Async Communication Model]]` as if pre-seeded; none exist. Prevention: audit every `[[link]]` in all 24 scripts against actual vault file list; create missing stub notes or correct scripts.

2. **Module 2.5 literal placeholder text** — Line 135 contains `[Note Name]` which Claude Code will deliver verbatim to students. Prevention: identify orphan notes (e.g., `Quick thought - AI and memory.md`) to substitute, or restructure the Action block to dynamically find orphan notes.

3. **Frontmatter tag format split** — Templates use scalar (`tags: daily-note`); all vault notes use array (`tags: [daily]`). The Librarian agent will flag student notes as malformed. Prevention: standardize all templates to array syntax before distribution.

4. **Hardcoded March 2026 dates age out immediately** — Project deadlines in creator-context and vault notes will read as past-due to any student cloning after April 2026. Prevention: replace urgency-generating specific dates with relative phrases ("end of this month," "this Friday") where possible; add README note that vault is a fictional snapshot from March 2026.

5. **Windows incompatibility in hook module** — Module 4.2 teaches `add-frontmatter.sh` (bash); README claims cross-platform support. Windows students will hit hook failure during the module's "magical" payoff moment. Prevention: add Windows-specific alternative path (Git Bash / WSL) to module 4.1 or 4.2; at minimum, document the platform requirement.

---

## Implications for Roadmap

Based on combined research, the strict build order from ARCHITECTURE.md defines a natural phase structure. This is a polish-and-ship project, not a greenfield build — phases are work streams, not feature increments.

### Phase 1: Ground Truth — Vault and Creator Context
**Rationale:** All lesson scripts reference vault files by exact name and creator context by exact detail. Any corrections here cascade forward. Doing this first prevents rework in all later phases.
**Delivers:** Verified vault state (all wikilinks audited, frontmatter standardized, empty folders given .gitkeep files, stale dates addressed), creator context verified against lesson scripts
**Addresses:** Table stakes features — vault cross-reference integrity, consistent frontmatter, date coherence
**Avoids:** Pitfalls 1 (phantom notes), 2 (tag format), 4 (stale dates), 11 (empty folders), 12 (date staleness)

### Phase 2: Content Review — All 24 Teaching Scripts
**Rationale:** With verified vault state, reviewers can assess scripts accurately — they know which wikilinks are genuinely broken vs. intentionally forward-referencing notes built during lessons. Module 2.5 completion is a hard blocker for distribution.
**Delivers:** 24 modules reviewed for SCRIPT_INSTRUCTIONS.md compliance, non-technical language, narrative accuracy, and correct next-module handoffs; module 2.5 placeholder completed
**Addresses:** Table stakes features — consistent teaching scripts, Say/Check/Action format, non-technical language
**Avoids:** Pitfalls 3 (module 2.5 placeholder), 7 (implicit prerequisites), 10 (silent teaching failure)

### Phase 3: BASB Integration
**Rationale:** BASB insertions modify reviewed scripts. Running this after Phase 2 means layering onto clean, verified content rather than editing scripts that may change again.
**Delivers:** BASB acknowledgment in modules 1.1 and 4.6 (framing), CODE workflow labeled in module 2.1, progressive summarization correctly attributed (Forte's 4-layer technique + course extensions) in module 2.4, PARA relationship explained in module 1.1, "intermediate packets" concept named in module 2.4
**Addresses:** Differentiator features — BASB + AI synthesis positioning, CODE process visible in course, progressive summarization labeled correctly
**Avoids:** Pitfalls 5 (progressive summarization misattribution), 6 (PARA folder misalignment without explanation)

### Phase 4: Enhancements and Infrastructure
**Rationale:** Pre-built utility commands are extracted from reviewed/BASB-integrated lesson scripts (4.5 and 4.2). These can run in parallel with Phase 3.
**Delivers:** Four utility commands as real files in `.claude/commands/`; `add-frontmatter.sh` at `.claude/scripts/`; `.gitignore`; `vault/PROGRESS.md`
**Addresses:** Differentiator features — ready-to-use post-course commands, pre-shipped hook script
**Avoids:** Pitfall 8 (.gitignore missing), platform friction from missing pre-built artifacts

### Phase 5: Distribution Prep and Verification
**Rationale:** Final integration phase. README accuracy depends on all command files existing. Works-out-of-the-box verification is the end-to-end system test that can only run when all prior phases are complete.
**Delivers:** README polished (Quick Start verified, "How it works" added, API cost notice, acknowledgments, license badge); MIT LICENSE file; course-structure.json time discrepancy resolved (450 vs 465 minutes); full clone-to-working verification pass
**Addresses:** Table stakes features — GitHub repo polish, works out of the box
**Avoids:** Pitfalls 9 (Windows/platform documentation), 14 (missing license and attribution)

### Phase Ordering Rationale

- **Vault before scripts:** Scripts reference vault files by hard-coded name; verifying the vault first is the only way to review scripts accurately
- **Review before enhancement:** BASB integrations are layered onto scripts; integrating onto unreviewed scripts risks double-editing or conflicting changes
- **Enhancements before distribution:** README must accurately describe command files that exist; hook script must be present for works-out-of-the-box verification to pass
- **Distribution last:** The final verification step validates everything end-to-end and can only be meaningful after all other phases are complete

### Research Flags

Phases needing deeper research or validation during planning:
- **Phase 3 (BASB Integration):** Progressive summarization attribution must be verified against Forte's actual writing at fortelabs.com before publishing — the exact layer count and naming should be cross-referenced. The AI-second-brain page at buildingasecondbrain.com/ai-second-brain was not fetched during research; review before finalizing BASB positioning language.
- **Phase 4 (Hook Scripts):** Claude Code hooks (PostToolUse/PreToolUse) were evolving as of training cutoff (August 2025). Verify current hook syntax against Anthropic docs before finalizing module 4.2 content and the pre-shipped `add-frontmatter.sh`.

Phases with standard, well-documented patterns (skip additional research):
- **Phase 1 (Vault Audit):** Grep-based audit of wikilinks; no research needed — just execution
- **Phase 2 (Script Review):** SCRIPT_INSTRUCTIONS.md defines the standard; review is judgment, not research
- **Phase 5 (Distribution Prep):** MIT license, .gitignore contents, and README conventions are all HIGH-confidence standard patterns

---

## Confidence Assessment

| Area | Confidence | Notes |
|------|------------|-------|
| Stack | HIGH | BASB frameworks are stable and book-published; Obsidian conventions are mature community standards; GitHub distribution patterns are well-established. Minor flag on Claude Code hooks API currency. |
| Features | HIGH | All findings are from direct codebase inspection. Feature list and priorities derived from actual file analysis, not assumptions. |
| Architecture | HIGH | Work architecture (Components A/B/C and build order) derived entirely from direct inspection of all 106 course files. Cascade rules are observable facts about file references. |
| Pitfalls | HIGH | All critical pitfalls have direct codebase evidence — specific file names, line numbers, and grep patterns provided. The progressive summarization attribution concern is MEDIUM (requires web verification). |

**Overall confidence:** HIGH

### Gaps to Address

- **Tiago Forte's AI Second Brain page:** The content at buildingasecondbrain.com/ai-second-brain was not fetched (web access unavailable during research). Review before finalizing module 1.1 and README BASB positioning to ensure the course complements rather than conflicts with Forte's current framing.
- **Claude Code hooks API currency:** Hooks were evolving at training cutoff. Verify PostToolUse/PreToolUse syntax and invocation patterns against current Anthropic docs before writing or finalizing Level 4 module content.
- **API cost communication:** README does not mention Claude Code API costs. The non-technical target audience (knowledge workers, not developers) may not understand pay-per-token pricing. A plain-language paragraph is needed before public distribution.
- **Progressive summarization layer count:** Module 2.4 and 3.4 attribute "five layers" to Forte, but Forte's original technique has four layers. Attribution must be corrected or the additional layers must be labeled as course extensions — requires verification against primary sources.
- **`.obsidian/` config completeness:** Core plugin configuration files exist but completeness has not been verified against the list of plugins the course depends on. Validate during Phase 5 by opening vault in Obsidian and checking plugin status.

---

## Sources

### Primary (HIGH confidence)
- Direct codebase inspection: all 24 teaching scripts, 38 vault notes, `.claude/` config, `lesson-modules/`, `creator-context/`, `course-structure.json` — 2026-03-20
- `.planning/codebase/CONCERNS.md` — documented fragility analysis with specific file evidence
- *Building a Second Brain* — Tiago Forte, Simon & Schuster, 2022 — PARA, CODE, Progressive Summarization definitions
- Obsidian community conventions — forum.obsidian.md, obsidian.md/help, Linking Your Thinking (Nick Milo) — folder structure, frontmatter, wikilinks, plugin strategy

### Secondary (MEDIUM confidence)
- Claude Code documentation — Anthropic docs, training data through August 2025 — slash command patterns, agent spec, hook architecture (hooks section MEDIUM due to active evolution)
- Open-source educational repo conventions — GitHub training data — LICENSE, .gitignore, README patterns for course repos

### Tertiary (LOW confidence / needs validation)
- Tiago Forte AI Second Brain current positioning (buildingasecondbrain.com/ai-second-brain) — not fetched; needs manual review before BASB integration language is finalized
- PKM course competitive landscape — training data, evolving market; specific competitor details not verified

---
*Research completed: 2026-03-20*
*Ready for roadmap: yes*
