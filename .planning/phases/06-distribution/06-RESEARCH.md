# Phase 6: Distribution - Research

**Researched:** 2026-03-21
**Domain:** Open-source educational repo release — .gitignore, licensing, README polish, clone verification
**Confidence:** HIGH

## Summary

Phase 6 is a release-readiness phase with no new features. All six requirements (DIST-01 through DIST-06) are documentation, metadata, and verification tasks: create a `.gitignore`, add a dual-license `LICENSE` file, polish the README with a cost estimate, badge, screenshot, and kepano acknowledgment, then verify the full clone-to-lesson-one flow.

The repo is already well-structured. `README.md` has Quick Start, Course Structure, The Story, Requirements, and Acknowledgments sections. `course-structure.json` is the data source for badge counts and cost estimates. No `.gitignore` or `LICENSE` currently exist. The `.planning/`, `.obsidian/workspace.json`, and `.DS_Store` files must be excluded but every file the course needs (slash commands, vault notes, teaching scripts, `.obsidian/` config except workspace) must remain visible after a fresh clone.

The cost estimate requires real pricing data. Based on verified Anthropic pricing (March 2026), Claude Sonnet 4.6 costs $3 input / $15 output per million tokens. Course-level estimation is practical: the 24 teaching scripts total roughly 20,000 lines, which at ~4 chars/token amounts to approximately 150,000–200,000 tokens of system context across all modules. With interactive back-and-forth, a realistic total is $1–5 to complete all 24 modules at Sonnet pricing.

**Primary recommendation:** Use a single LICENSE file with clear sections for MIT (code) and CC BY 4.0 (content). For cost estimates, recommend Haiku-class model to non-technical users, noting that model choice controls costs. Present the range as "roughly $1–5 to complete the full course using a mid-tier model."

---

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

**README polish**
- Add a ballpark cost estimate for Claude API usage in plain language (e.g., "The course uses Claude's API, which costs roughly $X–$Y to complete all modules")
- Prerequisites section stays minimal — list Obsidian (free) and Claude Code (requires API key) with links, no version numbers
- Add GitHub badges (license, module count) at the top of README
- Add a screenshot of the Obsidian vault showing notes open — static image, not a GIF
- Add kepano/obsidian-skills to the existing Acknowledgments section (DIST-04 gap)

**.gitignore**
- Exclude: .planning/, .DS_Store, .obsidian/workspace.json, node_modules/, .claude/memory/
- Keep visible: lesson-modules/, creator-context/, vault/.obsidian/ (except workspace.json)
- Standard extras: *.swp, .env, Thumbs.db, etc.

**Clone verification**
- Two-part verification: scripted structural check THEN manual walkthrough of /start-0-1
- Scripted check: clone to temp directory, verify file structure, check wikilinks resolve, validate slash commands exist
- Manual check: open vault/ in Obsidian, run /start-0-1, confirm it works with no errors or dead ends
- Scope: first module only for v1 (full playtest is v2 requirement EPOL-01)

**License & copyright**
- Dual license: MIT for code (slash commands, scripts, hooks, config), CC BY 4.0 for course content (teaching scripts, vault notes, course structure)
- Copyright holder: "benest"
- Copyright year: 2026
- LICENSE file in repo root explains both licenses clearly

### Claude's Discretion
- Exact cost estimate range (will need to estimate based on typical module token usage)
- Screenshot composition and placement in README
- Badge styling and which specific badges to include
- .gitignore completeness (additional entries beyond the decided set)
- Scripted check implementation details

### Deferred Ideas (OUT OF SCOPE)
None — discussion stayed within phase scope
</user_constraints>

---

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|-----------------|
| DIST-01 | .gitignore excludes .obsidian/workspace.json, .DS_Store, .planning/, and other non-essential files | .gitignore patterns section below; exact path format for vault-level workspace.json exclusion documented |
| DIST-02 | MIT LICENSE file present in repo root | Dual-license structure with MIT + CC BY 4.0 sections; full text sources documented |
| DIST-03 | README includes cost estimate note for Claude API usage | Verified Anthropic pricing; module-count math; plain-language framing guidance |
| DIST-04 | README includes acknowledgments section (BASB, Zettelkasten, LYT, kepano/obsidian-skills) | kepano/obsidian-skills GitHub URL verified; existing acknowledgments already cover BASB/Zettelkasten/LYT |
| DIST-05 | README includes prerequisites with version requirements | CONTEXT.md says no version numbers — just Obsidian (free) + Claude Code (API key required) with links |
| DIST-06 | Repo works end-to-end: clone → open vault in Obsidian → run /start-0-1 → complete course | Scripted check pattern; Module 0.1 success criteria; what the check script must verify |
</phase_requirements>

---

## Standard Stack

### Core Files to Create

| File | Purpose | Location |
|------|---------|---------|
| `.gitignore` | Exclude planning, workspace state, OS noise from clone | repo root |
| `LICENSE` | Dual MIT + CC BY 4.0 license explaining scope of each | repo root |
| `docs/vault-screenshot.png` | Static screenshot for README | repo root or `docs/` |

### No New Dependencies

This phase has no npm/pip/brew dependencies. It is entirely file creation and editing.

### Badge Sources
| Badge | Source | Syntax |
|-------|--------|--------|
| License | shields.io static badge | `![License](https://img.shields.io/badge/license-MIT%20%2B%20CC%20BY%204.0-blue)` |
| Module count | shields.io static badge | `![Modules](https://img.shields.io/badge/modules-24-green)` |

Shields.io static badges need no API key and never expire. Format: `https://img.shields.io/badge/{label}-{value}-{color}`.

---

## Architecture Patterns

### .gitignore Structure

The key challenge is that `.obsidian/workspace.json` must be excluded while the rest of `vault/.obsidian/` (app.json, appearance.json, core-plugins.json, etc.) must be included. Git's `.gitignore` does not support a direct "exclude one file from an included directory" pattern at the top level — the standard solution is a **negation pattern**:

```gitignore
# Obsidian workspace state (machine-specific, changes on every session)
vault/.obsidian/workspace.json
vault/.obsidian/workspace-mobile.json

# macOS
.DS_Store
**/.DS_Store

# Planning and internal tooling (not for students)
.planning/

# Claude memory (session-specific, not for students)
.claude/memory/

# Node modules (if any scripts are added)
node_modules/

# Editor and OS noise
*.swp
*.swo
.env
Thumbs.db
```

**Important:** `vault/.obsidian/workspace.json` should be the full relative path, NOT `*.obsidian/workspace.json`, to avoid accidentally matching other paths. The other `.obsidian/` files (app.json, appearance.json, etc.) are NOT in .gitignore and will be committed — they ship with the course as pre-configured settings.

**Verify the pattern works:**
```bash
git check-ignore -v vault/.obsidian/workspace.json   # should output a match
git check-ignore -v vault/.obsidian/app.json         # should output nothing (not ignored)
```

### Dual-License FILE Pattern

The standard approach for code+content dual-license repos is a single `LICENSE` file with clearly labeled sections. This is the pattern used by educational open source projects (e.g., The Odin Project, freeCodeCamp).

```
LICENSE
```

```text
MIT License (Code)
==================
Applies to: .claude/commands/, .claude/scripts/, .claude/agents/, .claude/skills/,
            course-structure.json, and all shell scripts and configuration files.

Copyright (c) 2026 benest

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


Creative Commons Attribution 4.0 International (Course Content)
================================================================
Applies to: lesson-modules/, vault/, creator-context/, README.md,
            and all teaching scripts, course notes, and written content.

Copyright (c) 2026 benest

This work is licensed under the Creative Commons Attribution 4.0 International
License. To view a copy of this license, visit:
https://creativecommons.org/licenses/by/4.0/

You are free to:
  Share — copy and redistribute the material in any medium or format
  Adapt — remix, transform, and build upon the material for any purpose,
          even commercially

Under the following terms:
  Attribution — You must give appropriate credit, provide a link to the
                license, and indicate if changes were made.

No additional restrictions — You may not apply legal terms or technological
measures that legally restrict others from doing what the license permits.
```

**Why this structure:** Splitting code (MIT) from content (CC BY 4.0) is the standard pattern for educational repositories. MIT allows unrestricted code reuse. CC BY 4.0 requires attribution when teaching scripts or vault content are reused in other courses.

### README Additions

The README already has five sections: Who Is This For, What You'll Learn, Quick Start, Course Structure, The Story, Requirements, Acknowledgments.

**Additions needed:**

1. **Badges block** — insert immediately after the H1 title, before the intro paragraph
2. **Screenshot** — insert after "What You'll Learn" table or inside the "The Story" section for visual context
3. **API cost note** — add as a callout block within Requirements or as a subsection under Quick Start (before step 1)
4. **Prerequisites expansion** — the existing Requirements section lists Obsidian and Claude Code; DIST-05 requires it to be called "Prerequisites" with proper links (already exists but needs verification)
5. **kepano acknowledgment** — append to existing Acknowledgments paragraph

**Badge placement (after H1):**
```markdown
# Claude Brain: Build Your Second Brain with Claude Code + Obsidian

![License](https://img.shields.io/badge/license-MIT%20%2B%20CC%20BY%204.0-blue)
![Modules](https://img.shields.io/badge/modules-24-green)
```

**Cost estimate language (plain, non-technical):**
```markdown
> **API costs:** This course uses Claude's API, which you pay for based on usage.
> Completing all 24 modules typically costs **$1–5 USD** depending on which Claude
> model you choose. Haiku is the most affordable option; Sonnet offers stronger
> responses at a higher cost. You set up billing at [console.anthropic.com](https://console.anthropic.com).
```

**Acknowledgments addition:**
```markdown
This course also makes use of [kepano/obsidian-skills](https://github.com/kepano/obsidian-skills),
an open-source collection of agent skills for Obsidian created by Steph Ango.
```

### Clone Verification Script Pattern

The scripted check (DIST-06, Part 1) should be a shell script that:
1. Clones the repo to a temp directory
2. Checks that required files/directories exist
3. Checks that required slash commands exist
4. Optionally runs a wikilink resolution check

```bash
#!/bin/bash
# verify-clone.sh — structural check for DIST-06 scripted verification
set -e

REPO_URL="${1:-$(git config --get remote.origin.url)}"
TMPDIR=$(mktemp -d)
echo "Cloning to $TMPDIR..."

git clone "$REPO_URL" "$TMPDIR/clone-test"
cd "$TMPDIR/clone-test"

echo "Checking required structure..."

# Required directories
for dir in vault lesson-modules creator-context .claude/commands; do
  if [ -d "$dir" ]; then
    echo "  [OK] $dir/"
  else
    echo "  [FAIL] $dir/ missing" && exit 1
  fi
done

# Required root files
for file in README.md LICENSE CLAUDE.md course-structure.json; do
  if [ -f "$file" ]; then
    echo "  [OK] $file"
  else
    echo "  [FAIL] $file missing" && exit 1
  fi
done

# Verify workspace.json was excluded
if [ -f "vault/.obsidian/workspace.json" ]; then
  echo "  [FAIL] vault/.obsidian/workspace.json should be excluded" && exit 1
else
  echo "  [OK] workspace.json correctly excluded"
fi

# Verify Obsidian config files ARE present
for file in vault/.obsidian/app.json vault/.obsidian/appearance.json; do
  if [ -f "$file" ]; then
    echo "  [OK] $file"
  else
    echo "  [FAIL] $file missing — Obsidian config incomplete" && exit 1
  fi
done

# Verify all 24+ slash commands exist
CMD_COUNT=$(ls .claude/commands/start-*.md 2>/dev/null | wc -l)
if [ "$CMD_COUNT" -ge 24 ]; then
  echo "  [OK] $CMD_COUNT start commands found"
else
  echo "  [FAIL] Only $CMD_COUNT start commands found (expected 24+)" && exit 1
fi

# Verify utility commands
for cmd in .claude/commands/daily.md .claude/commands/weekly-review.md .claude/commands/process-inbox.md .claude/commands/project-brief.md; do
  if [ -f "$cmd" ]; then
    echo "  [OK] $cmd"
  else
    echo "  [FAIL] $cmd missing" && exit 1
  fi
done

# Verify vault folders exist (with .gitkeep for empty ones)
for dir in vault/00-Inbox vault/01-Daily-Notes vault/07-MOCs vault/08-Published; do
  if [ -d "$dir" ]; then
    echo "  [OK] $dir/"
  else
    echo "  [FAIL] $dir/ missing" && exit 1
  fi
done

echo ""
echo "Structural check passed. Proceed to manual Module 0.1 walkthrough."
rm -rf "$TMPDIR"
```

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| License text | Custom license | MIT boilerplate + CC BY 4.0 from creativecommons.org | Legal precision matters; custom licenses are not recognized |
| Badges | Custom badge images | shields.io static badges | No server needed, always current, standard across GitHub |
| Cost estimate calculation | Token counting script | Manual estimation from module count + pricing page | One-time calculation, simpler than automation |

---

## Common Pitfalls

### Pitfall 1: workspace.json not properly excluded
**What goes wrong:** The `.gitignore` pattern `vault/.obsidian/workspace.json` looks right but git already tracks the file — a `.gitignore` entry only prevents future adds, it does NOT untrack files already committed.
**Why it happens:** If workspace.json was committed in an earlier phase (git clone would then include it), `.gitignore` alone is insufficient.
**How to avoid:** Run `git ls-files --error-unmatch vault/.obsidian/workspace.json` to check if it's tracked. If it is, run `git rm --cached vault/.obsidian/workspace.json` to untrack it, then add the .gitignore entry.
**Warning signs:** After adding .gitignore, `git status` still shows workspace.json as a tracked file.

### Pitfall 2: Accidentally excluding .obsidian/ config files
**What goes wrong:** Using a broad pattern like `**/.obsidian/` or `*.obsidian/workspace.json` excludes all of `.obsidian/`, breaking the pre-configured Obsidian settings that ship with the course.
**Why it happens:** Overly broad glob patterns.
**How to avoid:** Use the exact path `vault/.obsidian/workspace.json`. Verify with `git check-ignore -v vault/.obsidian/app.json` (should not match).

### Pitfall 3: .planning/ excluded at wrong level
**What goes wrong:** `.planning/` contains all the planning artifacts that should NOT ship to users. If it's only partially excluded, students may see internal docs.
**Why it happens:** Forgetting to include trailing slash or using wrong path.
**How to avoid:** Use `.planning/` (with trailing slash). Test: after applying .gitignore, run `git status` from repo root — `.planning/` contents should not appear as tracked changes.

### Pitfall 4: Cost estimate uses jargon
**What goes wrong:** Saying "per-million-token pricing" or "input/output tokens" to non-technical users who just want to know if this will cost them $5 or $500.
**Why it happens:** Copying developer-facing pricing docs directly into README.
**How to avoid:** Translate to total-course cost range. Use plain dollar amounts. Mention model names (Haiku, Sonnet) only to indicate that model choice affects price.

### Pitfall 5: Clone verification misses the workspace.json check
**What goes wrong:** The scripted check verifies structure but doesn't confirm that workspace.json was properly excluded — the whole point of DIST-01.
**Why it happens:** Structural check focuses on what IS present, not what should be absent.
**How to avoid:** Include a negative check: `if [ -f "vault/.obsidian/workspace.json" ]; then echo "FAIL — workspace.json should be excluded"; exit 1; fi`.

### Pitfall 6: README badges reference the wrong branch or path
**What goes wrong:** A shields.io GitHub license badge that reads from the repo file (`https://img.shields.io/github/license/...`) will fail if the repo is private, not yet published, or the path is wrong.
**Why it happens:** Using the auto-detect badge format before the repo is public.
**How to avoid:** Use a static badge (`img.shields.io/badge/...`) that doesn't depend on repo state. The license badge can be static since the license type is known.

---

## Code Examples

### .gitignore — Verified Pattern
```gitignore
# Obsidian workspace state (machine-specific, regenerated on every session)
vault/.obsidian/workspace.json
vault/.obsidian/workspace-mobile.json

# macOS
.DS_Store
**/.DS_Store

# Planning and internal tooling (not for students)
.planning/

# Claude memory (session-specific)
.claude/memory/

# Node (if any future scripts use it)
node_modules/

# Editor and OS noise
*.swp
*.swo
.env
Thumbs.db
```

### Shields.io Static Badge Syntax
```markdown
![License](https://img.shields.io/badge/license-MIT%20%2B%20CC%20BY%204.0-blue)
![Modules](https://img.shields.io/badge/modules-24-green)
```

### Cost Estimate — Plain Language
```markdown
> **API costs:** This course uses Claude's API, which you pay for based on usage.
> Completing all 24 modules typically costs **$1–5 USD** depending on which Claude
> model you choose. Haiku is the most affordable option; Sonnet offers stronger
> responses at a higher cost. You set up billing at
> [console.anthropic.com](https://console.anthropic.com).
```

### kepano Acknowledgment
```markdown
This course also makes use of [kepano/obsidian-skills](https://github.com/kepano/obsidian-skills) —
an open-source collection of agent skills for Obsidian created by Steph Ango
(kepano). The skills taught in Level 4 are drawn directly from this project.
```

### git rm --cached (if workspace.json is already tracked)
```bash
git rm --cached vault/.obsidian/workspace.json
```

---

## Cost Estimate Math (Claude's Discretion)

The user asked for a "roughly $X–$Y" estimate. Here is the calculation basis:

**Course token profile:**
- 24 modules, ~20,000 lines of teaching script total
- Each module: Claude reads the teaching script (~150–200 lines) plus CLAUDE.md (~130 lines) as system context at session start = ~2,000–3,000 input tokens per module
- Interactive exchange per module: student messages + Claude responses ≈ 2,000–5,000 additional tokens
- Total estimated range: ~100,000–200,000 tokens across all 24 modules

**Pricing (verified March 2026, Anthropic official docs):**
- Claude Haiku 4.5: $1/MTok input, $5/MTok output
- Claude Sonnet 4.6: $3/MTok input, $15/MTok output

**Estimated cost:**
- Haiku: 100k tokens total ≈ **$0.30–$0.80**
- Sonnet: 200k tokens total ≈ **$0.90–$3.00**

**Recommended range for README:** "$1–5 USD" covers both models and accounts for students who have longer conversations, re-run modules, or use extended thinking. This is honest without being alarmist (not "$50+") and not falsely precise ("$1.23").

Note: The $6/day developer figure from Claude Code docs is for software engineers running long agentic sessions — not applicable to this interactive course use case.

---

## Validation Architecture

### Test Framework
| Property | Value |
|----------|-------|
| Framework | Bash (shell script — no test framework needed) |
| Config file | none |
| Quick run command | `bash .planning/phases/06-distribution/verify-clone.sh` |
| Full suite command | same + manual Module 0.1 walkthrough |

### Phase Requirements — Test Map

| Req ID | Behavior | Test Type | Automated Command | File Exists? |
|--------|----------|-----------|-------------------|--------------|
| DIST-01 | workspace.json excluded, .planning/ excluded, .DS_Store excluded | bash check | `git check-ignore -v vault/.obsidian/workspace.json` | ❌ Wave 0: create verify-clone.sh |
| DIST-02 | LICENSE file present in repo root | bash check | `test -f LICENSE && echo OK` | ❌ Wave 0: create LICENSE |
| DIST-03 | README contains cost estimate text | bash check | `grep -q "API costs" README.md && echo OK` | ❌ Wave 0: README edit |
| DIST-04 | README acknowledgments mentions kepano/obsidian-skills | bash check | `grep -q "kepano" README.md && echo OK` | ❌ Wave 0: README edit |
| DIST-05 | README prerequisites section lists Obsidian and Claude Code with links | bash check | `grep -q "obsidian.md" README.md && echo OK` | README exists; needs review |
| DIST-06 | Clone to temp dir verifies file structure, workspace.json absent, all commands present | bash script | `bash verify-clone.sh` | ❌ Wave 0: create verify-clone.sh |

### Sampling Rate
- **Per task commit:** `git check-ignore -v vault/.obsidian/workspace.json && test -f LICENSE && grep -q "kepano" README.md`
- **Per wave merge:** `bash verify-clone.sh` (structural) + manual Module 0.1 walkthrough
- **Phase gate:** All structural checks green + manual walkthrough confirmed before `/gsd:verify-work`

### Wave 0 Gaps
- [ ] `.planning/phases/06-distribution/verify-clone.sh` — covers DIST-06 scripted check
- [ ] `LICENSE` — covers DIST-02 (created as part of implementation)
- [ ] README edits — covers DIST-03, DIST-04, DIST-05 (README exists, needs edits)
- [ ] `.gitignore` — covers DIST-01 (created as part of implementation)

---

## Open Questions

1. **Screenshot file and placement**
   - What we know: CONTEXT.md says static image, show vault with notes open
   - What's unclear: Where to store the image file (repo root vs `docs/` subdirectory), and exact placement in README (after "What You'll Learn"? Inside "The Story"?)
   - Recommendation: Create a `docs/` directory for the image; place screenshot after "The Story" section where it contextualizes the fictional Alex Rivera narrative

2. **Is workspace.json currently tracked by git?**
   - What we know: workspace.json exists at `vault/.obsidian/workspace.json`; the repo has a `.git` directory
   - What's unclear: Whether an early commit already tracked it
   - Recommendation: Plan should include `git ls-files --error-unmatch vault/.obsidian/workspace.json` as a first check, then conditionally run `git rm --cached` if needed

3. **Exact .claude/memory/ path**
   - What we know: CONTEXT.md says exclude `.claude/memory/`
   - What's unclear: Does this directory exist yet? (`ls .claude/` shows: agents, commands, SCRIPT_INSTRUCTIONS.md, settings.local.json, skills — no `memory/` visible)
   - Recommendation: Include `.claude/memory/` in `.gitignore` regardless — it's a future-proofing entry that Claude Code creates during sessions

---

## Sources

### Primary (HIGH confidence)
- https://platform.claude.com/docs/en/about-claude/pricing — Verified Claude API pricing (March 2026): Haiku 4.5 $1/$5 MTok, Sonnet 4.6 $3/$15 MTok
- https://code.claude.com/docs/en/costs — Claude Code cost patterns: average $6/day for developers; background cost <$0.04/session
- https://github.com/kepano/obsidian-skills — Confirmed as the correct repo URL for kepano/obsidian-skills; 15.3k stars, skills for Obsidian (defuddle, json-canvas, obsidian-bases, obsidian-cli, obsidian-markdown)
- https://creativecommons.org/licenses/by/4.0/ — CC BY 4.0 license terms verified: attribution required, redistribution and adaptation allowed
- https://opensource.org/license/mit — MIT license canonical text
- https://shields.io — Static badge syntax confirmed

### Secondary (MEDIUM confidence)
- https://docs.github.com/articles/licensing-a-repository — GitHub guidance on dual licensing; recommends single LICENSE file with clear sections
- https://naereen.github.io/badges/ — Badge collection confirming markdown syntax patterns

### Tertiary (LOW confidence)
- Course token estimate ($1–5 range) — derived from module line counts and pricing math; not directly verified against actual Claude Code session logs for this specific course

---

## Metadata

**Confidence breakdown:**
- .gitignore patterns: HIGH — exact paths confirmed from repo inspection; git behavior for negation patterns is well-documented
- LICENSE file structure: HIGH — dual-license single-file pattern is standard for educational repos; MIT and CC BY 4.0 texts are canonical
- README badges: HIGH — shields.io static badge syntax is stable and well-documented
- Cost estimate: MEDIUM — pricing is verified; token usage estimate is calculated (not measured); recommend framing as "typically" not "exactly"
- Clone verification script: HIGH — standard bash patterns; logic derived from phase requirements
- kepano attribution: HIGH — GitHub URL confirmed, project description verified

**Research date:** 2026-03-21
**Valid until:** 2026-06-21 for pricing (API prices change); 2027-03-21 for everything else
