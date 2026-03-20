# Requirements: Claude Brain — Polish & Ship

**Defined:** 2026-03-20
**Core Value:** Someone can clone the repo, open vault/ in Obsidian, run /start-0-1, and complete the course without issues

## v1 Requirements

### Vault Integrity

- [ ] **VAULT-01**: All [[wikilinks]] in teaching scripts resolve to existing vault notes (fix phantom references)
- [ ] **VAULT-02**: All [[wikilinks]] in pre-seeded vault notes resolve to existing notes or are intentionally unresolved
- [ ] **VAULT-03**: Frontmatter tag format is consistent across all vault notes and templates (standardize on array syntax)
- [ ] **VAULT-04**: Empty folders (07-MOCs, 08-Published) contain .gitkeep files so Git preserves them on clone
- [ ] **VAULT-05**: Dates in creator-context and vault notes are internally consistent

### Content Quality

- [ ] **CONT-01**: Module 2.5 teaching script is complete with no placeholder text
- [ ] **CONT-02**: All student-visible TODO markers removed from vault notes
- [ ] **CONT-03**: course-structure.json totalEstimatedMinutes matches sum of individual module estimates
- [ ] **CONT-04**: All 24 teaching scripts follow SCRIPT_INSTRUCTIONS.md format consistently (Say/Check/Action blocks)
- [ ] **CONT-05**: Teaching scripts reference correct vault file paths and note names
- [ ] **CONT-06**: Module navigation is correct (each module points to the right next module)

### BASB Integration

- [ ] **BASB-01**: Module 1.1 introduces Building a Second Brain as a recognized framework with proper attribution
- [ ] **BASB-02**: Module 2.1 connects note types to BASB's CODE method (Capture, Organize, Distill, Express)
- [ ] **BASB-03**: Module 2.4 accurately references progressive summarization with correct layer count per Forte's framework
- [ ] **BASB-04**: PARA method (Projects, Areas, Resources, Archives) is acknowledged and contrasted with the course's folder structure
- [ ] **BASB-05**: README acknowledgments section credits BASB, Zettelkasten, and LYT frameworks
- [ ] **BASB-06**: Course positions itself as "BASB meets AI" — showing how Claude Code extends manual PKM methods

### Skills Integration

- [ ] **SKIL-01**: New module teaches what Claude Code skills are and how they extend Claude's capabilities
- [ ] **SKIL-02**: Module guides student to install kepano/obsidian-skills plugin for Obsidian-native AI features
- [ ] **SKIL-03**: Module demonstrates obsidian-skills in action (markdown skill, canvas skill, etc.)
- [ ] **SKIL-04**: Module guides student to build a custom skill for their vault (e.g., a research-to-note skill or vault-query skill)
- [ ] **SKIL-05**: Course slash commands migrated from .claude/commands/ to .claude/skills/ format (or documented why commands are kept)
- [ ] **SKIL-06**: Existing sub-agents (Librarian, Critic, Connector) documented in context of skills ecosystem

### Utility Features

- [ ] **UTIL-01**: /daily slash command pre-built and ready to use
- [ ] **UTIL-02**: /weekly-review slash command pre-built and ready to use
- [ ] **UTIL-03**: /process-inbox slash command pre-built and ready to use
- [ ] **UTIL-04**: /project-brief slash command pre-built and ready to use
- [ ] **UTIL-05**: add-frontmatter.sh hook script exists at .claude/scripts/ and works as documented in Level 4

### Distribution

- [ ] **DIST-01**: .gitignore excludes .obsidian/workspace.json, .DS_Store, .planning/, and other non-essential files
- [ ] **DIST-02**: MIT LICENSE file present in repo root
- [ ] **DIST-03**: README includes cost estimate note for Claude API usage
- [ ] **DIST-04**: README includes acknowledgments section (BASB, Zettelkasten, LYT, kepano/obsidian-skills)
- [ ] **DIST-05**: README includes prerequisites with version requirements
- [ ] **DIST-06**: Repo works end-to-end: clone → open vault in Obsidian → run /start-0-1 → complete course

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
| VAULT-01 | Phase 1 | Pending |
| VAULT-02 | Phase 1 | Pending |
| VAULT-03 | Phase 1 | Pending |
| VAULT-04 | Phase 1 | Pending |
| VAULT-05 | Phase 1 | Pending |
| CONT-01 | Phase 2 | Pending |
| CONT-02 | Phase 2 | Pending |
| CONT-03 | Phase 2 | Pending |
| CONT-04 | Phase 2 | Pending |
| CONT-05 | Phase 2 | Pending |
| CONT-06 | Phase 2 | Pending |
| BASB-01 | Phase 3 | Pending |
| BASB-02 | Phase 3 | Pending |
| BASB-03 | Phase 3 | Pending |
| BASB-04 | Phase 3 | Pending |
| BASB-05 | Phase 3 | Pending |
| BASB-06 | Phase 3 | Pending |
| SKIL-01 | Phase 4 | Pending |
| SKIL-02 | Phase 4 | Pending |
| SKIL-03 | Phase 4 | Pending |
| SKIL-04 | Phase 4 | Pending |
| SKIL-05 | Phase 4 | Pending |
| SKIL-06 | Phase 4 | Pending |
| UTIL-01 | Phase 5 | Pending |
| UTIL-02 | Phase 5 | Pending |
| UTIL-03 | Phase 5 | Pending |
| UTIL-04 | Phase 5 | Pending |
| UTIL-05 | Phase 5 | Pending |
| DIST-01 | Phase 6 | Pending |
| DIST-02 | Phase 6 | Pending |
| DIST-03 | Phase 6 | Pending |
| DIST-04 | Phase 6 | Pending |
| DIST-05 | Phase 6 | Pending |
| DIST-06 | Phase 6 | Pending |

**Coverage:**
- v1 requirements: 35 total
- Mapped to phases: 35
- Unmapped: 0 ✓

---
*Requirements defined: 2026-03-20*
*Last updated: 2026-03-20 after initial definition*
