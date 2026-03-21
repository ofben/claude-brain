# Requirements: Claude Brain — Polish & Ship

**Defined:** 2026-03-20
**Core Value:** Someone can clone the repo, open vault/ in Obsidian, run /start-0-1, and complete the course without issues

## v1 Requirements

### Vault Integrity

- [x] **VAULT-01**: All [[wikilinks]] in teaching scripts resolve to existing vault notes (fix phantom references)
- [x] **VAULT-02**: All [[wikilinks]] in pre-seeded vault notes resolve to existing notes or are intentionally unresolved
- [x] **VAULT-03**: Frontmatter tag format is consistent across all vault notes and templates (standardize on array syntax)
- [x] **VAULT-04**: Empty folders (07-MOCs, 08-Published) contain .gitkeep files so Git preserves them on clone
- [x] **VAULT-05**: Dates in creator-context and vault notes are internally consistent

### Content Quality

- [x] **CONT-01**: Module 2.5 teaching script is complete with no placeholder text
- [x] **CONT-02**: All student-visible TODO markers removed from vault notes
- [x] **CONT-03**: course-structure.json totalEstimatedMinutes matches sum of individual module estimates
- [x] **CONT-04**: All 24 teaching scripts follow SCRIPT_INSTRUCTIONS.md format consistently (Say/Check/Action blocks)
- [x] **CONT-05**: Teaching scripts reference correct vault file paths and note names
- [x] **CONT-06**: Module navigation is correct (each module points to the right next module)

### BASB Integration

- [x] **BASB-01**: Module 1.1 introduces Building a Second Brain as a recognized framework with proper attribution
- [x] **BASB-02**: Module 2.1 connects note types to BASB's CODE method (Capture, Organize, Distill, Express)
- [x] **BASB-03**: Module 2.4 accurately references progressive summarization with correct layer count per Forte's framework
- [x] **BASB-04**: PARA method (Projects, Areas, Resources, Archives) is acknowledged and contrasted with the course's folder structure
- [x] **BASB-05**: README acknowledgments section credits BASB, Zettelkasten, and LYT frameworks
- [x] **BASB-06**: Course positions itself as "BASB meets AI" — showing how Claude Code extends manual PKM methods

### Skills Integration

- [x] **SKIL-01**: New module teaches what Claude Code skills are and how they extend Claude's capabilities
- [x] **SKIL-02**: Module guides student to install kepano/obsidian-skills plugin for Obsidian-native AI features
- [x] **SKIL-03**: Module demonstrates obsidian-skills in action (markdown skill, canvas skill, etc.)
- [x] **SKIL-04**: Module guides student to build a custom skill for their vault (e.g., a research-to-note skill or vault-query skill)
- [x] **SKIL-05**: Course slash commands migrated from .claude/commands/ to .claude/skills/ format (or documented why commands are kept)
- [x] **SKIL-06**: Existing sub-agents (Librarian, Critic, Connector) documented in context of skills ecosystem

### Utility Features

- [x] **UTIL-01**: /daily slash command pre-built and ready to use
- [x] **UTIL-02**: /weekly-review slash command pre-built and ready to use
- [x] **UTIL-03**: /process-inbox slash command pre-built and ready to use
- [x] **UTIL-04**: /project-brief slash command pre-built and ready to use
- [x] **UTIL-05**: add-frontmatter.sh hook script exists at .claude/scripts/ and works as documented in Level 4

### Distribution

- [x] **DIST-01**: .gitignore excludes .obsidian/workspace.json, .DS_Store, .planning/, and other non-essential files
- [x] **DIST-02**: MIT LICENSE file present in repo root
- [x] **DIST-03**: README includes cost estimate note for Claude API usage
- [x] **DIST-04**: README includes acknowledgments section (BASB, Zettelkasten, LYT, kepano/obsidian-skills)
- [x] **DIST-05**: README includes prerequisites with version requirements
- [x] **DIST-06**: Repo works end-to-end: clone → open vault in Obsidian → run /start-0-1 → complete course

## v2 Requirements

### Enhanced Polish

- **EPOL-01**: Full playtest of all 24 modules end-to-end with issue tracking
- **EPOL-02**: Cross-platform testing (macOS + Windows)
- **EPOL-03**: Educator guide for people adapting the course

### Community

- **COMM-01**: CONTRIBUTING.md with guidelines for PRs
- **COMM-02**: GitHub issue templates for bug reports and feature requests
- **COMM-03**: GitHub Releases with packaged zip downloads

### Advanced Skills

- **ASKL-01**: Deep Recon-style multi-agent research skill bundled with course
- **ASKL-02**: Skills gallery page in README showcasing community Obsidian skills

## Out of Scope

| Feature | Reason |
|---------|--------|
| Website or landing page | GitHub repo is the distribution channel for v1 |
| Paid distribution | Open source, free |
| Video/audio content | Course delivered through Claude Code text interaction |
| Automated CI testing | Manual playtest sufficient for v1; course is experiential |
| Community Discord/forum | Not needed at launch |
| Mobile support | Obsidian mobile + Claude Code is not a supported workflow |

## Traceability

| Requirement | Phase | Status |
|-------------|-------|--------|
| VAULT-01 | Phase 1: Vault Integrity | Complete |
| VAULT-02 | Phase 1: Vault Integrity | Complete |
| VAULT-03 | Phase 1: Vault Integrity | Complete |
| VAULT-04 | Phase 1: Vault Integrity | Complete |
| VAULT-05 | Phase 1: Vault Integrity | Complete |
| CONT-01 | Phase 2: Content Quality | Complete |
| CONT-02 | Phase 2: Content Quality | Complete |
| CONT-03 | Phase 2: Content Quality | Complete |
| CONT-04 | Phase 2: Content Quality | Complete |
| CONT-05 | Phase 2: Content Quality | Complete |
| CONT-06 | Phase 2: Content Quality | Complete |
| BASB-01 | Phase 3: BASB Integration | Complete |
| BASB-02 | Phase 3: BASB Integration | Complete |
| BASB-03 | Phase 3: BASB Integration | Complete |
| BASB-04 | Phase 3: BASB Integration | Complete |
| BASB-05 | Phase 3: BASB Integration | Complete |
| BASB-06 | Phase 3: BASB Integration | Complete |
| SKIL-01 | Phase 4: Skills Integration | Complete |
| SKIL-02 | Phase 4: Skills Integration | Complete |
| SKIL-03 | Phase 4: Skills Integration | Complete |
| SKIL-04 | Phase 4: Skills Integration | Complete |
| SKIL-05 | Phase 4: Skills Integration | Complete |
| SKIL-06 | Phase 4: Skills Integration | Complete |
| UTIL-01 | Phase 5: Utility Features | Complete |
| UTIL-02 | Phase 5: Utility Features | Complete |
| UTIL-03 | Phase 5: Utility Features | Complete |
| UTIL-04 | Phase 5: Utility Features | Complete |
| UTIL-05 | Phase 5: Utility Features | Complete |
| DIST-01 | Phase 6: Distribution | Complete |
| DIST-02 | Phase 6: Distribution | Complete |
| DIST-03 | Phase 6: Distribution | Complete |
| DIST-04 | Phase 6: Distribution | Complete |
| DIST-05 | Phase 6: Distribution | Complete |
| DIST-06 | Phase 6: Distribution | Complete |

**Coverage:**
- v1 requirements: 35 total
- Mapped to phases: 35
- Unmapped: 0

---
*Requirements defined: 2026-03-20*
*Last updated: 2026-03-20 after roadmap creation*
