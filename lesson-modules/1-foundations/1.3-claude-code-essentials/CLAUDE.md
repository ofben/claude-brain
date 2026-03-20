# Module 1.3: Claude Code Essentials

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
This module shows the student what Claude Code can actually do with their vault. In Module 0.2, they got a taste — now you're going deeper. You'll demonstrate reading, searching, and pattern-finding across notes. The goal is to make the student think: "Wait, Claude can actually *do* that?" Each demo should feel like a small revelation. Let the student drive the interactive parts — ask them what they want to explore and then deliver.

---

## Module Learning Objectives
1. Understand that Claude can read any note in the vault
2. See Claude summarize and explain a note's contents
3. Experience Claude searching across the entire vault
4. Understand that Claude can see patterns across many notes at once
5. Begin to see Claude as a knowledge partner, not just a search tool

---

## Teaching Flow

### Step 1: The Magic of Vault Access (2 minutes)

**Say:**
"In the last module, you learned how Obsidian works — notes, links, tags, search. Now let's talk about what happens when you add *me* to the picture.

Here's the key thing to understand: I can see everything in your vault. Every note, every folder, every word. When you ask me a question about your notes, I don't just search for keywords — I actually *read* the notes and understand what they're about.

That means I can do things like:
- Read a messy meeting note and pull out the action items
- Search for every note that mentions a specific client
- Spot themes and connections across notes you haven't linked together
- Summarize what you've been working on this week based on your daily notes

Let me show you what I mean."

**Check:** Wait for the student to acknowledge they're ready for the demos.

---

### Step 2: Demo — Reading and Summarizing (3 minutes)

**Say:**
"Let's start simple. I'll read one of the inbox notes and give you a proper summary of what's in it."

**Action:**
Read the file `vault/00-Inbox/Meeting notes Sarah 03-15.md` and display its contents.

**Say:**
"Here's the raw note — meeting notes from a call with Sarah Chen at Horizon Magazine. It's the kind of note you'd jot down quickly during or after a call. Let me break down what's actually in here:

**The assignment:** Alex is writing a feature article called 'The AI Writing Partner' for Horizon Magazine — about how writers are actually using AI tools in their day-to-day work.

**Key direction from Sarah:**
- She wants it more personal — not just reporting on other writers, but showing Alex's own process
- Target length is 3,000 words, possibly 3,500
- Needs at least 3 writer interviews, including someone skeptical of AI
- She suggested reaching out to Devon Zhao, who wrote about AI and journalism ethics

**Business details:**
- Budget is $1,800
- Deadline is soft April 4
- This could lead to more work — Horizon is doing a whole AI tools section in the May issue

**Action items Alex needs to do:**
- Revise the outline and send it by March 20
- Reach out to Devon Zhao
- Find 2 more interview subjects
- Start drafting the personal sections

See what just happened? I took a messy, quick-capture meeting note and turned it into structured, actionable information. The note is still there, unchanged — but now you can see what's in it clearly."

**Check:** Wait for the student to respond. They might be impressed, they might ask a question. Engage with whatever they say. If they ask whether you changed the note, reassure them: "I didn't change anything — the original note is exactly as it was. I just read it and organized the information for you."

---

### Step 3: Demo — Searching Across the Vault (3 minutes)

**Say:**
"Now let me show you something you can't easily do in Obsidian alone. I'm going to search across your *entire vault* for every mention of a specific client — let's try 'Horizon' — and show you what I find."

**Action:**
Search for the word "Horizon" across all files in `vault/`. Show which files contain the match and briefly what the context is.

**Present it like this:**
Show each note that mentions "Horizon" as a clean list with a brief excerpt or description of what the mention is about:

"Here's everywhere 'Horizon' shows up in your vault:

1. **Meeting notes Sarah 03-15** (Inbox) — The meeting notes about the AI Writing Partner article assignment
2. **Quick thought - AI and memory** (Inbox) — A fleeting thought that mentions 'the Horizon piece' — Alex is thinking about how AI memory connects to the article
3. **2026-03-10** (Daily Notes) — Alex did 45 minutes of research for the Horizon AI piece and noted a connection between the digital boundaries post and the Horizon feature
4. **2026-03-12** (Daily Notes) — Sarah from Horizon wants to schedule a call about the AI piece

Four notes across two different folders, and they all connect to the same thread: Alex's AI Writing Partner article for Horizon Magazine. In Obsidian, you'd have to search and click into each result one by one. Here, I can read all four and give you the full picture at once."

**Check:** Wait for the student to respond.

---

### Step 4: Demo — Listing a Folder (2 minutes)

**Say:**
"I can also give you a quick overview of any folder. Let me scan the Inbox and tell you what each note is about — like a quick summary of everything sitting in your inbox."

**Action:**
Read each file in `vault/00-Inbox/` and provide a one-line summary of each.

**Present it like this:**
"Here's a quick summary of everything in your Inbox right now:

| Note | What it's about | Related to |
|---|---|---|
| Quick thought - AI and memory | Fleeting idea about AI as extended memory, questions about authenticity | Horizon article, newsletter |
| Meeting notes Sarah 03-15 | Call with Horizon editor about AI Writing Partner feature | Horizon Magazine |
| Podcast rec from Jamie | Digital gardens podcast recommendation, notes-as-gardens metaphor | Personal interest, PKM |
| Book idea fragments | Early brainstorm for 'The Connected Creator' book | The Synthesis newsletter |
| ClearPath async article research links | Five research URLs with notes for async communication article | ClearPath |

Five notes, each pointing in a different direction. Some of them are related to each other — but right now those relationships aren't visible in the vault. That's something we'll fix."

**Check:** Wait for the student to respond.

---

### Step 5: Interactive — Student Picks a Note (3 minutes)

**Say:**
"Your turn! Pick any note in the vault that you're curious about, and tell me which one. I'll read it and explain what's in it, what it connects to, and what's interesting about it.

You can pick from the Inbox or the Daily Notes — any note you want. Which one sounds interesting to you?"

**Check:** Wait for the student to pick a note. This is an important moment — the student is directing Claude for the first time in a meaningful way. Whatever note they pick, read it fully and give a thoughtful explanation. Points to cover:
- What the note contains
- What projects or ideas it relates to
- What other notes in the vault it connects to (even if not explicitly linked)
- What's interesting or notable about it

If the student seems unsure, suggest: "How about 'Book idea fragments'? That one's got some interesting seeds in it."

---

### Step 6: The Cross-Vault Vision (3 minutes)

**Say:**
"Now let me show you something that really demonstrates what I can do differently from Obsidian search. I'm going to search for 'AI' across every note in your vault and show you the bigger picture."

**Action:**
Search for "AI" across all files in `vault/`. Read the matching notes and identify the pattern.

**Say:**
"The word 'AI' shows up across multiple notes in your vault. Let me show you what that reveals:

- **Quick thought - AI and memory** — Alex is thinking about AI as an extension of human memory, and how that changes a writer's relationship with their own ideas
- **Meeting notes Sarah 03-15** — Alex is writing an article about how writers use AI tools, for Horizon Magazine. Sarah wants it personal and grounded.
- **Book idea fragments** — Alex's book idea, 'The Connected Creator,' touches on how creators build knowledge systems — and AI tools are part of that picture
- **2026-03-10** — Alex found examples of writers who use AI without losing their voice. Also noticed a connection between the digital boundaries piece and the AI article.
- **2026-03-12** — References the Horizon AI piece, and Alex is reflecting on how different tools shape different kinds of thinking

Here's what's interesting: these aren't all about the same topic. They're about different *aspects* of a bigger theme — the relationship between AI, creativity, memory, and tools. Alex is circling around a big idea across five different notes without even realizing it.

*This* is what I mean when I say I can see patterns across your vault. No single note tells this story. But when I read them all together, the theme becomes clear."

**Check:** Wait for the student to respond. This should start to feel powerful. Give them space to react. If they seem excited, lean into it. If they seem skeptical, acknowledge that: "I know it might seem like I'm just doing keyword search — but the difference is that I read and understand the context. I'm not just finding the word 'AI', I'm seeing how the same thread runs through meeting notes, personal thoughts, and research."

---

### Step 7: Key Concept and Wrap Up (2 minutes)

**Say:**
"Here's the key concept from this module:

**Claude can read across your entire vault — something you can't easily do yourself.**

You can search in Obsidian, and that's great for finding specific notes. But I can read dozens of notes at once and tell you what they mean *together*. I can spot themes you didn't know were there, find connections between notes in different folders, and give you the big picture of your own thinking.

That's the superpower. Your vault isn't just a storage system — with Claude, it becomes a thinking partner. Your notes aren't static. They're alive with connections waiting to be discovered.

In the next module, I'm going to demonstrate this in a way that might genuinely surprise you. I'll take four scattered, unconnected notes from your vault and create something new from them — a synthesis that pulls the threads together.

Type `/start-1-4` to continue to 'The Connection.' This is the one people remember."

---

## Important Notes for Claude
- Every demo in this module must use real data from the vault. Read real files, search real content, show real results. Never fake or fabricate output.
- When searching, actually perform the search and report what you find. If the results differ from what the script expects (e.g., a note doesn't mention "AI"), adapt gracefully.
- Step 5 is student-directed. Whatever note they pick, give a thoughtful, comprehensive response. Don't rush this — it's the first time they're driving.
- The cross-vault pattern finding in Step 6 is the setup for the "aha moment" in Module 1.4. Build anticipation but don't oversell.
- Use the table format in Step 4 only if it renders well. If you're unsure, use a simple bulleted list instead.
- Don't teach the student how to ask Claude things — just model good interactions. They'll learn the patterns naturally.

---

## Common Student Questions

**Q: "Can you change notes while reading them?"**
A: I can, but I won't do it without asking you first. When I read a note, I'm just looking at it — the note stays exactly as it is. If I ever need to modify or create a note, I'll tell you what I'm doing and why.

**Q: "How much of the vault can you see at once?"**
A: I can access any note in the vault at any time. I read them one at a time, but I can read many notes in quick succession and hold all of them in mind when answering your question. For a vault this size, I can easily read everything.

**Q: "What if I have private notes I don't want Claude to see?"**
A: That's a great thing to think about. Since I can access any file in the vault, if there's something you want to keep private, you'd keep it outside the vault folder. We'll talk more about vault organization and boundaries in later modules.

**Q: "Is this better than just using Obsidian's search?"**
A: They're complementary. Obsidian's search is fast and great for finding specific notes by keyword. I'm better when you need *understanding* — when you want to know what a set of notes means together, find themes, or get a summary of scattered information. Think of Obsidian search as finding a needle in a haystack, and me as reading the whole haystack and telling you what story it tells.

---

## Success Criteria
- [ ] Student has seen Claude read a note and provide a structured summary
- [ ] Student has seen Claude search across the vault for a client name
- [ ] Student has seen Claude summarize an entire folder's contents
- [ ] Student has picked a note and received a Claude-driven explanation (interactive moment)
- [ ] Student has seen Claude find patterns across multiple notes (the "AI" search)
- [ ] Student understands the difference between search and cross-vault understanding
- [ ] Student is intrigued about Module 1.4 ("The Connection")
- [ ] Student knows to run `/start-1-4` next
