# Module 2.2: Maps of Content (MOCs)

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student about Maps of Content — index notes that organize related notes by topic. This concept frees the student from thinking of folders as the only way to organize. MOCs are a powerful "aha" for people used to rigid folder hierarchies. Make this feel liberating, not complicated.

---

## Module Learning Objectives
1. Understand what a Map of Content is and why it's useful
2. See why MOCs are more flexible than folders alone
3. Watch Claude analyze the vault and suggest MOC topics
4. Build two MOCs together: one thematic, one practical
5. Understand that MOCs are living documents that grow over time

---

## Teaching Flow

### Step 1: The Problem with Folders (3 minutes)

**Say:**
"Quick question before we dive in: where would you file a note about 'how AI tools are changing the way writers work'?

Would it go in your AI research folder? Your writing process folder? Your client work folder — since it relates to the Horizon article? Maybe your newsletter ideas folder, since you could write about it there too?

This is the problem with folders. Folders force you to pick *one* place for a note, even when that note belongs to multiple topics. And then three weeks later, you can't find it because you filed it in the 'wrong' place — or rather, you filed it in *one* of the right places but you're looking in a different one.

Alex has this exact problem. Research about async communication is useful for the ClearPath article *and* for thinking about how to manage client communication *and* potentially for the newsletter. One note, three contexts.

There's a better way. It's called a **Map of Content**."

**Check:** Wait for student to respond or acknowledge.

---

### Step 2: What Is a Map of Content? (3 minutes)

**Say:**
"A Map of Content — or MOC — is simply an index note. It's a note that organizes and links to other notes around a specific topic or theme.

Think of it this way: if your vault is a library, folders are the shelves. They hold books physically. But a MOC is like a reading list or a card catalog — it says 'if you're interested in *this topic*, here are all the relevant notes, organized in a way that makes sense.'

The key difference: a note can only live in one folder, but it can appear on as many MOCs as it needs to. That AI-and-writing note? It shows up on your 'AI and Creative Work' MOC, your 'Writing Process' MOC, *and* your 'Client Work Dashboard.' The note lives in one place physically, but it's organized in every context where it's relevant.

MOCs live in the **07-MOCs** folder in your vault. Let's build some."

**Check:** Wait for student to respond. If they ask about the difference between MOCs and tags, explain: "Tags are good for quick filtering, but a MOC gives you *context*. It doesn't just say 'this note has the tag #AI' — it groups related notes with descriptions and section headings so you can see the bigger picture at a glance."

---

### Step 3: Claude Scans the Vault (4 minutes)

**Say:**
"Here's where Claude earns its keep. Instead of you manually going through every note trying to figure out what topics you have, Claude can scan the entire vault and identify clusters — groups of notes that share a theme.

Let me take a look at everything in the vault right now."

**Action:**
Read all notes in the vault — every file in `vault/00-Inbox/`, `vault/01-Daily-Notes/`, `vault/02-Projects/` (and subfolders), `vault/03-Research/`, `vault/04-Drafts/`, `vault/05-References/`, and `vault/08-Published/`. Compile a mental inventory of all the topics and themes present.

**Present it like this:**
After reading all the notes, present your analysis to the student as a summary:

"OK, I've read through everything in the vault. Here's what I see — the main topic clusters:

**AI and Creative Work**
Notes about AI tools, how they affect writing, the 'AI as extended memory' idea, research for the Horizon article. This is a big theme that shows up across your daily notes, inbox captures, and research.

**Client Work and Projects**
The Horizon article on AI writing partners, the Bloom Studio digital boundaries series, the ClearPath async communication piece, the newsletter. These are your active workstreams.

**Writing Process and Knowledge Management**
The Zettelkasten discovery, tools for thought history, the podcast recommendation about digital gardens, the book idea about 'The Connected Creator.' You're clearly thinking a lot about how to manage knowledge and improve your creative process.

**Digital Wellness and Boundaries**
The Bloom series on digital boundaries, digital minimalism, the connection between tech boundaries and productivity. This overlaps with client work but it's also a personal interest.

**Freelance Life**
Reflections on workload, client management, the feeling of being overwhelmed, coffee with Marcus about freelancing. Not as many standalone notes on this, but it shows up in your daily notes regularly."

**Say:**
"See those clusters? Some of these you'd expect — of course there's a cluster around client work. But some are more interesting. Like the fact that 'AI and creative work' shows up in your daily notes, your research, your inbox captures, *and* your client work for Horizon. That's a sign it deserves its own MOC.

Let's build two MOCs right now. First, a thematic one: 'AI and Creative Work.' Then a practical one: 'Client Work Dashboard.'"

**Check:** Wait for student to confirm they want to proceed.

---

### Step 4: Building the First MOC — AI and Creative Work (4 minutes)

**Say:**
"Let's create the 'AI and Creative Work' MOC. I'll read the relevant notes, pull out the key themes, and organize everything into a useful index."

**Action:**
Create the file `vault/07-MOCs/AI and Creative Work.md` with this content:

```
---
type: moc
created: 2026-03-20
tags: [moc, AI, writing, creativity]
---

# AI and Creative Work

*A map of everything in this vault related to artificial intelligence and its impact on creative work, writing, and the creator economy.*

---

## The Big Questions
How are AI tools changing the way writers and creators work? Where's the line between augmentation and replacement? What does it mean to have a "thinking partner" that isn't human?

---

## Research & Ideas

### AI as a Thinking Tool
- [[AI as Extended Memory]] — The idea that AI tools are becoming extensions of our memory, not just search engines. Writers are offloading a kind of thinking to AI, changing what they need to remember.
- [[Quick thought - AI and memory]] — The original fleeting note that sparked this line of thinking.

### Tools for Thought
- [[Tools for Thought History]] — From Vannevar Bush's Memex (1945) to modern tools like Obsidian. AI is the latest chapter in an 80-year quest to augment human thinking.
- [[Podcast rec from Jamie]] — Maggie Appleton's take on digital gardens — notes that grow over time instead of static captures.

### The Creator Economy and AI
- [[Book idea fragments]] — "The Connected Creator" book concept: how independent creators build knowledge systems. AI tools are a major thread here.

---

## Active Projects
- [[AI Writing Partner - Brief]] — Horizon Magazine feature on how writers are actually using AI day-to-day. Due early April.
- [[AI Writing Partner - Research Notes]] — Research material for the Horizon piece.
- [[Draft - The AI Writing Partner Opening]] — Three draft openings for the article.

---

## From the Daily Notes
- **March 10:** Noticed a connection between the Bloom digital boundaries series and the Horizon AI piece — "setting boundaries with AI tools is its own form of digital minimalism."
- **March 14:** Major rabbit hole into Zettelkasten and tools for thought. Downloaded Obsidian. "Today felt like one of those days where a thread starts pulling and you realize there's a whole tapestry behind it."
- **March 17:** Newsletter idea brewing: "tools that think with you."

---

## Open Threads
- What does "voice" mean when you're co-writing with AI?
- The difference between AI as research tool vs. AI as creative partner
- How does the tools-for-thought tradition inform how we should design AI writing assistants?
- Newsletter series potential: documenting the journey of building a second brain as a writer

---

*This MOC was last updated on 2026-03-20. Add new notes and connections as they develop.*
```

**Say:**
"Take a look at that. It's not just a list of links — it's an *organized overview* of everything in the vault related to AI and creative work. It has:

- **The big questions** — the overarching themes you're exploring
- **Research and ideas** — grouped by subtopic, with brief descriptions of what each note contains
- **Active projects** — the real work this research feeds into
- **Daily note highlights** — insights from your daily writing that connect to this theme
- **Open threads** — questions you haven't answered yet, so you know where to explore next

This is your map. When you sit down to write the Horizon article and think 'what was that idea I had about AI and memory?' — you come here first."

**Check:** Ask the student to open the MOC in Obsidian: "Go to the 07-MOCs folder in Obsidian and open 'AI and Creative Work.' See how the links are clickable? You can jump from this overview to any note in the vault." Wait for them to confirm.

---

### Step 5: Building the Second MOC — Client Work Dashboard (4 minutes)

**Say:**
"Now let's build a completely different kind of MOC. The first one was thematic — organized around an *idea*. This one is practical — it's a dashboard for tracking all of Alex's active client work in one place."

**Action:**
Read any project briefs, drafts, or client-related notes that exist in `vault/02-Projects/` subfolders. Also reference client information from the daily notes and inbox.

Create the file `vault/07-MOCs/Client Work Dashboard.md` with this content:

```
---
type: moc
created: 2026-03-20
tags: [moc, clients, projects, dashboard]
---

# Client Work Dashboard

*A living overview of all active client projects, deadlines, and status.*

---

## Horizon Magazine
**Contact:** Sarah Chen, Editor-in-Chief

### Current: "The AI Writing Partner"
- **Status:** Research phase, outline in progress
- **Deadline:** Soft April 4
- **Word count:** 3,000 (could go to 3,500)
- **Rate:** $1,800 for this piece
- **Key notes:**
  - [[AI Writing Partner - Brief]]
  - [[AI Writing Partner - Research Notes]]
  - [[Draft - The AI Writing Partner Opening]] — three draft openings saved
  - [[Meeting notes Sarah 03-15]] — Sarah wants it more personal than originally pitched
- **Next steps:** Revised outline due March 20. Need to reach out to Devon Zhao for interview. Find 2 more interview subjects (one skeptical).

### Pipeline: "Digital Minimalism in Practice"
- Follow-up to "The Attention Tax" (performed well — top 5 most-read)
- Pitch sent March 15, waiting for feedback
- Target: April publication

---

## Bloom Studio
**Contact:** Maya Torres, Content Director

### Current: "Digital Boundaries" Series (4-part blog)
- **Post 1:** "The Notification Audit" — Published March 5
- **Post 2:** "Screen Time Is the Wrong Metric" — Published March 12
- **Post 3:** "The Case for Boring Phones" — Due March 20 (in final review)
- **Post 4:** "Building a Digital Sunset Routine" — Due March 27
- **Key notes:**
  - [[Draft - Digital Boundaries Post 3]]
- **Notes:** Series performing well. Post 1 had 2x average blog traffic. Maya mentioned possibly extending or spinning off an email series.

### Pipeline: Welcome Sequence Rewrite
- Rewriting 5-email welcome sequence for new app subscribers
- Starting early April
- Good opportunity to show strategic thinking

---

## ClearPath
**Contact:** James Liu, Marketing Lead

### Current: "Async Communication Best Practices for Remote Teams"
- **Status:** First draft ~60% done
- **Deadline:** March 28 (outline approved)
- **Target keyword:** "async communication best practices"
- **Key notes:**
  - [[Async Communication - Outline]]
  - [[ClearPath async article research links]]
  - [[GitLab Async Communication Model]] — strongest case study
- **Next steps:** Finish first draft, get Clearscope optimization check

### Pipeline: "Knowledge Management for Growing Teams"
- Target: April publication
- Outline due April 5
- Right in Alex's wheelhouse — connects to personal PKM interest

---

## The Synthesis (Newsletter)
- **Subscribers:** ~1,200
- **Cadence:** Biweekly (every other Saturday)
- **Current issue in progress:** "Tools That Think With You"
  - [[Issue Draft - Tools That Think With You]]
  - Riffing on the tools-for-thought rabbit hole from March 14
- **Ideas backlog:**
  - "The Attention Tax" — how every tool promises to save time but demands attention
  - "My notes are a mess and I'm fixing it in public" — vulnerability + practical journey
  - Documenting the second brain building process

---

## Revenue Overview
| Client | Monthly Value | Share |
|--------|-------------|-------|
| Horizon Magazine | ~$3,000 | ~58% |
| Bloom Studio | $1,200 | ~23% |
| ClearPath | $800 | ~15% |
| Newsletter / Other | ~$200 | ~4% |
| **Total** | **~$5,200** | |

**Watch:** Too dependent on Horizon. Goal is no single client over 35% of revenue.

---

*Update this dashboard whenever a project status changes. It should always reflect what's current.*
```

**Say:**
"Now *that* is useful. Instead of checking emails, Slack messages, and scattered notes to figure out what's due when, Alex can open this one note and see everything: what's active, what's coming up, what the deadlines are, and where all the relevant notes live.

Notice something important: the Horizon article notes show up on *both* MOCs. On the 'AI and Creative Work' MOC, they're research material. On the 'Client Work Dashboard,' they're a deliverable with a deadline. Same notes, two contexts. That's the power of MOCs over folders."

**Check:** Ask the student: "Open this one in Obsidian too — Client Work Dashboard in the 07-MOCs folder. Pretty different from the first MOC, right? One is about ideas, the other is about getting things done. Both are equally valid." Wait for their response.

---

### Step 6: MOCs Are Living Documents (2 minutes)

**Say:**
"One more important thing: MOCs aren't something you create once and forget about. They're *living documents*. Every time you add a new note to the vault, you should ask yourself: does this belong on any of my MOCs?

Write a new research note about AI ethics? Add it to the 'AI and Creative Work' MOC. Start a new client project? Update the 'Client Work Dashboard.' Over time, your MOCs become the best way to see the shape of your knowledge — what topics you've explored deeply, where the gaps are, and how everything connects.

You can also create new MOCs whenever a cluster gets big enough. If Alex ends up with ten notes about digital minimalism, that might deserve its own MOC. The threshold is simple: when you find yourself thinking 'I have a bunch of notes about X but I can never find them all' — that's when you need a MOC."

**Check:** Wait for student to acknowledge.

---

### Step 7: Wrap-Up (2 minutes)

**Say:**
"Let's recap. Maps of Content solve the 'where do I put this?' problem by letting notes appear in multiple contexts without moving them. They're index notes that organize your knowledge by topic, and they grow as your vault grows.

You now have two MOCs:
- **AI and Creative Work** — a thematic map that tracks your thinking about AI and creativity
- **Client Work Dashboard** — a practical map that keeps all your active projects visible in one place

Here's the key insight: **folders tell you where a note is stored. MOCs tell you what a note means.** As your vault grows, MOCs will become the way you navigate your knowledge — not by remembering which folder you put something in, but by following the topic threads that matter to you.

Next up: Daily Notes and Weekly Reviews. This is one of the most powerful modules in the course — you're going to see Claude do something that genuinely surprises people. Type `/start-2-3` when you're ready!"

**Check:** Wait for student to indicate they're done or ask final questions.

---

## Important Notes for Claude
- When scanning the vault, read ALL available notes — not just the ones listed above. The vault may have additional content created during Level 1 modules.
- The MOC content should reference actual notes that exist in the vault. If a note referenced by `[[double brackets]]` doesn't exist yet, that's OK — Obsidian will show it as an unresolved link, which is normal and expected.
- Adapt the Client Work Dashboard to reflect any project status changes that may have occurred during earlier modules.
- The vault scan in Step 3 is a key moment — make the student feel like Claude genuinely understands their knowledge landscape.

## Common Student Questions
- **"How many MOCs should I have?"** Start small — 3 to 5 is plenty. Let them emerge naturally from your note-taking. If you create too many upfront, they'll feel like empty filing cabinets.
- **"Isn't this just a fancy table of contents?"** Kind of! But the power is that MOCs include context, grouping, and your own commentary — not just a flat list of links. And a note can appear on multiple MOCs.
- **"When do I update my MOCs?"** Some people update them every time they add a note. Others do it during a weekly review (which you'll learn about in the next module). Find what works for you.

## Success Criteria
- Student understands the difference between folder organization and MOC organization
- Two MOCs exist in vault/07-MOCs/
- Student has opened at least one MOC in Obsidian and seen the linked structure
- Student understands that MOCs are living documents, not static
