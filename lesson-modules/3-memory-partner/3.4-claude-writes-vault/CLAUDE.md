# Module 3.4: Claude Writes for Your Vault

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student that when Claude writes a note for the vault, it shouldn't just be plain text — it should feel *native*. That means proper frontmatter, consistent formatting, [[links]] to existing notes, established tags, and placement in the right folder. The key insight is that Claude isn't just generating text; it's creating notes that integrate seamlessly with the student's system. Every note Claude writes should look like one the student wrote themselves. Think of it as having a writing partner who knows your filing system — they don't hand you a loose sheet of paper, they file it, label it, and connect it.

---

## Module Learning Objectives
1. Understand the rules for vault-native note creation (frontmatter, links, tags, formatting, placement)
2. See those rules applied as Claude creates a brand new research note from scratch
3. Watch Claude transform a raw inbox capture into a fully-formed permanent note
4. Verify that Claude-generated notes actually work in Obsidian (links resolve, frontmatter renders)
5. Practice by choosing an inbox note for Claude to transform

---

## Teaching Flow

### Step 1: Writing That Belongs (4 minutes)

**Say:**
"In the last module, you saw how Claude can read and search your entire vault — pulling together everything related to a topic, cross-referencing different areas of your work, and compiling research briefs. Now let's flip that around. Instead of Claude *reading* your vault, we're going to look at Claude *writing* for your vault.

Here's the thing: it's not enough for Claude to write good text. The note has to *belong*. It needs the right info block at the top. It needs to use [[double bracket links]] to connect to your existing notes. It needs your tags, not invented ones. It needs to follow your formatting conventions. And it needs to land in the right folder — not just get dumped in the inbox.

Think of it like having a writing partner who knows your filing system. They don't just hand you a loose sheet of paper — they file it, label it, and connect it to everything it relates to. That's the difference between 'here's some text about a topic' and 'here's a note that makes your vault stronger.'

Let me show you what the rules are."

**Check:** Wait for the student to acknowledge.

---

### Step 2: The Rules for Vault-Native Writing (5 minutes)

**Say:**
"Before we see this in action, let me walk you through the five rules Claude follows when writing notes for your vault. These are the conventions that make a note feel native — like it belongs alongside the notes you've already created.

**Rule 1: Every note gets frontmatter.**
That's the info block at the very top of the note, between the triple dashes. It contains metadata — the date, tags, note type, related projects, status. This is what makes your notes searchable and organized in Obsidian. Without frontmatter, a note is just text. With it, it's part of a system."

**Action:**
Read an existing well-structured note as an example. Read `vault/03-Research/Remote Work Communication Research.md` (or another note with clear frontmatter). Show the student just the frontmatter block:

```
---
topic: Remote Work Communication
tags: [remote-work, async, communication, research]
for-project: ClearPath Async Article
---
```

**Say:**
"See how the info block tells you everything you need to know at a glance — what the topic is, what tags it has, which project it's for? Every note Claude creates will have this same structure.

**Rule 2: Use [[double bracket links]].**
When Claude mentions a topic or note that exists in your vault, it wraps it in double brackets: `[[Note Name]]`. This creates a clickable link in Obsidian, and — just as importantly — it creates a *backlink*. The linked note knows it's being referenced. This is how your notes build a web of connections over time. Without links, a note sits in isolation. With links, it becomes part of your knowledge graph.

**Rule 3: Follow your formatting conventions.**
The same heading structure, the same section organization, the same tone. A note Claude writes should be indistinguishable from one you wrote yourself. If your research notes have a 'Key Ideas' section followed by 'Alex's Take' followed by 'Connections,' Claude should use that same layout.

**Rule 4: Place notes in the right folder.**
Research notes go in 03-Research. Drafts go in 04-Drafts. Project notes go in the right project subfolder under 02-Projects. Reference materials go in 05-References. No dumping everything in the Inbox — the whole point of the Inbox is that notes *leave* it.

**Rule 5: Use your established tags.**
No inventing new tags when existing ones work. If notes about AI use the tag `AI`, Claude doesn't create a new tag called `artificial-intelligence` or `ai-tools`. Consistent tags mean your searches always return everything relevant."

**Check:** Wait for the student to confirm they understand the five rules.

---

### Step 3: Demo — A Brand New Research Note (5 minutes)

**Say:**
"Let's see all five rules in action. I'm going to create a brand new research note from scratch — about a topic that's relevant to Alex's ClearPath article and the book idea: knowledge management for creative professionals.

This topic sits at the intersection of several things Alex is already working on. The ClearPath article is about how teams communicate and share knowledge. The book idea — 'The Connected Creator' — is literally about how creators build knowledge systems. And the newsletter keeps circling back to tools for thought. So this note should connect to all of those threads.

Watch how every rule gets applied."

**Action:**
First, briefly search the vault for existing notes related to knowledge management to understand what's already captured — check for notes about Zettelkasten, tools for thought, and the book idea. This ensures the new note connects to real existing content rather than inventing connections.

Then write the new note to `vault/03-Research/Knowledge Management for Creatives.md`:

```markdown
---
date: 2026-03-20
topic: Knowledge Management for Creative Professionals
tags: [research, knowledge-management, creativity, tools-for-thought]
type: permanent
related-projects: [ClearPath, The-Synthesis, Book-Idea]
status: in-progress
---

# Knowledge Management for Creatives

## Core Idea

Knowledge management in corporate settings is about documentation, wikis, and shared databases. For independent creative professionals — writers, designers, podcasters — it's something fundamentally different. It's about building a personal system that turns scattered inputs (reading, conversations, research, observations) into creative output (articles, essays, products, ideas).

The challenge for creatives isn't volume of information — it's the gap between *consuming* and *using*. A freelance writer might read fifty articles a month but only draw on three or four when writing. The other forty-six vanish. Not because they weren't valuable, but because there was no system to capture, process, and retrieve the insights they contained.

## Why This Matters Now

Three converging trends make this urgent:

1. **Information overload is worse than ever.** The average knowledge worker encounters more information in a day than a medieval scholar saw in a lifetime. For writers who research for a living, the firehose is relentless.

2. **The creator economy demands compounding knowledge.** Independent creators can't start from scratch on every project. The freelancer who builds on past research, reuses frameworks, and connects ideas across clients has a structural advantage over the one who treats every article as a blank page. See [[Creator Economy Trends]] for the broader context.

3. **AI tools are changing what's possible.** Tools like Claude can search, synthesize, and connect information across a personal knowledge base — but only if that knowledge base is well-structured. The AI is only as good as the system it's working with. See [[AI Tools Landscape 2026]] for the current state of these tools.

## Key Frameworks

### The Zettelkasten Pipeline
The [[Zettelkasten Method]] offers the clearest model: fleeting notes (raw captures) become literature notes (processed research) become permanent notes (original thinking). Each stage adds a layer of processing. The key insight isn't the categories — it's the *pipeline*. Knowledge flows through stages, gaining refinement at each one.

### Progressive Summarization
Tiago Forte's concept: each time you revisit a note, you add a layer of processing. Bold the key sentences, then summarize, then add your take. Over time, the most important ideas naturally rise to the surface through repeated refinement. Alex has been experimenting with this approach — see recent research notes for examples.

### The Digital Garden
Maggie Appleton's metaphor (via [[Podcast rec from Jamie|Jamie's podcast recommendation]]): a personal knowledge base isn't a filing cabinet (static storage) or a blog (polished publication). It's a *garden* — a living collection of ideas at various stages of growth. Some are seeds. Some are blooming. Some need pruning. The gardening metaphor encourages tending over perfecting.

## What Makes Creative KM Different

- **Cross-pollination is the goal.** Corporate KM wants to silo knowledge by department. Creative KM wants the opposite: ideas from one project should feed into every other project. Alex's [[Digital Minimalism - Key Concepts|digital minimalism research]] for Bloom should connect to the [[AI Writing Partner - Brief|Horizon AI piece]], because at a deeper level they're exploring the same question about intentional tool use.

- **Personal voice matters.** Corporate KM can be neutral and factual. A writer's knowledge system needs to preserve *perspective* — not just what a source said, but what the writer thinks about it. That's why the "Alex's Take" section in research notes is the most valuable part.

- **The system must serve the work, not replace it.** The biggest risk in creative KM is spending more time organizing notes than actually creating. The system needs to be lightweight enough to maintain as a natural part of the creative process. As Alex noted: "The tool can't become the work."

## Connections

- [[Zettelkasten Method]] — The foundational method behind most modern creative KM approaches. Luhmann proved that atomic, linked notes can generate insights beyond what any single note contains.
- [[Tools for Thought History]] — Creative KM is the latest chapter in an 80-year lineage from Vannevar Bush's Memex to Obsidian. The dream has always been the same: tools that help us think better.
- [[Book idea fragments]] — "The Connected Creator" book idea is essentially a guide to creative KM. This note could become a chapter outline.
- [[Issue Draft - Tools That Think With You]] — The newsletter draft about tools for thought. This research adds theoretical depth to what's currently a personal essay.

## Open Questions

- How do successful creative professionals actually manage their knowledge? (Interview research for the book idea — start with people in Alex's network)
- What's the failure mode? When do KM systems become procrastination tools disguised as productivity? How does Alex avoid that trap?
- Is there a minimum viable system? What's the smallest possible setup that still provides compounding returns?
```

**Say:**
"Let me walk you through what just happened, rule by rule.

**Rule 1 — Frontmatter:** The note has a complete info block at the top: date, topic, tags drawn from the established vocabulary, note type set to 'permanent,' related projects listed, and status marked as 'in-progress.' If you look at this note's properties in Obsidian, everything will be organized and searchable.

**Rule 2 — Links:** Count the [[double bracket links]]: Creator Economy Trends, AI Tools Landscape 2026, the Zettelkasten Method, Jamie's podcast recommendation, Digital Minimalism, the Horizon article brief, the book idea fragments, the Tools for Thought History, and the newsletter draft. That's nine connections to existing vault notes. This note isn't floating alone — it's woven into the web from the moment it's created.

**Rule 3 — Formatting:** The structure follows the same conventions as Alex's other research notes: a Core Idea section that states the thesis, supporting sections with clear headings, a Connections section at the bottom, and Open Questions to flag what's still unexplored.

**Rule 4 — Placement:** The note lives in `03-Research`, right alongside the other research notes. Not in the Inbox, not loose in the vault root. Filed where it belongs.

**Rule 5 — Tags:** research, knowledge-management, creativity, tools-for-thought. All consistent with the tags already used across the vault."

**Check:** Ask the student: "If you opened this in Obsidian right now, do you think it would feel like it belongs alongside your other research notes? Does it look like a note Alex would write?" Wait for their response.

---

### Step 4: Demo — Transforming a Fleeting Note (3 minutes)

**Say:**
"Now let's do something even more practical. Your Inbox has raw captures sitting in it — quick thoughts you jotted down but never processed. Let me grab one and show you how Claude can transform a fleeting note into a permanent one.

Let me read one of your inbox captures."

**Action:**
Read `vault/00-Inbox/Quick thought - AI and memory.md` and display its contents:

```
Been thinking about how every AI tool I use is basically becoming an extension of my memory. Like I don't remember facts anymore, I remember where to ask for them. Is that different from Google? Maybe. It feels more like a conversation with a second brain than a search. Need to explore this more for the Horizon piece — there's something here about writers specifically offloading memory to tools and what that means for voice/authenticity.
```

**Say:**
"Three sentences. A raw thought — unstructured, no links, no tags, no context beyond what was in Alex's head at the moment. But there's a real idea buried in here. The observation about 'I don't remember facts anymore, I remember where to ask for them' is genuinely interesting. And the connection to voice and authenticity? That's a thread worth pulling on.

Let me expand this into a fully-formed note."

**Action:**
Write the expanded note to `vault/03-Research/AI as Extended Memory.md`:

```markdown
---
date: 2026-03-20
topic: AI as Extended Memory
tags: [research, ai, writing, knowledge-management]
type: permanent
originated-from: "00-Inbox/Quick thought - AI and memory.md"
related-projects: [Horizon-Magazine, The-Synthesis]
status: in-progress
---

# AI as Extended Memory

## The Core Observation

I don't remember facts anymore — I remember *where to ask for them*. This feels different from the Google effect (the tendency to forget information that's easily searchable). With AI tools, it's not just retrieval — it's more like having a conversation with a second brain. The interaction itself becomes part of the thinking process.

When I ask Claude to help me research a topic, I'm not performing a search. I'm *thinking out loud with a partner who has access to broad knowledge*. That's a fundamentally different cognitive act than typing keywords into a search bar.

## Why This Matters for Writers

This shift has specific implications for the craft:

- **Voice and authenticity**: If I'm offloading memory and even some reasoning to AI tools, what parts of the writing are still "mine"? This isn't a crisis — it's a genuine question worth exploring. A writer's voice comes from their perspective, their choices, their taste. Does it matter if the raw material was retrieved by an AI rather than recalled from memory?

- **The process shift**: My writing process used to be "recall what I know, then write." Now it's closer to "think alongside a tool, then write." The output might look the same to a reader, but the *process* is fundamentally different. Is that a problem, or is it evolution?

- **Trust and reliability**: I trust my own memory even though I know it's unreliable — I misremember, I forget, I confuse sources. Should I trust AI memory more (it's consistent and retrievable) or less (it can be wrong in ways I can't detect)? The answer probably depends on the type of knowledge.

## The Bigger Picture

This connects to the entire [[Tools for Thought History|tools for thought tradition]]. Vannevar Bush imagined the Memex in 1945 as an extension of human memory. Doug Engelbart built systems to augment human intellect. Now AI tools are doing something those pioneers only dreamed of: not just storing and retrieving information, but participating in the thinking process itself.

The question Engelbart asked was: "How do we augment human thinking?" Not "How do we replace it?" That distinction matters. AI as external memory is augmentation — it extends what Alex can think about and work with. AI as writer-replacement is substitution — and that's a different conversation entirely.

## Connection to Active Work

- The [[AI Writing Partner - Brief|Horizon "AI Writing Partner" piece]] is exploring exactly this territory. Sarah wants to see Alex's process — this reflection about memory offloading could be part of the personal sections she asked for.
- [[Issue Draft - Tools That Think With You|The Synthesis newsletter]] on "Tools That Think With You" could reference this as a concrete example of how tools change thinking, not just productivity.
- The [[Zettelkasten Method|Zettelkasten]] is a pre-digital version of this same impulse: externalize your memory into a system that can surprise you with connections you didn't consciously make.
- [[Book idea fragments|"The Connected Creator"]] book concept — the idea of AI as external memory could be a chapter. What happens when creators build thinking partnerships with AI tools?

## Original Capture

> Been thinking about how every AI tool I use is basically becoming an extension of my memory. Like I don't remember facts anymore, I remember where to ask for them. Is that different from Google? Maybe. It feels more like a conversation with a second brain than a search. Need to explore this more for the Horizon piece — there's something here about writers specifically offloading memory to tools and what that means for voice/authenticity.
```

**Say:**
"The raw thought was three sentences. Now it's a proper note — with frontmatter, three developed sections, connections to four active projects, and the original capture preserved at the bottom so the raw thought is never lost.

Notice the `originated-from` field in the info block. That traces this note back to where the idea started — the inbox capture. Your vault is building a trail from raw thought to developed knowledge. The seed is still there; it just grew into something you can actually use.

And look at the connections. This one note links to the Horizon article, the newsletter draft, the Zettelkasten research, the Tools for Thought history, and the book idea. It went from an isolated thought to a node connected to five other parts of Alex's knowledge graph."

**Check:** Ask the student: "Can you see how the raw thought became something you could actually pull from for the Horizon article or the newsletter? The idea was always there — it just needed structure and connections to become useful." Wait for their response.

---

### Step 5: Student Exercise (3 minutes)

**Say:**
"Your turn. Pick any inbox note you'd like me to transform into a proper vault note. I'll read it, expand the idea, add frontmatter and links, and file it in the right folder.

Here's what's in the Inbox:"

**Action:**
List the remaining inbox notes for the student to choose from. Read the filenames in `vault/00-Inbox/` and present them:

- **Meeting notes Sarah 03-15** — Notes from the Horizon Magazine call with Sarah Chen
- **Podcast rec from Jamie** — Jamie's recommendation about Maggie Appleton and digital gardens
- **Book idea fragments** — The "Connected Creator" book brainstorm
- **ClearPath async article research links** — Research URLs for the ClearPath article

(Note: exclude any inbox notes that have already been fully processed in this module or earlier modules. If the "Quick thought - AI and memory" was just processed in Step 4, don't list it.)

**Check:** STOP. Wait for the student to pick a note. Do NOT continue until they respond.

---

**Action:**
When the student chooses a note:
1. Read the chosen inbox note
2. Search the vault for related existing content to ensure accurate [[links]]
3. Transform it into a proper permanent note following all five rules:
   - **Frontmatter:** date, topic, tags (from established vocabulary), type, related-projects, status
   - **Links:** [[double bracket links]] to all relevant existing vault notes (at least 3-4)
   - **Formatting:** Match the structure of existing notes — clear headings, organized sections, Alex's voice
   - **Placement:** Write to the appropriate folder based on content type (research to 03-Research, project materials to 02-Projects, reference materials to 05-References)
   - **Tags:** Use only tags that already exist in the vault's vocabulary
4. Write the transformed note to the appropriate vault folder
5. Show the student the complete result

**Say:**
"There it is — from raw capture to proper vault note. It has frontmatter that Obsidian can read, links to existing notes, organized sections, and it's filed in the right place.

Try opening it in Obsidian. Here's a quick quality check:

- Click one of the [[links]] — does it take you to the right note?
- Look at the properties view at the top — is the frontmatter rendering properly? You should see the tags, date, and related projects displayed neatly.
- Check the backlinks panel on the right side — are other notes already linking back to this new note?

If all of that works, this note is fully integrated. It's not just text — it's a functioning part of your vault."

**Check:** Wait for the student to verify in Obsidian if they want to, or acknowledge the result.

---

### Step 6: The Integration Insight (2 minutes)

**Say:**
"Here's the key insight from this module: **Claude isn't just writing text — it's writing notes that integrate with your system.** Every note it creates makes your vault stronger.

There's a huge difference between 'generate some paragraphs about a topic' and 'create a note with proper metadata, links to my existing research, connections to my active projects, and placement in the right folder.' The first gives you content. The second gives you *knowledge* — a new node in your growing web of ideas.

Think about what happens over time. A research note links to a project note. The project note links to a daily reflection. The daily reflection links to an inbox capture that sparks a newsletter idea. That's not a collection of separate notes — that's a *system* thinking. Each new note Claude writes adds another connection point, another pathway, another chance for your second brain to surface something useful.

And here's the thing about quality: a well-integrated note saves you time every time you come back to it. You don't have to figure out how it fits, which project it relates to, or where to find the connected ideas. The note already knows. The links already exist. The context is built in.

Claude isn't just writing text — it's writing notes that integrate with your system. Every note it creates makes your vault stronger.

In the next module, we're going to bring everything together with the Inbox Pattern — a workflow that takes this raw-capture-to-permanent-note process and makes it something you can do every day in just a few minutes. When you're ready, type `/start-3-5`."

**Check:** Wait for the student to indicate they're done.

---

## Important Notes for Claude
- Actually write the demo notes to the vault. They should persist for future modules and for the student to review in Obsidian. Use the exact file paths specified in the Actions.
- When creating [[links]], check that the target note exists in the vault first. If a target note doesn't exist yet, the link will create an unresolved reference in Obsidian — that's fine and expected, but note it for the student if they ask.
- The "originated-from" frontmatter field is a convention introduced in this module. It's useful when transforming inbox captures — it traces the note back to its origin. Don't add it to notes that aren't derived from inbox captures.
- If the inbox notes have already been processed in earlier modules (e.g., if Module 2.5 already added links to "Book idea fragments" or "Meeting notes Sarah 03-15"), acknowledge the existing state and build on it rather than starting from scratch. The note may need expansion and reformatting rather than just adding links.
- Use the tag vocabulary from existing vault notes. Scan the vault's frontmatter to understand which tags are in use. Common tags include: research, ai, writing, tools-for-thought, remote-work, async, digital-minimalism, client-work, newsletter, daily, review.
- The quality check in Step 5 ("click a link, check frontmatter, check backlinks") is important. It grounds the abstract concept of "vault-native writing" in a concrete, verifiable experience. Encourage the student to actually try it.
- The demo notes should reference real vault content with accurate links. Read the vault to verify note names before linking to them.

## Common Student Questions
- **"Will the links actually work in Obsidian?"** Yes. Links to existing notes will be clickable and navigable immediately. Links to notes that don't exist yet will show as "unresolved" — they'll appear in a different color, and clicking them will create the note. That's actually a useful feature, not a bug. It shows you ideas that have been referenced but not fully developed yet.
- **"What if Claude uses the wrong tags?"** The more specific your established tag vocabulary is, the more consistent Claude will be. You can always edit tags after a note is created. Over time, you'll develop a stable set of tags that Claude learns to use reliably.
- **"Should I keep the original inbox note after it's been transformed?"** Your choice. Some people delete the raw capture once it's been expanded. Others move it to an archive. The transformed note preserves the original text in the "Original Capture" section, so the content is never lost either way.
- **"Can Claude create notes in any folder?"** Yes. Just tell Claude where the note should go, or let it decide based on the content type and your folder conventions. The folder structure exists to make notes findable — put the note where you'd look for it later.
- **"What if I want a different formatting style than what Claude used?"** Tell Claude. The more examples of your preferred style exist in the vault, the better Claude gets at matching it. You can also describe your preferences explicitly: "I like shorter sections," "I want bullet points instead of paragraphs," "Always include an Open Questions section."

## Success Criteria
- Student understands the five rules for vault-native writing (frontmatter, links, formatting, placement, tags)
- A new research note ("Knowledge Management for Creatives") has been created in `vault/03-Research/` with proper formatting and multiple [[links]]
- An inbox note ("Quick thought - AI and memory") has been transformed into a permanent note ("AI as Extended Memory") in `vault/03-Research/`
- Student has chosen and had a third inbox note transformed
- Student has verified (or been invited to verify) that links and frontmatter work in Obsidian
- Student understands the difference between generic text and vault-integrated notes
