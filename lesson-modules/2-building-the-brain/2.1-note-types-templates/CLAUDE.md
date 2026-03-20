# Module 2.1: Note Types and Templates

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student about different types of notes and how templates help maintain consistency. This is the opening of Level 2 — the student has completed Level 1 (Foundations) and is now ready to start building their second brain with real structure. Keep the energy up: they're moving from "learning the tools" to "actually building something."

---

## Module Learning Objectives
1. Understand the three core note types: fleeting, literature, and permanent
2. Recognize which notes in the vault fit which type
3. Learn how templates create consistency and save time
4. Practice creating a new note from a template
5. Convert a raw inbox capture into a properly structured note

---

## Teaching Flow

### Step 1: Welcome to Level 2 (2 minutes)

**Say:**
"Welcome to Level 2! You've got the foundations down — you know your way around Obsidian, you can talk to Claude Code, and you've seen how they work together. Now we're going to start actually building your second brain.

Here's the big idea for this level: a second brain isn't just a collection of notes. It's a *system* — one where notes have different roles, where ideas connect to each other, and where your thinking compounds over time. By the end of Level 2, Alex's vault is going to go from a messy pile of captures to something that genuinely feels like a knowledge system.

Let's start with the most fundamental question: what kinds of notes should your vault actually contain?"

**Check:** Wait for student to acknowledge they're ready to continue.

---

### Step 2: The Three Types of Notes (5 minutes)

**Say:**
"There's a method called Zettelkasten — don't worry about the name, it's German for 'slip box' — that's been used by researchers and writers for decades. The core insight is simple: not all notes are created equal. Different notes serve different purposes, and when you recognize that, everything gets easier.

Here are the three types:

**1. Fleeting Notes** — These are quick captures. A thought that hits you during a walk, a half-formed idea, a link someone sent you. Think of them like sticky notes — they're meant to be temporary. You jot something down so you don't lose it, but you're not trying to make it perfect. In Alex's vault, these live in the **00-Inbox** folder.

**2. Literature Notes** — These are your notes *about* something you read, watched, or listened to. A summary of an article, key takeaways from a book, notes from a podcast. The important thing: literature notes should be in your own words, not just copy-pasted highlights. They live in the **03-Research** folder.

**3. Permanent Notes** — These are your own ideas, fully formed and written clearly enough that you'd understand them months from now. They're the most valuable type because they represent *your* thinking, not just captured information. Permanent notes grow over time as you refine and connect them.

The workflow goes like this: capture fast (fleeting), process what you consume (literature), build your own thinking (permanent). Most people only do step one — they capture everything and process nothing. That's why their notes feel useless."

**Check:** Wait for the student to respond. If they ask about where permanent notes live, explain that permanent notes can live in various folders depending on their topic — in project folders, research folders, or even get their own home as the vault evolves.

---

### Step 3: See the Note Types in Action (4 minutes)

**Say:**
"Let's look at real examples in Alex's vault so this isn't abstract. First, let's see what a fleeting note looks like."

**Action:**
Read the file `vault/00-Inbox/Quick thought - AI and memory.md` and display its contents.

**Say:**
"See this? It's a raw thought — no structure, no links, no metadata. Just something Alex wanted to capture before it disappeared. That's a *fleeting note*. It's doing its job perfectly: it caught an idea. But right now it's just sitting in the inbox doing nothing.

Now let's look at something with a bit more structure."

**Action:**
Read the file `vault/00-Inbox/ClearPath async article research links.md` and display its contents.

**Say:**
"This one is halfway between fleeting and literature. Alex gathered research links and jotted down why each one matters — but it's still in the inbox, still raw. It hasn't been processed into a proper research note yet.

The key difference between a fleeting note and a literature note isn't about length — it's about *processing*. A literature note means you've actually engaged with the material and written down what it means to you. A fleeting note is just the capture.

A permanent note would go even further. Imagine Alex reading all five of those async communication sources, synthesizing the key themes, and writing a note called 'Why Async Communication Changes How Teams Think' — in Alex's own words, connecting to Alex's own experience. That's a permanent note. It's original thought, built on top of research."

**Check:** Ask the student: "Does the difference between these three types make sense? Which type do you think most of your own notes would be right now?" Wait for their response.

---

### Step 4: Introducing Templates (3 minutes)

**Say:**
"Now here's the practical question: if different types of notes have different purposes, shouldn't they have different structures? That's exactly what templates are for.

A template is just a pre-made note format. Instead of starting from a blank page every time, you start with a structure that fits the type of note you're creating. It saves time and — more importantly — it prompts you to include things you'd otherwise forget.

Let's see what templates Alex has set up."

**Action:**
List all files in `vault/06-Templates/` and read each template file, displaying their contents one by one.

**Present it like this:**
For each template, show the filename and contents. If the templates folder is empty (because Level 1 hasn't been completed or templates weren't created yet), create the following templates:

1. Create `vault/06-Templates/Fleeting Note.md` with this content:
```
---
type: fleeting
created: {{date}}
tags: [inbox]
---

# {{title}}

<!-- Just capture the thought. Don't worry about structure. -->


---
*Process this note later: turn it into a literature or permanent note, or delete it.*
```

2. Create `vault/06-Templates/Literature Note.md` with this content:
```
---
type: literature
source:
author:
created: {{date}}
tags: [research]
---

# {{title}}

## Source
<!-- What did you read/watch/listen to? Include a link if possible. -->

## Key Ideas
<!-- The most important points, in your own words. -->
-

## Summary
<!-- 2-3 sentences: what is this source really saying? -->

## My Takeaways
<!-- What does this mean for YOUR work? How does it connect to what you already know? -->

## Related Notes
<!-- Links to other notes in your vault that connect to this. -->
-
```

3. Create `vault/06-Templates/Permanent Note.md` with this content:
```
---
type: permanent
created: {{date}}
tags: []
---

# {{title}}

<!-- Write this as if explaining the idea to a smart friend. Clear, concise, in your own words. -->


## Why This Matters


## Connections
<!-- How does this idea connect to other things you know? -->
-

## Open Questions
<!-- What don't you know yet? What would you like to explore further? -->
-
```

4. Create `vault/06-Templates/Project Brief.md` with this content:
```
---
type: project
client:
status: active
deadline:
created: {{date}}
tags: [project]
---

# {{title}}

## Overview
<!-- What is this project? One paragraph. -->

## Deliverables
-

## Key Details
- **Word count:**
- **Tone/Style:**
- **Audience:**

## Research & Sources
<!-- Links to research notes, reference material -->
-

## Status & Next Steps
- [ ]

## Notes
<!-- Ongoing thoughts, feedback, revisions -->
```

5. Create `vault/06-Templates/Daily Note.md` with this content:
```
---
date: {{date}}
tags: [daily]
---

# {{day}}, {{date}}

## What I did
-

## Ideas
-

## Tomorrow
-
```

**Say:**
"There are five templates here, one for each major note type Alex uses:

- **Fleeting Note** — Minimal. Just a place to dump a thought with a reminder to process it later.
- **Literature Note** — More structured. Sections for the source, key ideas, a summary, your personal takeaways, and links to related notes. This is where raw research becomes useful.
- **Permanent Note** — Focused on *your* idea. Write clearly, explain why it matters, connect it to other notes.
- **Project Brief** — For client work. Tracks what the project is, what's due, and what the status is.
- **Daily Note** — Simple daily journal. What happened, what you thought about, what's coming up.

Notice how each template *prompts* you to do the right thing. The literature note template doesn't just say 'write notes' — it asks for key ideas, a summary, your takeaways, and related notes. That structure is what turns passive note-taking into active thinking."

**Check:** Wait for the student to respond. If they want to look at any template more closely, show it again.

---

### Step 5: Exercise — Create a Research Note from a Template (5 minutes)

**Say:**
"Let's put this into practice. Alex has been doing research for the ClearPath article on async communication. There are a bunch of raw links sitting in the inbox, but no proper literature note yet. Let's create one.

We're going to use the Literature Note template to create a research note about GitLab's async communication practices — one of the sources Alex bookmarked."

**Action:**
Create the file `vault/03-Research/GitLab Async Communication Model.md` with this content:

```
---
type: literature
source: https://handbook.gitlab.com/handbook/communication/
author: GitLab (company handbook)
created: 2026-03-20
tags: [research, async, remote-work, ClearPath]
---

# GitLab Async Communication Model

## Source
GitLab's internal communication handbook — one of the most comprehensive public documents on how a fully remote company operates asynchronously.

## Key Ideas
- **Async-first means writing-first.** If it's not written down, it didn't happen. GitLab defaults to written communication over meetings for almost everything.
- **Meetings are a last resort.** They have strict criteria for when a synchronous meeting is justified — complex emotional topics, urgent crises, or collaborative brainstorming that's already been prepared for in writing.
- **Everything is documented publicly.** Their entire handbook is open to the world. Transparency isn't just a value — it's an operational strategy that eliminates "where is that info?" questions.
- **Low-context communication.** They write as if the reader has no background context. This takes more effort upfront but saves enormous time downstream.

## Summary
GitLab demonstrates that async communication isn't about eliminating meetings — it's about making writing the default medium for work. Their model shows that this requires cultural commitment, clear documentation practices, and an upfront investment in writing quality that pays off through reduced interruptions and better knowledge retention.

## My Takeaways
This is the strongest case study for the ClearPath article. Most "async best practices" content is theoretical — GitLab actually does it at scale with 2,000+ employees. The "low-context communication" concept is especially useful — it reframes async writing from "just send a message" to "write as if the reader knows nothing." That's a concrete, teachable practice.

Also connects to what I've been thinking about for [[The Synthesis]] — the idea that better writing tools lead to better thinking. Async culture is essentially a culture that values clear written thought.

## Related Notes
- [[ClearPath async article research links]]
- [[Async Communication - Outline]]
```

**Say:**
"There it is — Alex's first proper literature note. See the difference from that raw list of links in the inbox? This one has:
- A clear source
- Key ideas pulled out and explained
- A summary in Alex's own words
- Personal takeaways — how this connects to the actual article Alex is writing
- Links to related notes in the vault

This is the difference between *collecting* information and *processing* it. The raw links are collecting. This note is processing."

**Check:** Ask the student: "Want to open this note in Obsidian and take a look? You'll find it in the 03-Research folder." Wait for them to confirm.

---

### Step 6: Exercise — Convert a Fleeting Note (4 minutes)

**Say:**
"Now let's try something even more powerful: taking a fleeting note from the inbox and upgrading it.

Remember that quick thought Alex captured about AI and memory? It's just sitting in the inbox — a raw idea with potential but no structure. Let's see what happens when we process it into a permanent note."

**Action:**
Read `vault/00-Inbox/Quick thought - AI and memory.md` again to show the student the raw content.

**Say:**
"There's a real insight buried in here: the idea that AI tools are becoming extensions of our memory, and that writers specifically are offloading a kind of thinking to these tools. Let's turn that into a permanent note."

**Action:**
Create the file `vault/03-Research/AI as Extended Memory.md` with this content:

```
---
type: permanent
created: 2026-03-20
tags: [AI, cognition, writing, tools-for-thought]
---

# AI as Extended Memory

We don't use AI tools the way we use search engines. With Google, you search, get an answer, and leave. With AI, you have a *conversation* — you think out loud, refine your question, and arrive at something you couldn't have reached alone. It's less like looking something up and more like thinking with a partner.

For writers, this shift is particularly significant. Writing has always been a form of externalized thinking — you put ideas on the page to see what you actually think. AI tools add a new layer: now you can externalize your thinking *to something that responds*. The question isn't whether AI replaces the writer's memory, but how it changes what writers need to remember in the first place.

## Why This Matters
This connects to the broader "tools for thought" tradition — every generation gets new tools that change the relationship between thinking and memory. Writing itself was one. The printing press was another. Personal computers, search engines, and now AI assistants are the latest in that lineage.

For Alex's work specifically: this is a central theme for both the Horizon article on AI writing partners and the newsletter's "tools that think with you" angle.

## Connections
- [[AI Writing Partner - Brief]] — the Horizon piece is essentially about this theme in practice
- [[Tools for Thought History]] — AI tools are the latest chapter in this story
- [[Quick thought - AI and memory]] — the original fleeting note that sparked this

## Open Questions
- Does offloading memory to AI tools make writers more creative (freed from recall) or less original (dependent on the same training data)?
- How do you maintain a unique voice when your thinking partner has been trained on everyone's writing?
- What's the line between AI as a thinking tool and AI as a crutch?
```

**Say:**
"Look at what just happened. That half-formed thought from the inbox — one paragraph of 'I should explore this' — became a fully developed idea with clear reasoning, connections to other work, and open questions to keep exploring.

*That's* the fleeting-to-permanent pipeline. Capture fast, then come back and actually think it through. And notice the connections section — this note now links to the Horizon article brief, the tools for thought research, and even back to the original fleeting note that sparked it. It's not sitting in isolation anymore. It's part of the web."

**Check:** Ask the student: "What do you think — can you see how this would change the way you work with your own ideas? Any questions about the three note types before we wrap up?" Wait for their response.

---

### Step 7: Wrap-Up and Key Insight (2 minutes)

**Say:**
"Let's recap what we covered. Your vault has three types of notes:
- **Fleeting notes** are quick captures — get the idea down and move on
- **Literature notes** are processed notes about things you've read or consumed
- **Permanent notes** are your own ideas, fully formed and connected

Templates give you a starting structure for each type so you're not staring at a blank page.

Here's the key insight: **note types give you a workflow**. Instead of one giant pile of 'notes,' you have a pipeline. Capture fast, process later, build knowledge over time. The inbox is the entry point. Literature and permanent notes are the output. And the magic happens in the processing step — that's where raw information becomes your own thinking.

In the next module, we're going to learn about Maps of Content — a way to organize your notes around topics so you can always find what you need, even when your vault has hundreds of notes. Type `/start-2-2` when you're ready!"

**Check:** Wait for student to indicate they're done or ask any final questions.

---

## Important Notes for Claude
- If the templates folder already has templates from Level 1, read and present those instead of creating new ones. Only create templates if the folder is empty.
- When creating the literature note example, reference the actual ClearPath research links that exist in the inbox.
- The permanent note example should feel like a genuine intellectual development, not a formulaic exercise.
- Use `[[double brackets]]` for Obsidian links in all created notes.

## Common Student Questions
- **"Do I need to convert every fleeting note?"** No! Some fleeting notes are genuinely temporary — a phone number, a quick reminder. The point is to regularly review your inbox and decide: process it, or delete it.
- **"How often should I process my inbox?"** A few times a week is great. Some people do it daily. The key is having a rhythm, not a rigid schedule.
- **"What if a note is both literature and permanent?"** That's fine! These categories aren't rigid boxes. A literature note can evolve into a permanent note as you add more of your own thinking. The types are a workflow guide, not a filing system.

## Success Criteria
- Student can explain the difference between fleeting, literature, and permanent notes
- Templates exist in vault/06-Templates/
- A literature note has been created in vault/03-Research/
- A permanent note has been created from an inbox capture
- Student understands the capture-process-build workflow
