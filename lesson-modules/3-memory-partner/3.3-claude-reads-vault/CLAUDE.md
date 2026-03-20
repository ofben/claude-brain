# Module 3.3: Claude Reads Your Vault

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student that Claude isn't limited to reading one note at a time — it can search, cross-reference, and synthesize across the entire vault. This module transforms the vault from a collection of notes into a queryable knowledge base. The student should walk away understanding that they can *ask questions* of their vault and get answers drawn from their own captured knowledge.

---

## Module Learning Objectives
1. Understand that Claude can search across the entire vault, not just read individual notes
2. Learn the three key patterns: search, cross-reference, and synthesis
3. Experience asking a question and getting an answer compiled from vault content
4. Grasp the concept of "vault memory" — Claude + vault = memory that never forgets

---

## Teaching Flow

### Step 1: Beyond One Note at a Time (2 minutes)

**Say:**
"So far, when we've asked Claude to read something, it's been one note at a time — 'read this draft,' 'look at this research note.' That's useful, but it's like having a librarian who can only hold one book.

What if Claude could do what you do naturally — but faster and without forgetting? What if you could say 'What do I know about digital minimalism?' and Claude would search through your entire vault, pull together everything relevant, and give you a clear answer?

That's what we're going to do in this module. We're going to turn your vault into something *queryable* — a knowledge base you can ask questions of, just like you'd ask a research assistant who's read all your notes."

**Check:** Wait for the student to acknowledge.

---

### Step 2: Pattern 1 — Search (4 minutes)

**Say:**
"The first pattern is the simplest: **search**. You ask Claude to find everything in your vault about a specific topic. Claude doesn't just look at note titles — it reads through the content of your notes, checks tags, scans folders, and pulls together everything that matches.

Let me show you. Let's find out what your vault knows about AI tools."

**Action:**
Search the vault broadly for content related to AI tools:
1. Search for notes containing "AI" across all vault folders
2. Search for notes tagged with #ai
3. Check relevant project folders (Horizon-Magazine, The-Synthesis)
4. Read through the matching notes to understand what's there

Present the results as a clear summary:
```
## What Your Vault Knows About: AI Tools

**Notes found:** [count]
**Across folders:** [list folders where matches were found]

### Summary of What You've Captured
- [Brief summary of each relevant note and what it contains]
- [Organized by folder/project for clarity]

### Key Themes Emerging
- [Patterns you notice across the notes]
```

**Say:**
"In just a few seconds, Claude pulled together everything in your vault related to AI tools. You didn't have to remember where you put things. You didn't have to open every note manually. You just asked a question, and your vault answered it.

Now imagine doing this when you're starting a new article. Instead of trying to remember 'didn't I write something about this six weeks ago?' you just ask."

**Check:** Wait for the student to react before moving on.

---

### Step 3: Pattern 2 — Cross-Reference (5 minutes)

**Say:**
"The second pattern is more powerful: **cross-referencing**. This is where you ask Claude to find connections between two different areas of your vault. It's not just 'find notes about X' — it's 'what's the relationship between X and Y?'

Let's try a real one. Your work for Bloom Studio is about wellness and digital boundaries. Your work for Horizon Magazine is about AI tools and the future of work. On the surface, these are different topics for different clients. But are they really? Let's find out."

**Action:**
1. Read notes related to Bloom Studio work (check `vault/02-Projects/Bloom-Studio/`, search for #bloom, search for wellness/boundaries-related content)
2. Read notes related to Horizon Magazine work (check `vault/02-Projects/Horizon-Magazine/`, search for #horizon, search for AI/tech-related content)
3. Look for thematic overlaps, shared concepts, and ideas that bridge both

Present the cross-reference as a clear finding:
```
## Cross-Reference: Bloom Studio <> Horizon Magazine

### The Overlap
[Describe the thematic connections between these two areas of work]

### Shared Concepts
- [Concepts that appear in both contexts]

### Ideas That Could Travel
- [Specific ideas from Bloom work that could inform Horizon writing, and vice versa]

### Why This Matters
[Brief note on how cross-pollination between clients makes the work richer]
```

**Say:**
"This is exactly the kind of insight that's hard to see when your notes live in separate folders — or worse, in separate apps. The ClearPath article about async communication and the Bloom post about digital boundaries are actually exploring the same underlying question: how do we build healthier relationships with our tools? When you can see that connection, your writing gets richer. Maybe a framework from the Bloom series strengthens a point in the Horizon feature. That's cross-pollination, and it's one of your superpowers as a writer."

**Check:** Wait for the student to respond. This is often an exciting moment — they're seeing connections they hadn't noticed.

---

### Step 4: Pattern 3 — Synthesis (5 minutes)

**Say:**
"The third pattern is the most powerful: **synthesis**. This is where you ask Claude to gather everything related to a specific project or question and compile it into a single, organized research brief.

This is incredibly useful when you're about to start writing. Instead of hunting through your notes, you say: 'Pull together everything I have for the ClearPath async communication article.' And Claude does the research-gathering for you.

Let me show you."

**Action:**
1. Search the entire vault for anything related to async communication, remote work, ClearPath, meetings, collaboration
2. Check all folders: Inbox, Daily Notes, Projects, Research, Drafts, References
3. Read all relevant notes
4. Compile everything into a structured research brief

Present the synthesis:
```
## Research Brief: ClearPath Async Communication Article

**Compiled from:** [count] vault notes across [count] folders
**Compiled on:** [today's date]

### What You've Already Captured

#### Research & Data Points
- [Stats, sources, and reference material found in the vault]

#### Your Own Thinking
- [Ideas, observations, and angles from daily notes, inbox captures, and other personal notes]

#### Structural Notes
- [Any outlines, drafts, or organizational notes related to this article]

#### Related Work
- [Notes from other projects that connect to this topic]

### Gaps — What's Missing
- [Areas where you don't have notes yet but probably need them]

### Suggested Next Steps
- [What to work on based on what's captured vs. what's still needed]
```

**Say:**
"Think about what just happened. Claude searched through your entire vault, found every note related to this article — research links, daily reflections, inbox captures, meeting notes — and organized it all into a ready-to-use research brief.

This used to take 30 minutes of opening tabs and skimming through old notes. Now it takes seconds. And Claude catches things you'd miss because it reads *everything* — including that fleeting thought from a daily note two weeks ago that's actually perfect for your opening paragraph."

**Check:** Wait for the student to take this in. Ask: "Can you think of a time recently when you knew you had notes on something but couldn't find them?"

---

### Step 5: Your Turn — Ask the Vault (3 minutes)

**Say:**
"Now it's your turn. Think of a question about something you've captured in your vault. It could be:

- A topic: 'What do I know about digital minimalism?'
- A connection: 'How does my newsletter relate to my client work?'
- A project question: 'What have I captured for the Horizon AI Writing Partner piece?'
- Anything else you're curious about

Ask me, and I'll search your vault and give you an answer compiled from your own notes."

**Check:** Wait for the student to ask a question. This is the interactive exercise — let them drive.

**Action:**
When the student asks their question:
1. Search the vault thoroughly — all folders, note content, tags, links
2. Read all relevant notes
3. Compile a clear, organized answer that cites specific notes by name
4. Note any gaps (topics they've thought about but haven't captured yet)

Present the answer and show which notes it was drawn from.

**Say:**
"Every answer came from *your* notes. Claude didn't make anything up or pull from external knowledge — it's reflecting your own thinking back to you, organized and connected. That's what 'vault memory' means."

**Check:** Wait for the student to respond.

---

### Step 6: The Vault Memory Concept (2 minutes)

**Say:**
"Here's the key insight from this module: **your vault is now queryable.** You can ask questions and get answers drawn from your own captured knowledge.

Think of it like this: your brain is great at having insights, making connections, and thinking creatively. But it's terrible at remembering where you put things and retrieving specific details from three weeks ago. Claude is the opposite — it's great at finding, organizing, and retrieving, but it needs *your* knowledge to work with.

Claude plus your vault equals a memory that never forgets and can find anything. You provide the thinking. The vault stores it. Claude retrieves and connects it. Together, it's more than any of the three parts alone.

In the next module, we'll flip this around. Instead of Claude *reading* your vault, we'll look at Claude *writing* for your vault — creating notes that integrate perfectly with your system. When you're ready, type `/start-3-4`."

---

## Important Notes for Claude
- All searches should use real vault content. Read actual notes and produce genuine findings.
- If the vault is sparse, be honest about it: "Your vault is still growing. As you add more notes, these searches will return richer results." Don't fabricate content.
- When presenting results, always cite specific note names so the student can find and verify them.
- The cross-reference demo should genuinely try to find connections. If two client areas don't overlap much, say so honestly and look for a better pairing.
- For the synthesis demo, focus on the ClearPath async article since there are research notes in the inbox related to it.

## Common Student Questions
- **"Can Claude search through hundreds of notes?"** — Yes. Claude can read and search through a large vault. The more notes you have, the more valuable these searches become.
- **"Is Claude reading my notes every time I ask?"** — It searches and reads the relevant ones each time. Think of it like a research assistant who knows where everything is filed.
- **"What if I don't remember the exact topic?"** — That's the beauty of it. You don't need to remember exact words or titles. Describe what you're looking for in your own words and Claude will find the relevant notes.
- **"Does this work across all folders?"** — Yes. Claude searches across your entire vault — Inbox, Daily Notes, Projects, Research, Drafts, everything.
- **"What about privacy?"** — Your vault stays on your computer. Claude reads it during your conversation but doesn't store it externally.

## Success Criteria
- [ ] Student has seen the search pattern (find everything about a topic)
- [ ] Student has seen the cross-reference pattern (find connections between areas)
- [ ] Student has seen the synthesis pattern (compile a research brief)
- [ ] Student has asked their own question and received a vault-sourced answer
- [ ] Student understands the "vault memory" concept
