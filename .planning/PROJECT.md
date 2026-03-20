# Claude Brain: Polish & Ship

## What This Is

An interactive course (24 modules, ~7.5 hours) that teaches non-technical knowledge workers how to use Claude Code + Obsidian as a "second brain." The course is already built — 106 files including teaching scripts, pre-seeded vault notes, sub-agents, slash commands, and Obsidian config. This project is about reviewing, polishing, enhancing, and preparing the course for public distribution as an open-source GitHub repository.

## Core Value

Someone can clone the repo, open `vault/` in Obsidian, run `/start-0-1` in Claude Code, and complete the entire course without hitting broken links, inconsistent content, confusing instructions, or dead ends.

## Requirements

### Validated

- ✓ 24 teaching scripts with Say/Check/Action blocks — existing
- ✓ 24 slash commands (/start-0-1 through /start-4-6) — existing
- ✓ Pre-seeded vault (~38 notes across 8 folders) — existing
- ✓ 3 sub-agents (Librarian, Critic, Connector) — existing
- ✓ Obsidian config (.obsidian/) — existing
- ✓ Creator context (Alex Rivera profile, clients, projects, style guide) — existing
- ✓ course-structure.json, CLAUDE.md, SCRIPT_INSTRUCTIONS.md, README.md — existing

### Active

- [ ] Content quality review — teaching scripts are consistent, well-paced, accurate
- [ ] Vault consistency — cross-references work, dates align, frontmatter is consistent, [[links]] resolve
- [ ] Playtest validation — run through key modules end-to-end and fix issues found
- [ ] BASB research integration — incorporate Building a Second Brain (Tiago Forte) concepts, terminology, PARA framework awareness, and "BASB meets AI" positioning
- [ ] Utility slash commands — pre-built /daily, /weekly-review, /process-inbox, /project-brief ready to use after completing the course
- [ ] Hook scripts — add-frontmatter.sh and other scripts referenced in Level 4 lessons
- [ ] .gitignore — proper gitignore for the repo (ignore .obsidian/workspace.json, .DS_Store, etc.)
- [ ] Distribution readiness — clean README, LICENSE, works-out-of-the-box experience

### Out of Scope

- Website or landing page — this is a GitHub repo, not a hosted course platform
- Paid distribution or gating — open source, free
- Video or audio content — course is delivered entirely through Claude Code text interaction
- Community features — no Discord, forum, or discussion board at launch
- Automated CI/CD testing — manual playtest is sufficient for v1

## Context

- The course follows the pattern of github.com/carlvellotti/claude-code-pm-course (PM course by Carl Vellotti)
- Target audience: non-technical knowledge workers (writers, researchers, consultants, creators)
- Fictional context: Alex Rivera, freelance writer with 3 clients + personal newsletter
- The course was generated in one session — content quality varies and needs human-in-the-loop review
- Tiago Forte's "Building a Second Brain" is the most recognized framework in this space — the course should acknowledge and build on BASB concepts (PARA, CODE, progressive summarization) while showing how Claude Code takes them further
- Distribution: public GitHub repo, people clone or download

## Constraints

- **Content**: All teaching scripts must use non-technical language ("folder" not "directory", "note" not "file")
- **Format**: Teaching scripts follow Say/Check/Action format per SCRIPT_INSTRUCTIONS.md
- **Vault**: Only vault/ contents are modified during lessons — lesson-modules/ is never touched by students
- **Dependencies**: Course requires only Obsidian (free) and Claude Code (requires API access)

## Key Decisions

| Decision | Rationale | Outcome |
|----------|-----------|---------|
| Public GitHub distribution | Matches PM course pattern, maximizes reach | — Pending |
| BASB integration via research | Tiago Forte's framework is the standard reference; course should build on it | — Pending |
| Polish before features | Get existing content solid before adding new capabilities | — Pending |
| Manual playtest over automated testing | Course is interactive and experiential; automated testing can't validate teaching quality | — Pending |

---
*Last updated: 2026-03-20 after initialization*
