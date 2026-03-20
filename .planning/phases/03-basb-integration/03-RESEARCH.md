# Phase 3: BASB Integration - Research

**Researched:** 2026-03-21
**Domain:** PKM framework attribution — Building a Second Brain, PARA, CODE, progressive summarization, LYT, Zettelkasten
**Confidence:** HIGH

---

## Summary

This phase is pure editorial work: weave proper attribution for Tiago Forte's Building a Second Brain framework into four files (Module 1.1, Module 2.1, Module 2.4, README). No new modules, no vault changes, no new features. The technical risk is near-zero; the editorial risk is getting the framework details wrong and having accurate students notice. The key research task is verifying what Forte actually says versus what the course already describes.

The most important finding: Forte's progressive summarization has **5 layers (Layer 0 through Layer 4, with an optional Layer 5 called "remixing")**, not the course's current 5-layer workflow which maps to a different structure. The course's 5 layers (Capture, Highlight, Summarize, Your Take, Connect) are a reasonable extension of Forte's framework but do not match it exactly — this needs precise attribution language. The CONTEXT.md decision to include "We extend that idea into five steps" is the correct framing.

Forte's own 2026 writing explicitly positions Claude Code + Obsidian as the current evolution of BASB. The course is not departing from Forte's framework — it is doing exactly what he described as the next phase of PKM. This is useful framing for Module 1.1 and the README.

**Primary recommendation:** Weave attributions following the CONTEXT.md decisions precisely. The exact wording must match Forte's real framework descriptions (verified below) and the Say/Check/Action format of the teaching scripts must be preserved in all four modified files.

---

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

**Attribution tone and placement:**
- Weave BASB reference into Module 1.1 Step 1 ("What Is a Second Brain?") naturally — not a separate step or callout
- Tone: respectful nod — "This idea was popularized by Tiago Forte in Building a Second Brain. We're going to take those ideas and show how AI changes the game."
- Module 1.1 names BASB and Forte only — PARA is NOT introduced in 1.1, saved for Module 2.1
- Module 2.1 gets a light callback when introducing CODE: "Remember Building a Second Brain from Module 1.1? Forte's workflow is called CODE..."

**PARA vs. course folders:**
- PARA explained in Module 2.1 (not 1.1) — when note types and organization are being taught
- Position PARA as one approach among many: "PARA is one popular system. Zettelkasten is another. Our structure borrows from both — the numbered folders give you a clear pipeline from capture to publish."
- LYT (Linking Your Thinking by Nick Milo) mentioned in the same breath as PARA and Zettelkasten in Module 2.1: "PARA for organization, Zettelkasten for note types, LYT for Maps of Content — our course draws from all three."
- No explicit mapping table between PARA and course folders

**Progressive summarization:**
- Keep the course's 5-layer approach as-is, cite inspiration: "Inspired by Tiago Forte's progressive summarization from Building a Second Brain"
- Include a brief comparison: "Forte describes progressive summarization as layers of highlighting and bolding. We extend that idea into five steps that work especially well with an AI partner."
- Add per-layer AI callouts in Module 2.4

**Integration density:**
- 4 files modified: Module 1.1, Module 2.1, Module 2.4, README
- No recurring BASB callbacks in other modules
- "BASB meets AI" positioning emerges naturally, not as an explicit tagline

**README acknowledgments:**
- Short paragraph (3-4 sentences), not a structured section with bullet points
- Credits BASB (Forte), Zettelkasten, and LYT (Nick Milo)
- Combines credit with AI positioning: "...these methods show what's possible with manual effort. This course shows what happens when you add an AI partner."

### Claude's Discretion
- Exact wording of the BASB reference woven into Module 1.1 Step 1
- Exact wording of the CODE/PARA/LYT/Zettelkasten paragraph in Module 2.1
- Exact placement of AI callouts within Module 2.4's step-by-step flow
- Where in the README the acknowledgments paragraph goes (likely after Quick Start or at the end)

### Deferred Ideas (OUT OF SCOPE)
None — discussion stayed within phase scope
</user_constraints>

---

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|-----------------|
| BASB-01 | Module 1.1 introduces Building a Second Brain as a recognized framework with proper attribution | Exact attribution language verified: Forte coined the term, book published 2022, appropriate tone confirmed |
| BASB-02 | Module 2.1 connects note types to BASB's CODE method (Capture, Organize, Distill, Express) | CODE method verified against fortelabs.com official description; Zettelkasten note types (fleeting/literature/permanent) already in script, CODE integrates naturally |
| BASB-03 | Module 2.4 accurately references progressive summarization with correct layer count per Forte's framework | CRITICAL: Forte's framework has 4 named layers (L1-L4) plus an original source (L0) and optional remix (L5). The course's 5-step workflow extends this. Exact attribution language verified below. |
| BASB-04 | PARA method (Projects, Areas, Resources, Archives) is acknowledged and contrasted with the course's folder structure | PARA verified: Projects/Areas/Resources/Archives. Handled in Module 2.1 per CONTEXT.md decisions. |
| BASB-05 | README acknowledgments section credits BASB, Zettelkasten, and LYT frameworks | All three frameworks verified and described below; full names, authors, and appropriate attribution language confirmed |
| BASB-06 | Course positions itself as "BASB meets AI" — showing how Claude Code extends manual PKM methods | Forte himself frames Claude Code + Obsidian as the current evolution of BASB — the course is doing exactly what he described |
</phase_requirements>

---

## Standard Stack

This phase has no software stack. The work is editing four Markdown files following the project's established teaching script format (Say/Check/Action blocks per `.claude/SCRIPT_INSTRUCTIONS.md`).

### Tools (Not Libraries)
| Tool | Purpose | Constraint |
|------|---------|------------|
| Read tool | Read each target file before editing | Required — always read before Write/Edit |
| Edit tool | Surgical changes to specific sections of teaching scripts | Preferred over Write for existing files |
| Write tool | Full rewrite only if content structure changes dramatically | Not expected — all changes are insertions |

---

## Architecture Patterns

### The Four Target Files

```
lesson-modules/
├── 1-foundations/
│   └── 1.1-welcome/
│       └── CLAUDE.md          — Module 1.1: Step 1 insertion only
└── 2-building-the-brain/
    ├── 2.1-note-types-templates/
    │   └── CLAUDE.md          — Module 2.1: Step 2 addition + Step 7 wrap-up update
    └── 2.4-research-literature-notes/
        └── CLAUDE.md          — Module 2.4: Step 1 attribution + per-layer AI callouts
README.md                      — Acknowledgments paragraph (location TBD)
```

### Pattern 1: Module 1.1 Insertion — Weave Into Existing Step 1

**What:** Add 2-3 sentences to the existing Step 1 "What Is a Second Brain?" Say block. The attribution lands naturally after the "second brain" concept is defined.
**When to use:** This pattern — sentence insertion within an existing Say block — is correct when: the attribution explains where the concept came from, not how it works.
**Placement:** After "Your biological brain is amazing at having ideas. It's terrible at storing and organizing them. That's what your second brain is for." — then add the attribution, then continue to the Check.

**Example of target location in Module 1.1 Step 1 Say block:**
```
...That's what your second brain is for.

[INSERT ATTRIBUTION HERE — see Code Examples section]"

**Check:** Wait for the student to respond...
```

### Pattern 2: Module 2.1 — CODE Introduction in Step 2

**What:** Add a paragraph to Step 2 "The Three Types of Notes" that introduces CODE and PARA/Zettelkasten/LYT alongside the existing Zettelkasten introduction.
**When to use:** This pattern is correct when: the new content is additive context, not replacing existing content.
**Placement:** After the existing Zettelkasten introduction paragraph ("There's a method called Zettelkasten...") and before the note type definitions. The callback phrase bridges from Module 1.1: "Remember Building a Second Brain from Module 1.1? Forte's workflow..."

**Existing Step 2 structure to preserve:**
```
Step 2: The Three Types of Notes
  Say: [Zettelkasten intro paragraph]    ← keep
  [INSERT CODE + multi-framework para]   ← add here
  Say: [fleeting/literature/permanent]   ← keep
```

### Pattern 3: Module 2.4 — Attribution in Step 1 + AI Callouts Per Layer

**What:** Two separate edits. First: add attribution sentence to the Step 1 gold-panning Say block. Second: after each layer description in Step 1, add a brief AI callout sentence.
**When to use:** Attribution goes at the moment the technique is named. AI callouts go at the demonstration of each specific layer.
**Placement:** Attribution sentence: after "There's a better approach called progressive summarization." AI callouts: inline after each layer description (Layer 3 and Layer 4 are the strongest AI acceleration stories).

### Pattern 4: README — Acknowledgments Paragraph

**What:** Add a 3-4 sentence paragraph crediting BASB, Zettelkasten, and LYT.
**Placement (discretionary):** After the "Requirements" section at the end of README, before any future additions. This position avoids disrupting the Quick Start flow for new users.

### Anti-Patterns to Avoid

- **Separate attribution callout box:** CONTEXT.md explicitly rejects this. Weave inline, not as a formatted aside.
- **Modifying Common Student Questions section:** Module 1.1 already has a Q&A that mentions BASB (Q: "Is this based on a real method?"). Do NOT add a new answer — the existing one already handles this question adequately.
- **Breaking Say/Check/Action block boundaries:** SCRIPT_INSTRUCTIONS.md requires this format strictly. New sentences go inside existing Say blocks, not as new block types.
- **Using technical language in attribution:** Keep the non-technical convention ("system" not "methodology", "approach" not "framework" in student-facing text).
- **Repeating attribution in multiple modules:** Only Module 1.1 introduces BASB. Module 2.1 callbacks lightly. No other modules get BASB mentions.

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Progressive summarization description | Custom explanation of layers | Cite Forte's actual layer structure (verified below) | Students may google it; accurate description builds credibility |
| PARA description | Invented folder description | Use exact PARA acronym: Projects, Areas, Resources, Archives | The acronym is the whole point — it must be spelled out correctly |
| LYT attribution | "a note-linking method" | "Linking Your Thinking by Nick Milo" with Maps of Content mentioned | Full name and author required for proper attribution |
| CODE description | Reordered or paraphrased steps | Use exact sequence: Capture, Organize, Distill, Express | The acronym only works in this order |

**Key insight:** Every named framework in this phase has an exact, verifiable definition. Use the verified definitions — even a small error (wrong author, wrong acronym order, wrong layer count) will be caught by knowledgeable students and undermines the course's credibility.

---

## Verified Framework Definitions

### Building a Second Brain (BASB)

**Source:** fortelabs.com (HIGH confidence — official site)
**Author:** Tiago Forte
**Book:** *Building a Second Brain* (2022)

**Definition for attribution purposes:** A methodology for personal knowledge management that provides a trusted external system for capturing, organizing, and retrieving information to boost productivity and creativity.

**Tone guide from Forte's own 2026 writing:** Forte himself now describes everything before AI as "a prelude." He frames Claude Code + Obsidian as what he was pointing toward. The course's "BASB meets AI" angle is not departing from Forte — it aligns with his current positioning.

### CODE Method

**Source:** fortelabs.com official overview (HIGH confidence)
**Exact steps (must use this order):**
1. **Capture** — Save ideas and insights worth preserving
2. **Organize** — Structure information by actionability (PARA is the system for this step)
3. **Distill** — Summarize content to its essentials (progressive summarization is the technique here)
4. **Express** — Create tangible output from your knowledge

**Relationship to course:** The course's note type workflow (fleeting → literature → permanent) maps naturally to CODE steps 1-4. Fleeting notes = Capture, organizing them into note types = Organize, progressive summarization = Distill, writing for clients = Express.

### PARA Method

**Source:** fortelabs.com (HIGH confidence)
**Exact expansion:**
- **P**rojects — Short-term efforts with specific goals and deadlines
- **A**reas — Long-term responsibilities managed over time
- **R**esources — Topics or interests for future reference
- **A**rchives — Inactive items from the other three categories

**Relationship to course folders:** The course uses numbered folders (00-Inbox through 08-Published) which follow a pipeline model rather than PARA's categorical model. The "one approach among many" framing in CONTEXT.md is accurate and honest.

### Progressive Summarization — CRITICAL DETAIL

**Source:** fortelabs.com/blog/progressive-summarization-a-practical-technique-for-designing-discoverable-notes/ (HIGH confidence — official article)

**Forte's exact layer structure:**
| Layer | Name | Description |
|-------|------|-------------|
| Layer 0 | Original source | The complete, unmodified source material |
| Layer 1 | Initial capture | Import excerpts/highlights into note-taking system |
| Layer 2 | Bold | Bold the most important phrases and sentences |
| Layer 3 | Highlight | Highlight the best of the bolded — "the best of the best" |
| Layer 4 | Executive summary | Write a 1-2 sentence summary in your own words at the top |
| Layer 5 | Remix (optional) | Create original work (blog post, sketch) extending the ideas |

**The gap with the course's 5 layers:** The course's progressive summarization in Module 2.4 uses: Capture, Highlight, Summarize, Your Take, Connect. This is NOT the same as Forte's Layer 1-5 structure. Forte's layers are about highlighting/bolding passes on the same note content. The course's layers add "Your Take" (personal perspective) and "Connect" (vault links) as explicit steps — these are meaningful extensions that especially benefit from AI.

**Attribution language the planner MUST use** (per CONTEXT.md): "Inspired by Tiago Forte's progressive summarization from Building a Second Brain. Forte describes progressive summarization as layers of highlighting and bolding. We extend that idea into five steps that work especially well with an AI partner."

This wording is accurate: Forte's core mechanism IS highlighting/bolding. The course extends it with perspective and linking steps. No misrepresentation.

### Zettelkasten

**Source:** Multiple secondary sources consistent with primary (MEDIUM-HIGH confidence)
**Author association:** Niklas Luhmann (sociologist, 20th century) — but note: Module 2.1 already correctly attributes this as a decades-old method without naming Luhmann
**Core concepts used in course:** Fleeting notes, literature notes, permanent notes — these are the standard Zettelkasten note types
**Attribution language:** "...drawing on the Zettelkasten method — a system used by researchers and writers for decades" (Module 2.1 already uses this framing)

### LYT (Linking Your Thinking)

**Source:** linkingyourthinking.com (HIGH confidence — official site)
**Author:** Nick Milo
**Core concept relevant to course:** Maps of Content (MOCs) — dynamic hub notes that organize and connect related notes; the course has a 07-MOCs folder and teaches MOCs in Module 2.2
**Attribution language:** "LYT — Linking Your Thinking — by Nick Milo, especially his idea of Maps of Content"

---

## Common Pitfalls

### Pitfall 1: Wrong Layer Count for Progressive Summarization
**What goes wrong:** Saying "Forte's progressive summarization has five layers" — it has 4 named layers (L1-L4) plus an original source (L0) and optional remix (L5). If counting L0, it's technically 5-6 depending on framing. The course's 5 layers are a different five.
**Why it happens:** Secondary sources often describe 4 layers without the L0/L5 edge cases. The course already has "five layers" language.
**How to avoid:** Use "layers of highlighting and bolding" (accurate description of the core mechanism) rather than citing a specific number. The CONTEXT.md-approved wording avoids the number problem entirely.
**Warning signs:** Any attribution that says "Forte's five layers" — this will be factually disputed.

### Pitfall 2: Breaking the Say/Check/Action Block Structure
**What goes wrong:** Adding attribution as a new block type or as a heading-formatted callout instead of inline within existing Say blocks.
**Why it happens:** It feels natural to offset attribution text visually.
**How to avoid:** Read SCRIPT_INSTRUCTIONS.md before editing any teaching script. All student-facing text lives inside Say blocks. Attribution sentences go within existing Say blocks, not as separate elements.
**Warning signs:** The edited file has an attribution section that starts with a markdown heading or is in a callout block.

### Pitfall 3: Over-Attribution in Module 1.1
**What goes wrong:** Introducing PARA in Module 1.1 because it's tempting to explain the full framework when crediting it.
**Why it happens:** PARA is part of BASB, so explaining BASB feels incomplete without PARA.
**How to avoid:** CONTEXT.md is explicit: PARA is saved for Module 2.1. Module 1.1 names BASB and Forte only — no framework details.
**Warning signs:** Module 1.1 edits contain "Projects, Areas, Resources, Archives" or "PARA."

### Pitfall 4: Modifying the Existing Q&A Section in Module 1.1
**What goes wrong:** Editing the "Common Student Questions" section in Module 1.1, which already has a correct answer to "Is this based on a real method? Like GTD or Zettelkasten?"
**Why it happens:** The existing answer already mentions BASB but is in Q&A format, while the phase aims to weave it into the main teaching flow.
**How to avoid:** Leave the Q&A section alone. The main teaching flow (Step 1) is where the attribution weaving happens. The Q&A is a safety net, not the primary delivery point.
**Warning signs:** Edits to lines 187-193 of lesson-modules/1-foundations/1.1-welcome/CLAUDE.md.

### Pitfall 5: README Placement Disrupts Quick Start Flow
**What goes wrong:** Inserting the acknowledgments paragraph within the "Quick Start" or "Course Structure" sections, creating friction for new users following setup steps.
**Why it happens:** Acknowledgments might feel like they belong near the introduction.
**How to avoid:** Place acknowledgments at the end of the README, after "Requirements." New users can follow the setup steps without scrolling past acknowledgments.
**Warning signs:** Acknowledgments appear before line 87 of the current README.

---

## Code Examples

Verified patterns from official sources and the existing teaching scripts:

### Example 1: Module 1.1 Attribution Insertion (suggested wording — discretionary)

This sentence belongs inside the Step 1 Say block, after "That's what your second brain is for."

```markdown
**Say:**
"...Your biological brain is amazing at having ideas. It's terrible at storing and organizing them. That's what your second brain is for.

This idea was popularized by Tiago Forte in his book *Building a Second Brain*. We're going to take those ideas and show how AI changes the game — because the version you're building here isn't just a notebook. It's a knowledge partner."

**Check:** Wait for the student to respond...
```

### Example 2: Module 2.1 CODE Callback (suggested wording — discretionary)

This paragraph belongs in Step 2, after the Zettelkasten introduction and before the note type definitions:

```markdown
"Remember Building a Second Brain from Module 1.1? Forte's workflow is called CODE — Capture, Organize, Distill, Express. The three note types we're about to learn map directly onto that workflow: fleeting notes are your Capture step, processing them into literature and permanent notes is your Organize and Distill step, and everything we build here ultimately serves the Express step — the writing, thinking, and creating you do for the world.

PARA is one popular system for organizing notes. Zettelkasten is another. And LYT — Linking Your Thinking by Nick Milo — adds the idea of Maps of Content, which you'll build in the next module. Our course draws from all three: the numbered folders give you a clear pipeline from capture to publish, the note types come from Zettelkasten, and the MOCs folder is straight from LYT."
```

### Example 3: Module 2.4 Attribution in Step 1 (suggested wording — discretionary)

After the sentence "There's a better approach called progressive summarization," add:

```markdown
"Inspired by Tiago Forte's progressive summarization from *Building a Second Brain*, Forte describes the technique as layers of highlighting and bolding — each pass through your notes filtering out more noise until the key insight rises to the top. We extend that idea into five steps that work especially well with an AI partner:"
```

Then the existing layer list follows. After each layer, the planner should add a brief AI callout — the most natural ones are:

- **Layer 3: Summarize** — "This used to take ten minutes of manual rewriting. Claude can draft it in seconds — and you spend your time reviewing whether it captured what mattered, rather than writing from scratch."
- **Layer 4: Your Take** — "This layer is uniquely yours — no AI should write it for you. But Claude can prompt you: 'What does this mean for your ClearPath article? What do you disagree with?' That question-asking accelerates your thinking."
- **Layer 5: Connect** — "Ask Claude 'What other notes in this vault relate to this idea?' and watch the links surface. This is where having a knowledge partner pays off."

### Example 4: README Acknowledgments Paragraph (suggested wording — discretionary)

```markdown
## Acknowledgments

This course builds on the shoulders of three frameworks that transformed how knowledge workers think about notes and ideas: Tiago Forte's *Building a Second Brain* (the CODE and PARA systems), the Zettelkasten method (fleeting, literature, and permanent notes), and Nick Milo's *Linking Your Thinking* (Maps of Content). These methods show what's possible with intentional effort and the right system. This course shows what happens when you add an AI partner.
```

---

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| PKM as purely manual system | PKM with AI acceleration layer | 2023-2026 | BASB + AI is now the standard framing, endorsed by Forte himself |
| BASB as standalone methodology | BASB as "prelude" to AI-era PKM | Feb 2026 (Forte's own writing) | Course framing is not derivative — it's the current evolution |
| Progressive summarization = highlighting/bolding | Extended to include perspective layers and AI callouts | Course extension | Must be attributed as extension, not the original |

**Forte's own positioning (from fortelabs.com, Feb 2026):** "Everything we've done until now in the realm of Personal Knowledge Management was only a prelude to this moment." He specifically names Claude Code and Obsidian as the current frontier. The course is doing exactly what the originator of BASB says is the next step.

---

## Open Questions

1. **Exact AI callout placement within Module 2.4's layer list**
   - What we know: The layer list appears in Step 1 as a 5-item bullet list (Layer 1 through Layer 5)
   - What's unclear: Whether to add callouts inline (after each bullet) or as a separate note after the full list
   - Recommendation: Inline after each relevant layer (3, 4, 5) keeps the progressive nature of the technique visible; the planner should review the existing flow and choose the least disruptive placement

2. **README: exact location of acknowledgments paragraph**
   - What we know: The README ends with the "Requirements" section; CONTEXT.md says "likely after Quick Start or at the end"
   - What's unclear: Whether after Requirements is truly the last section or if Distribution (Phase 6) will add more
   - Recommendation: Add after Requirements. If Phase 6 adds a section, it can be added above or below acknowledgments — either works.

3. **Zettelkasten author attribution**
   - What we know: Module 2.1 already describes Zettelkasten correctly without naming Niklas Luhmann
   - What's unclear: Whether the README acknowledgments should name Luhmann or just "the Zettelkasten method"
   - Recommendation: "The Zettelkasten method" without a specific author. Luhmann popularized but didn't invent it; attribution is to the practice, not a person.

---

## Validation Architecture

Per `.planning/config.json`, `workflow.nyquist_validation` is `true` — this section is required.

### Test Framework

| Property | Value |
|----------|-------|
| Framework | Manual verification — no automated test runner |
| Config file | None |
| Quick run command | Read modified file, confirm attribution present and Say/Check/Action format intact |
| Full suite command | Read all 4 modified files; verify each BASB requirement against file contents |

The course has no automated test suite (REQUIREMENTS.md explicitly scopes out automated CI testing: "Manual playtest sufficient for v1; course is experiential").

### Phase Requirements → Test Map

| Req ID | Behavior | Test Type | Verification Method | Notes |
|--------|----------|-----------|---------------------|-------|
| BASB-01 | Module 1.1 names BASB + Forte in Step 1 Say block | manual | Read lesson-modules/1-foundations/1.1-welcome/CLAUDE.md — confirm "Tiago Forte" and "Building a Second Brain" appear in Step 1 | String search viable |
| BASB-02 | Module 2.1 mentions CODE (Capture, Organize, Distill, Express) in Step 2 | manual | Read lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md — confirm "CODE" and all 4 steps present | String search viable |
| BASB-03 | Module 2.4 uses correct attribution for progressive summarization | manual | Read lesson-modules/2-building-the-brain/2.4-research-literature-notes/CLAUDE.md — confirm "Forte" + "progressive summarization" + "extend" language present | Must check for absence of "Forte's five layers" |
| BASB-04 | Module 2.1 mentions PARA (Projects, Areas, Resources, Archives) | manual | Read Module 2.1 — confirm "PARA" and all 4 words present | String search viable |
| BASB-05 | README has acknowledgments paragraph crediting BASB, Zettelkasten, LYT | manual | Read README.md — confirm all three names present in close proximity | String search viable |
| BASB-06 | "BASB meets AI" positioning emerges naturally | manual | Read all 4 modified files as a first-time student would — does the AI extension framing emerge? | Subjective; requires human judgment |

### Sampling Rate
- **Per task commit:** Read the modified file to confirm attribution present and format intact
- **Per wave merge:** Read all 4 files and check each BASB-XX requirement
- **Phase gate:** All 4 files verified before `/gsd:verify-work`

### Wave 0 Gaps
None — this phase has no automated test infrastructure to create. All verification is manual file reading.

---

## Sources

### Primary (HIGH confidence)
- https://fortelabs.com/blog/basboverview/ — CODE method, PARA system, official overview
- https://fortelabs.com/blog/progressive-summarization-a-practical-technique-for-designing-discoverable-notes/ — Exact progressive summarization layer structure (L0-L5)
- https://fortelabs.com/blog/introducing-the-ai-second-brain/ — Forte's 2026 framing of AI + BASB, explicit mention of Claude Code + Obsidian
- https://www.linkingyourthinking.com — LYT framework, Nick Milo, Maps of Content

### Secondary (MEDIUM confidence)
- https://www.buildingasecondbrain.com/ai-second-brain — AI Second Brain course page (verifies Forte's current positioning)
- Multiple secondary BASB summaries confirming CODE acronym and PARA structure

### Tertiary (LOW confidence)
- None — all critical framework details verified against official sources

---

## Metadata

**Confidence breakdown:**
- Framework definitions (CODE, PARA, LYT): HIGH — verified against official websites
- Progressive summarization layer structure: HIGH — verified against Forte's original article
- Attribution wording suggestions: MEDIUM — these are discretionary per CONTEXT.md; exact wording is Claude's call
- Forte's AI positioning: HIGH — verified against his February 2026 official writing
- Pitfalls: HIGH — derived directly from reading existing teaching scripts and SCRIPT_INSTRUCTIONS.md

**Research date:** 2026-03-21
**Valid until:** Stable — BASB framework definitions don't change; progressive summarization article has been up for years. The AI positioning framing is current as of Feb 2026.
