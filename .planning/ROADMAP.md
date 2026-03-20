# Roadmap: Claude Brain — Polish & Ship

## Overview

The course is already built. This roadmap sequences a polish-and-ship effort across six phases with strict cascade dependencies. Vault integrity comes first because every teaching script references vault files by exact name — any corrections here cascade into all later phases. Content review follows with a verified vault as ground truth. BASB integration layers onto reviewed scripts. Skills integration adds the new module and infrastructure. Utility features build on all prior work. Distribution prep closes the loop with a works-out-of-the-box verification.

## Phases

**Phase Numbering:**
- Integer phases (1, 2, 3): Planned milestone work
- Decimal phases (2.1, 2.2): Urgent insertions (marked with INSERTED)

Decimal phases appear between their surrounding integers in numeric order.

- [ ] **Phase 1: Vault Integrity** - Audit all wikilinks, standardize frontmatter, preserve empty folders, align dates
- [ ] **Phase 2: Content Quality** - Review all 24 teaching scripts for format, accuracy, and completeness
- [ ] **Phase 3: BASB Integration** - Layer in Building a Second Brain acknowledgments and framing
- [ ] **Phase 4: Skills Integration** - Add Claude Code skills module and update sub-agent documentation
- [ ] **Phase 5: Utility Features** - Build and ship pre-made slash commands and hook script
- [ ] **Phase 6: Distribution** - Polish README, add LICENSE, verify clone-to-working end-to-end

## Phase Details

### Phase 1: Vault Integrity
**Goal**: The vault is a reliable ground truth — all wikilinks are audited, frontmatter is consistent, empty folders are Git-preserved, and dates are internally coherent
**Depends on**: Nothing (first phase)
**Requirements**: VAULT-01, VAULT-02, VAULT-03, VAULT-04, VAULT-05
**Success Criteria** (what must be TRUE):
  1. Every [[wikilink]] in teaching scripts either resolves to an existing vault note or is corrected to match reality
  2. Every [[wikilink]] in pre-seeded vault notes resolves or is intentionally unresolved (documented)
  3. All vault notes and templates use array syntax for frontmatter tags (no scalar `tags: value` remaining)
  4. vault/07-MOCs/ and vault/08-Published/ each contain a .gitkeep file so the folders survive a fresh clone
  5. Dates in creator-context files and vault notes are internally consistent (no contradictions between files)
**Plans:** 1/3 plans executed

Plans:
- [ ] 01-01-PLAN.md — Wikilink audit across teaching scripts and vault notes, produce review log
- [ ] 01-02-PLAN.md — Fix date inconsistencies and create .gitkeep files
- [ ] 01-03-PLAN.md — Standardize frontmatter tags to array syntax across vault and templates

### Phase 2: Content Quality
**Goal**: All 24 teaching scripts are complete, consistently formatted, and accurately reference vault files and navigation
**Depends on**: Phase 1
**Requirements**: CONT-01, CONT-02, CONT-03, CONT-04, CONT-05, CONT-06
**Success Criteria** (what must be TRUE):
  1. Module 2.5 teaching script contains no placeholder text — every [Note Name] or equivalent is replaced with a real vault note reference
  2. No student-visible TODO markers remain in any vault note (immersion is preserved)
  3. course-structure.json totalEstimatedMinutes equals the sum of all individual module minute estimates
  4. All 24 scripts follow the Say/Check/Action format defined in SCRIPT_INSTRUCTIONS.md with no structural deviations
  5. Every vault file path and note name referenced in any script matches the actual vault contents
  6. Each module's "next module" navigation reference points to the correct following module
**Plans**: TBD

### Phase 3: BASB Integration
**Goal**: The course explicitly acknowledges Building a Second Brain, correctly attributes its core concepts, and positions itself as the AI-era extension of Forte's method
**Depends on**: Phase 2
**Requirements**: BASB-01, BASB-02, BASB-03, BASB-04, BASB-05, BASB-06
**Success Criteria** (what must be TRUE):
  1. Module 1.1 names Building a Second Brain with proper attribution to Tiago Forte and explains the PARA framework relationship to the course's folder structure
  2. Module 2.1 labels its workflow as CODE (Capture, Organize, Distill, Express) and connects each step to a course activity
  3. Module 2.4 describes progressive summarization with the correct layer count per Forte's framework, labeling any extensions as course additions
  4. README contains an acknowledgments section crediting BASB, Zettelkasten, and LYT frameworks
  5. A reader encountering the course for the first time understands that it builds on BASB and shows how Claude Code takes PKM further
**Plans**: TBD

### Phase 4: Skills Integration
**Goal**: The course teaches Claude Code skills as a distinct capability, the obsidian-skills plugin is introduced, students build a custom skill, and existing sub-agents are documented in the skills ecosystem context
**Depends on**: Phase 3
**Requirements**: SKIL-01, SKIL-02, SKIL-03, SKIL-04, SKIL-05, SKIL-06
**Success Criteria** (what must be TRUE):
  1. A new module exists that explains what Claude Code skills are and how they differ from slash commands and sub-agents
  2. The module walks a student through installing the kepano/obsidian-skills plugin step by step
  3. The module demonstrates at least two obsidian-skills in action (e.g., markdown skill, canvas skill)
  4. The module guides a student through building one custom skill for their vault
  5. The Librarian, Critic, and Connector sub-agents have documentation explaining how they relate to the skills ecosystem
**Plans**: TBD

### Phase 5: Utility Features
**Goal**: Students who finish the course have four ready-to-use productivity commands and a functioning hook script waiting for them
**Depends on**: Phase 4
**Requirements**: UTIL-01, UTIL-02, UTIL-03, UTIL-04, UTIL-05
**Success Criteria** (what must be TRUE):
  1. Running /daily in Claude Code produces a structured daily note using Alex Rivera's real vault templates
  2. Running /weekly-review produces a weekly summary pulling from notes created during that week
  3. Running /process-inbox moves or links notes from the inbox folder according to the PARA-adjacent structure
  4. Running /project-brief generates a brief document from an existing project folder's notes
  5. add-frontmatter.sh exists at .claude/scripts/, is executable, and works as documented in Level 4 lessons
**Plans**: TBD

### Phase 6: Distribution
**Goal**: The repo is publicly releasable — README is accurate and welcoming, LICENSE is present, and the clone-to-working-course journey has been verified end-to-end
**Depends on**: Phase 5
**Requirements**: DIST-01, DIST-02, DIST-03, DIST-04, DIST-05, DIST-06
**Success Criteria** (what must be TRUE):
  1. .gitignore excludes .obsidian/workspace.json, .DS_Store, .planning/, and other non-essential files
  2. MIT LICENSE file is present in repo root
  3. README explains Claude API costs in plain language that a non-technical user can understand before they begin
  4. README acknowledgments section credits BASB, Zettelkasten, LYT, and kepano/obsidian-skills
  5. README prerequisites section lists required software with version requirements
  6. A fresh clone of the repo, followed by opening vault/ in Obsidian and running /start-0-1, produces a working first lesson with no errors or dead ends
**Plans**: TBD

## Progress

**Execution Order:**
Phases execute in numeric order: 1 → 2 → 3 → 4 → 5 → 6

| Phase | Plans Complete | Status | Completed |
|-------|----------------|--------|-----------|
| 1. Vault Integrity | 1/3 | In Progress|  |
| 2. Content Quality | 0/TBD | Not started | - |
| 3. BASB Integration | 0/TBD | Not started | - |
| 4. Skills Integration | 0/TBD | Not started | - |
| 5. Utility Features | 0/TBD | Not started | - |
| 6. Distribution | 0/TBD | Not started | - |
