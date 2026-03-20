# Phase 3: BASB Integration - Context

**Gathered:** 2026-03-21
**Status:** Ready for planning

<domain>
## Phase Boundary

Layer in Building a Second Brain acknowledgments and framing across the course. Properly attribute Tiago Forte's core concepts (CODE, PARA, progressive summarization), position the course as extending established PKM methods with AI, and add README acknowledgments. No new modules, no new vault content, no new features — this is attribution and framing layered onto existing scripts.

</domain>

<decisions>
## Implementation Decisions

### Attribution tone & placement
- Weave BASB reference into Module 1.1 Step 1 ("What Is a Second Brain?") naturally — not a separate step or callout
- Tone: respectful nod — "This idea was popularized by Tiago Forte in Building a Second Brain. We're going to take those ideas and show how AI changes the game."
- Module 1.1 names BASB and Forte only — PARA is NOT introduced in 1.1, saved for Module 2.1
- Module 2.1 gets a light callback when introducing CODE: "Remember Building a Second Brain from Module 1.1? Forte's workflow is called CODE..."

### PARA vs. course folders
- PARA explained in Module 2.1 (not 1.1) — when note types and organization are being taught
- Position PARA as one approach among many: "PARA is one popular system. Zettelkasten is another. Our structure borrows from both — the numbered folders give you a clear pipeline from capture to publish."
- LYT (Linking Your Thinking by Nick Milo) mentioned in the same breath as PARA and Zettelkasten in Module 2.1: "PARA for organization, Zettelkasten for note types, LYT for Maps of Content — our course draws from all three."
- No explicit mapping table between PARA and course folders — the "one approach among many" framing makes a comparison table unnecessary

### Progressive summarization
- Keep the course's 5-layer approach as-is, cite inspiration: "Inspired by Tiago Forte's progressive summarization from Building a Second Brain"
- Include a brief comparison to Forte's original: "Forte describes progressive summarization as layers of highlighting and bolding. We extend that idea into five steps that work especially well with an AI partner."
- Add per-layer AI callouts: when walking through each layer, note where Claude accelerates the process (e.g., "Layer 3 used to take 10 minutes of manual summarizing — Claude can draft it in seconds")
- Research flag from STATE.md still applies: verify Forte's exact layer description before finalizing the comparison language

### Integration density
- Key touchpoints only — 4 files modified:
  1. Module 1.1 (BASB intro in Step 1)
  2. Module 2.1 (CODE + PARA + LYT + Zettelkasten in same breath)
  3. Module 2.4 (progressive summarization attribution + AI callouts)
  4. README (acknowledgments paragraph)
- No recurring BASB callbacks in other modules — the rest of the course stands on its own
- "BASB meets AI" positioning emerges naturally from the integration, not stated as an explicit tagline in teaching scripts

### README acknowledgments
- Short paragraph (3-4 sentences), not a structured section with bullet points
- Credits BASB (Forte), Zettelkasten, and LYT (Nick Milo)
- Combines credit with AI positioning: "...these methods show what's possible with manual effort. This course shows what happens when you add an AI partner."

### Claude's Discretion
- Exact wording of the BASB reference woven into Module 1.1 Step 1
- Exact wording of the CODE/PARA/LYT/Zettelkasten paragraph in Module 2.1
- Exact placement of AI callouts within Module 2.4's step-by-step flow
- Where in the README the acknowledgments paragraph goes (likely after Quick Start or at the end)

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Teaching scripts to modify
- `lesson-modules/1-foundations/1.1-welcome/CLAUDE.md` — Step 1 "What Is a Second Brain?" gets BASB attribution woven in
- `lesson-modules/2-building-the-brain/2.1-note-types-templates/CLAUDE.md` — Gets CODE method + PARA/Zettelkasten/LYT framing
- `lesson-modules/2-building-the-brain/2.4-research-literature-notes/CLAUDE.md` — Gets progressive summarization attribution + AI callouts

### README
- `README.md` — Needs acknowledgments paragraph added

### Teaching format
- `.claude/SCRIPT_INSTRUCTIONS.md` — Say/Check/Action format that all script modifications must follow

### Research flags
- STATE.md research flag: "Verify progressive summarization layer count against Forte's primary sources before finalizing BASB integration"
- STATE.md research flag: "Review buildingasecondbrain.com/ai-second-brain before finalizing module 1.1 BASB positioning language"

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- Module 1.1 Step 1 already has a strong "What Is a Second Brain?" narrative — BASB attribution slots in naturally after the concept is explained
- Module 2.1 Step 2 already teaches Zettelkasten note types — CODE method and multi-framework framing adds to this section
- Module 2.4 Step 1 already uses the "gold panning" analogy and 5-layer progressive summarization — Forte attribution and AI callouts layer onto existing content

### Established Patterns
- Say/Check/Action block format — all modifications must preserve this structure
- Warm, non-technical language — BASB references must match this tone ("folder" not "directory", etc.)
- Alex Rivera fictional context — BASB integration should feel like a natural part of teaching Alex, not a digression

### Integration Points
- Module 1.1 Step 1 is the single entry point for BASB attribution — all later references callback to this
- Module 2.1 is the hub for organizational framework framing (PARA, Zettelkasten, LYT)
- Module 2.4 is the hub for progressive summarization attribution
- README acknowledgments section is independent of teaching scripts

</code_context>

<specifics>
## Specific Ideas

- The "one approach among many" framing for PARA keeps the course feeling independent rather than derivative
- AI callouts per-layer in Module 2.4 make the "BASB meets AI" positioning concrete through demonstration rather than declaration
- Natural emergence of positioning (no explicit "BASB meets AI" tagline) respects the student's intelligence — they'll connect the dots

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 03-basb-integration*
*Context gathered: 2026-03-21*
