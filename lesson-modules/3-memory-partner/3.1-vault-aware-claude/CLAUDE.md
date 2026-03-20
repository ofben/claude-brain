# Module 3.1: Vault-Aware Claude

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student how to make Claude deeply aware of their vault's structure, conventions, and context. In Module 1.5, they created a basic CLAUDE.md. Now they'll transform it into a powerful context document that makes every interaction with Claude smarter and more tailored. This is the module where Claude goes from "helpful assistant" to "knowledgeable partner."

---

## Module Learning Objectives
1. Understand why a detailed CLAUDE.md dramatically improves Claude's usefulness
2. Enhance the vault's CLAUDE.md with conventions, client context, and pre-configured instructions
3. Create a nested CLAUDE.md for a specific project folder
4. Experience the difference between generic and context-aware Claude responses

---

## Teaching Flow

### Step 1: Welcome and Recap (2 minutes)

**Say:**
"Welcome to Level 3! This is where things get really interesting. In the first two levels, you learned to navigate your vault and build a structure for your notes. Now we're going to make Claude into a true memory partner — an assistant that actually *knows* your work, your clients, and your preferences.

Let's start with something you've already seen: the CLAUDE.md note. Back in Module 1.5, you created a basic version — a simple introduction to your vault. But CLAUDE.md can be so much more than that. Think of it like this: the basic version was like handing someone a business card. What we're about to build is like sitting down with a trusted colleague and giving them the full download on how you work."

**Check:** Wait for the student to acknowledge before continuing.

---

### Step 2: Read the Current CLAUDE.md (3 minutes)

**Say:**
"Let's start by looking at what we've got. I'll read your current vault CLAUDE.md so we can see where we're starting from."

**Action:**
```
Read vault/CLAUDE.md
```

**Say:**
"This is a solid starting point, but there's so much more we can tell Claude to make it genuinely useful. Right now, Claude knows the basics about your vault. But it doesn't know your naming conventions, your client details, your writing style preferences, or what you usually mean when you ask for certain kinds of help.

Let's fix that. We're going to enhance this CLAUDE.md with five new sections:

1. **Vault conventions** — how notes are named, what frontmatter fields you use, your tag vocabulary
2. **Folder purposes** — not just folder names, but what kind of content belongs in each one
3. **Client context** — a summary of each client so Claude can tailor its output
4. **Writing style preferences** — your voice, your standards, your pet peeves
5. **'When I ask you to...' patterns** — pre-configured instructions for tasks you do often"

**Check:** Wait for the student to confirm they're ready to build this out.

---

### Step 3: Enhance the CLAUDE.md (5 minutes)

**Say:**
"Now I'm going to rewrite your vault CLAUDE.md with all five sections. Watch how much richer this is than what we started with. Each section gives Claude specific context that makes its responses better."

**Action:**
Write the following enhanced CLAUDE.md to `vault/CLAUDE.md`:

```markdown
# Alex Rivera's Knowledge Vault

This is my personal knowledge management system in Obsidian. I'm a freelance writer and content creator.

## Vault Conventions

### Naming Patterns
- Daily notes: `YYYY-MM-DD.md` (e.g., `2026-03-19.md`)
- Project drafts: `Draft - [Title].md` (e.g., `Draft - Async Communication.md`)
- Research notes: Descriptive titles, no date prefix (e.g., `Remote Work Communication Research.md`)
- Meeting notes: `Meeting notes [Person] [MM-DD].md`

### Frontmatter Standards
Every note should include frontmatter with at least:
- `date`: When the note was created (YYYY-MM-DD)
- `tags`: Relevant tags as a list
- `type`: One of fleeting, permanent, literature, project, daily, template, moc

Optional but encouraged:
- `client`: Which client this relates to (horizon, bloom, clearpath)
- `project`: Specific project name
- `status`: draft, in-progress, review, published

### Tag Vocabulary
Use these established tags consistently:
- Topics: #ai, #writing, #productivity, #wellness, #digital-minimalism, #knowledge-management, #remote-work, #creativity
- Types: #daily, #research, #draft, #idea, #meeting, #reference
- Clients: #horizon, #bloom, #clearpath, #newsletter
- Status: #active, #published, #archived

## Folder Purposes

- **00-Inbox**: Raw captures, quick thoughts, unprocessed notes. Anything dumped here needs to be triaged and moved to its proper home.
- **01-Daily-Notes**: One note per day. Reflections, what happened, ideas that came up, tasks for tomorrow.
- **02-Projects**: Active client and personal projects. Each client has a subfolder: Horizon-Magazine, Bloom-Studio, ClearPath, The-Synthesis.
- **03-Research**: Permanent research notes — processed, linked, and reusable. Not raw captures.
- **04-Drafts**: Work-in-progress articles, blog posts, and newsletter essays.
- **05-References**: Literature notes from books, articles, podcasts, and talks.
- **06-Templates**: Note templates for consistent formatting.
- **07-MOCs**: Maps of Content — index notes that organize and link related ideas.
- **08-Published**: Final versions of published work, archived for reference.

## Client Context

### Horizon Magazine
- Editor: Sarah Chen. Gives creative latitude but pushes back on vague or abstract writing.
- Content: Long-form features (2,000-3,500 words). AI tools, future of work, digital culture.
- Tone: Thoughtful, well-researched, accessible to general tech-interested readers. No jargon dumps.
- Current: "The AI Writing Partner" feature article.

### Bloom Studio
- Contact: Maya Torres, Content Director.
- Content: Blog posts (1,000-1,500 words), email sequences. Wellness, digital boundaries, productivity without burnout.
- Tone: Warm, approachable, research-backed but never academic. Empowering, not prescriptive.
- Current: "Digital Boundaries" blog series (4 parts).

### ClearPath
- Contact: James Liu, Marketing Lead.
- Content: SEO blog posts (1,500-2,000 words). Project management, remote work, collaboration.
- Tone: Professional but not dry. Data-driven, actionable takeaways. Include statistics.
- SEO: Primary keyword in title, H1, first 100 words, and 2+ H2s. Internal links required.
- Current: "Async Communication Best Practices" article.

### The Synthesis (Newsletter)
- Biweekly newsletter about creativity and technology.
- Format: One main essay (800-1,200 words) + a "Signal" section with 3-5 links.
- Core premise: The most interesting ideas live at the intersection of fields that don't usually talk to each other.
- ~1,200 subscribers on Substack.

## Writing Style Preferences

- I write in first person when appropriate, especially for the newsletter and Bloom content.
- I prefer concrete examples over abstract theory.
- I use analogies a lot — connecting unfamiliar concepts to familiar ones is my signature move.
- I avoid jargon unless I'm writing for a technical audience (and even then, I explain it).
- I never use corporate buzzwords: "leverage," "synergy," "disrupt," etc.
- My drafts tend to start strong, get messy in the middle, and need a stronger ending. Help me with middles and endings.

## When I Ask You To...

- **"Triage the inbox"** — Read everything in 00-Inbox, categorize each note, suggest where it belongs, and identify connections to existing notes.
- **"Summarize my research on [topic]"** — Search the vault for everything related to that topic across all folders and create a research brief.
- **"Draft a note about [topic]"** — Create a properly formatted note with frontmatter, relevant tags, and [[links]] to existing related notes. Place it in the appropriate folder.
- **"Review this draft"** — Read the draft and give feedback on structure, clarity, argument strength, and tone. Consider the target client/audience.
- **"What do I know about [topic]?"** — Search the entire vault and compile everything I've captured about that topic, organized by source/folder.
- **"Connect this to my other work"** — Find links between the current note and other notes across projects. Look for cross-pollination opportunities.
```

**Say:**
"Look at the difference. This CLAUDE.md is like a briefing document. Now, every time Claude reads your vault, it knows your naming conventions, your clients, your writing style, and exactly what you mean when you say things like 'triage the inbox.' That last section — the 'When I ask you to...' patterns — is especially powerful. It's like programming shortcuts for your most common requests."

**Check:** Wait for the student to review the enhanced CLAUDE.md and respond.

---

### Step 4: Nested CLAUDE.md — Folder-Level Context (5 minutes)

**Say:**
"Here's something really clever that most people don't know about: you can put a CLAUDE.md inside *any* folder, and Claude will pick up that extra context when working in that area. It's like giving Claude a specialized briefing for each part of your vault.

Think of it this way: the vault-level CLAUDE.md is the general orientation. A folder-level CLAUDE.md is the deep briefing for a specific project. Let me show you what this looks like for your Horizon Magazine work."

**Action:**
Write a project-specific CLAUDE.md to `vault/02-Projects/Horizon-Magazine/CLAUDE.md`:

```markdown
# Horizon Magazine Project Context

## About This Client
Horizon Magazine is my anchor client and the work I'm proudest of. Editor Sarah Chen gives me creative latitude and trusts my instincts on angles. She pushes back when drafts get too abstract — which makes the work better.

## Writing Standards for Horizon
- Long-form features: 2,000-3,500 words
- Tone: Thoughtful, well-researched, accessible. "Could a smart person who doesn't work in tech follow this and care?"
- Always avoid the obvious take. Sarah values nuance and ground-level reality over hot takes.
- Include real interviews and diverse perspectives when possible.
- Strong opening hooks. The first paragraph has to earn the reader's attention.
- Endings should land — don't just trail off. Give the reader something to sit with.

## Current Active Piece
**"The AI Writing Partner"** — Feature on how writers actually use AI tools day-to-day. Beyond the hype and fear. Due March 28, 2026.
- Key angle: What does the working relationship between a writer and AI practically look like?
- Sarah's instruction: "Don't just report — show us YOUR process too."
- Need 5 interview sources, including at least one skeptic.

## Upcoming
**"Digital Minimalism in Practice"** — Follow-up to the January piece "The Attention Tax." Practical frameworks, not purity tests. Pitching for April.

## When Writing for Horizon
- Use my Horizon voice: intelligent, curious, grounded. Think "smart friend explaining something fascinating at dinner."
- Always consider: what's the angle that hasn't been written yet?
- Link to relevant research notes in 03-Research and related vault content.
- Draft format: use `Draft - [Title].md` naming, place in 04-Drafts, tag with #horizon #draft.
```

**Say:**
"Now Claude has two layers of context. When you're working on anything Horizon-related, Claude knows the general vault conventions *and* the specific Horizon requirements — Sarah's editorial standards, the current assignment, and even your Horizon writing voice.

You could create one of these for each client folder: Bloom Studio, ClearPath, and The Synthesis. The more context you provide, the better Claude's output will match what you actually need."

**Check:** Wait for the student to respond. If they ask about creating CLAUDE.md notes for other project folders, encourage them — but note they can always do it later.

---

### Step 5: Test the Context (3 minutes)

**Say:**
"Let's see this in action. I'm going to draft a quick opening paragraph for a Horizon article, and you'll be able to tell whether the vault context made a difference. Watch how it picks up Sarah's standards, the right tone, and the topic focus."

**Action:**
Using the Horizon Magazine context, draft a sample opening paragraph for "The AI Writing Partner" article. Show it to the student. The paragraph should reflect: accessible but smart tone, strong opening hook, avoidance of the "AI will replace writers" framing, and a personal/practical angle.

**Say:**
"See how that sounds like something you'd actually write for Sarah? That's the power of a well-crafted CLAUDE.md. Without all that context, Claude would give you something generic — technically fine but not *yours*. With it, the output is tuned to the specific client, the specific assignment, and your specific voice."

**Check:** Wait for the student's reaction. Ask: "Does that feel like a Horizon paragraph to you? What would you change?"

---

### Step 6: The Leverage Point (2 minutes)

**Say:**
"Here's the key insight from this module: **CLAUDE.md is your leverage point.** Every minute you spend improving it pays off across every single interaction with Claude. It's not busywork — it's an investment.

Think about it: you wrote the context once, and now every time you ask Claude for help, it draws on all of that. Your naming conventions, your client requirements, your writing style — Claude remembers all of it, every time. As your vault grows and your work evolves, you'll update this document, and Claude's understanding evolves with it.

In the next module, we're going to take this even further. You'll meet three specialized sub-agents — think of them as team members who each bring a different lens to your work. An organizer, an editor, and a creative advisor. Ready?"

**Check:** Wait for the student to confirm they're ready to move on.

**Say:**
"Great work! You've just turned Claude from a generic assistant into a vault-aware partner that knows your work, your clients, and your style. When you're ready for the next module, type `/start-3-2`."

---

## Important Notes for Claude
- If the student hasn't completed Module 1.5 and there's no existing vault/CLAUDE.md, create one from scratch rather than trying to "enhance" a missing note.
- The enhanced CLAUDE.md content should be written to the vault, not just shown. This is a real configuration that will persist.
- If the student asks about STYLE-GUIDE.md, explain that writing style preferences are captured directly in the CLAUDE.md — no separate note is needed unless they want one.
- The Horizon-specific CLAUDE.md is a real note — write it to the vault so it persists for future modules.

## Common Student Questions
- **"Do I need to create a CLAUDE.md for every folder?"** — No! Start with the vault-level one and add folder-level ones only for projects or areas where you want specialized context. The top-level CLAUDE.md handles most of it.
- **"What if my preferences change?"** — Just update the CLAUDE.md. It's a living document, not a permanent contract.
- **"Can I put too much in the CLAUDE.md?"** — Technically yes — if it gets thousands of lines, it becomes less useful. Keep it focused on information that actually changes how Claude should behave. A few hundred lines is plenty.
- **"Does Claude always read CLAUDE.md?"** — Yes, Claude reads the CLAUDE.md in the current working folder (and parent folders) at the start of every conversation.

## Success Criteria
- [ ] The vault CLAUDE.md has been enhanced with all five sections
- [ ] A nested CLAUDE.md exists at vault/02-Projects/Horizon-Magazine/CLAUDE.md
- [ ] The student has seen a context-aware draft and understands the difference it makes
- [ ] The student understands that CLAUDE.md is a living, updatable document
