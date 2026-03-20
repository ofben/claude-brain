# Module 1.5: CLAUDE.md — Teaching Claude About Your Vault

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
This module teaches the student one of the most practical and empowering concepts in the course: the CLAUDE.md project memory file. After the emotional high of Module 1.4's synthesis moment, this module channels that excitement into something concrete and lasting. You are helping the student understand that Claude doesn't have to rediscover their vault every time — they can write a single note that gives Claude permanent context. Use the analogy of onboarding a new assistant throughout. Keep things grounded, warm, and hands-on. By the end, the student will have a working CLAUDE.md in their vault and will have tested it live by asking you a question and seeing you answer with full vault awareness.

---

## Module Learning Objectives
1. Understand what CLAUDE.md is and why it matters for working with Claude
2. Know what information belongs in a CLAUDE.md (vault description, folder structure, context, conventions, common requests, style preferences)
3. Build a complete, practical CLAUDE.md together with Claude
4. Experience the difference CLAUDE.md makes by testing it with a real question
5. Understand that CLAUDE.md is a living document they can update as their vault evolves

---

## Teaching Flow

### Step 1: What Is CLAUDE.md? (3 minutes)

**Say:**
"In the last module, something pretty remarkable happened. I read four scattered notes from different folders and found the hidden theme connecting them all. That felt like magic.

But here's the thing: to do that, I had to start from scratch. I didn't know anything about Alex's vault, clients, or projects until I read those notes one by one. Every time you start a new conversation with Claude, it's like meeting me for the first time. I don't remember our previous conversations. I don't know your folder structure, your clients, your preferences — nothing. You'd have to explain everything all over again.

Unless you give me an orientation document.

Imagine you hired an assistant to help manage your notes. On their first day, you'd sit them down and explain your system — what folders are for, how you name things, what's important, what your priorities are, how you like things done. You wouldn't make them figure it all out by guessing. You'd give them a proper orientation.

CLAUDE.md is that orientation document, except the 'assistant' is Claude.

It's a special note that lives at the top level of your vault. Every time Claude starts a new conversation in this folder, it reads CLAUDE.md first — automatically. No setup required, no configuration, no plugins. Claude just reads it. And suddenly, I already know your system before you say a word."

**Check:** Wait for the student to respond. They might ask how Claude knows to read it, or whether it really works automatically. Reassure them: "It's built into how Claude Code works. If there's a note called CLAUDE.md in the folder where you're working, Claude reads it before anything else. Think of it as a permanent first impression — every single time."

---

### Step 2: What Should Go in It? (4 minutes)

**Say:**
"So what should you actually put in CLAUDE.md? Think about everything you'd tell an assistant on their first day. Here are the key sections:

**1. Vault Description**
A brief overview. Who you are, what this vault is for. This gives Claude the big picture in one breath.

**2. Folder Structure and Purposes**
Not just what the folders are called, but *why* they exist and what belongs in each one. The 00-Inbox is for raw captures. 02-Projects has client work organized by client. 03-Research is the personal library. When Claude knows the purpose of each folder, it can make smart decisions about where notes belong.

**3. Naming Conventions**
How notes are titled, how tags work, what format you prefer for the info block at the top of notes. This way, when Claude creates a note for you, it looks like something *you* would have written — not something generic.

**4. Important Context**
Who you are, what you do, who your clients are, what you're working on. Alex is a freelance writer. Three clients plus a newsletter. Each client has different needs and different tones. This is the context that makes Claude's help specific instead of generic.

**5. Writing Style Preferences**
How you like things written. Warm and conversational? Formal and precise? Different for different clients? This keeps Claude's output consistent with your voice.

**6. Common Requests and How to Handle Them**
The things you're likely to ask Claude to do, and how you want them done. 'When I ask you to summarize a note, include key takeaways and action items.' 'When I ask you to create a new note, always include the info block at the top.' These are like standing instructions — you write them once and Claude follows them every time."

**Check:** Wait for the student to acknowledge. If they seem overwhelmed by the list, reassure them: "Don't worry about memorizing all of this. We're going to build it together right now, and I'll explain each section as we write it. You'll see how natural it feels."

---

### Step 3: Build It Together (5 minutes)

**Say:**
"Let's build Alex's CLAUDE.md. I'm going to write the whole thing, and then we'll walk through each section so you understand what it does and why it's there."

**Action:**
Write the following note to `vault/CLAUDE.md`:

```markdown
# Alex Rivera's Knowledge Vault

This is the personal knowledge management vault for Alex Rivera, a freelance writer based in Portland. This vault serves as Alex's second brain — a system for capturing, organizing, and connecting ideas across all projects and areas of work.

## Vault Structure

- **00-Inbox/** — Raw captures, quick thoughts, meeting notes, and anything that hasn't been processed yet. Notes land here first and get sorted later.
- **01-Daily-Notes/** — Daily journal entries. Each note covers what happened that day, what Alex worked on, ideas that came up, and reflections. Named by date (YYYY-MM-DD).
- **02-Projects/** — Active client work and personal projects, organized by client/project:
  - `Horizon-Magazine/` — Long-form feature articles for Horizon Magazine (editor: Sarah Chen)
  - `Bloom-Studio/` — Blog posts and content about wellness, digital balance, and intentional living
  - `ClearPath/` — SEO blog posts about remote work, productivity, and async communication
  - `The-Synthesis/` — Alex's personal newsletter connecting ideas across creativity and technology
- **03-Research/** — Deeper research notes, literature notes, concept explorations, and synthesis notes. Alex's personal library of ideas.
- **04-Drafts/** — Works in progress. When a note graduates from idea to active writing, it moves here.
- **05-References/** — Reference material to keep: style guides, client briefs, rate cards, useful frameworks.
- **06-Templates/** — Reusable note formats for common note types.
- **07-MOCs/** — Maps of Content. Index notes that organize and navigate groups of related notes by theme.
- **08-Published/** — Finished work. The archive of shipped pieces.

## About Alex

Alex is a freelance writer who works with three clients and publishes a personal newsletter:

- **Horizon Magazine** — Long-form features (3,000-3,500 words) about technology and culture. Editor is Sarah Chen. Pay rate ~$1,800/article. Articles are reported and personal — Sarah wants pieces that feel like conversations, not reports.
- **Bloom Studio** — Blog posts about wellness, digital balance, and mindful living. Shorter pieces with a warm, accessible, gentle tone.
- **ClearPath** — SEO-focused blog posts about remote work and productivity. Practical, actionable tone. Keyword-aware writing.
- **The Synthesis** (newsletter) — Alex's personal project, published roughly biweekly. Connects ideas across creativity, technology, and knowledge work. ~1,200 words per issue. This is where Alex's most personal thinking lives.

Alex's core interests: the intersection of creativity and technology, tools for thought, digital intentionalism, how knowledge systems shape thinking, and the future of writing in an AI-assisted world.

## Note Conventions

- **Note titles** should be descriptive and human-readable (e.g., "AI Tools Landscape 2026" not "ai-tools-2026")
- **Info blocks** (frontmatter) go at the top of every note between `---` markers. Include at minimum: relevant tags. For project notes, also include client/project name and status.
- **Tags** use lowercase with hyphens: `#digital-minimalism`, `#tools-for-thought`. Client-related tags use the client name: `#horizon`, `#bloom`, `#clearpath`.
- **Links** use `[[double brackets]]` to connect related notes. Link generously — connections are the backbone of this vault.
- **Date format** is YYYY-MM-DD throughout.

## When I Ask You To...

- **"Summarize a note"** — Read the full note and provide: a 2-3 sentence summary, key takeaways as bullet points, any action items, and connections to other notes in the vault.
- **"Create a new note"** — Always include an info block (frontmatter) with appropriate tags. Place the note in the correct folder based on the vault structure above. Use a descriptive, human-readable title.
- **"Process the inbox"** — Read each note in 00-Inbox, summarize what it contains, and recommend which folder it should be moved to and why. Don't move anything without asking first.
- **"Find connections"** — Search across the vault for notes related to the given topic. Read them and identify thematic connections, not just keyword matches. Present findings as a synthesis, not a list of search results.
- **"Help with a draft"** — Read the draft and any related notes (research, briefs, outlines). Offer suggestions for structure, clarity, and completeness. Match the tone appropriate to the client or project.
- **"Review my week"** — Read the daily notes from the past week and provide a summary of what Alex worked on, what themes emerged, and what might need attention next.

## Writing Style Preferences

- **Tone:** Warm, thoughtful, conversational. Alex writes like a smart friend explaining something interesting — never academic, never salesy, never stiff.
- **Length:** Prefer concise over exhaustive. Get to the point, then develop it.
- **Voice:** First person when writing as Alex. Avoid jargon unless the audience expects it (ClearPath content can be more businesslike; Bloom content should be gentle and personal; Horizon content should be reported but warm).
- **Formatting:** Use headers to break up longer notes. Bullet points for lists and takeaways. Bold for emphasis, used sparingly.
- **Important:** When Claude creates notes, they should feel like they belong in Alex's vault — not like they were generated by AI. Match the natural, thoughtful tone of Alex's existing notes.
```

**Say:**
"There it is — Alex's CLAUDE.md. Let me walk you through what we just built.

**The opening paragraph** gives Claude the big picture in one breath: who Alex is, what this vault is for, what it's meant to do.

**Vault Structure** maps out every folder and explains its purpose. Now Claude won't just see folder names — it'll understand *why* each folder exists and what belongs in it. When Alex says 'create a research note,' Claude already knows it goes in 03-Research.

**About Alex** is the context that makes everything personal. Clients, projects, interests, how each client relationship works. When Alex says 'help me with the Horizon piece,' Claude already knows that means a 3,000-word feature article for Sarah Chen who likes pieces that feel like conversations.

**Note Conventions** tells Claude how to format notes so they look like they belong. Consistent titles, info blocks at the top, how tags and links work. Every note Claude creates will follow the same patterns Alex uses.

**When I Ask You To** is the standing instructions section. Instead of explaining 'and make sure you include an info block, and put it in the right folder, and add relevant tags' every single time, Alex just says 'create a new note' and Claude already knows the whole routine.

**Writing Style** keeps Claude's output consistent with Alex's voice. Different clients get different tones, and Claude knows which is which.

Take a moment to look at it in Obsidian. It should appear at the very top level of the vault, right alongside the numbered folders — not inside any of them."

**Check:** Wait for the student to look at the note in Obsidian and acknowledge it. If they have questions about any section, answer them. If they want to change something, encourage that: "This is your document. You can edit any part of it, anytime. In fact, you should update it as your vault evolves and your needs change."

---

### Step 4: Test It (3 minutes)

**Say:**
"Here's the exciting part. That CLAUDE.md is now active. From this moment on, every time Claude starts a new conversation in this vault, it reads that note first. I already know your folder structure, your clients, your conventions, and your preferences — without you telling me a thing.

Let's test it. Ask me something about your vault — anything you'd like. You could ask me where a note should go, or ask about one of your projects, or ask me to do one of the things from the 'When I Ask You To' section.

Go ahead — try asking me something and see what happens."

**Check:** Wait for the student to ask a question. This is a critical interactive moment — the student is testing the CLAUDE.md in real time. Whatever they ask, answer it using the context from the CLAUDE.md. Demonstrate that you know their vault structure, their clients, their projects, and their preferences without them having to explain anything.

Examples of how to respond:
- If they ask "where should I put a note about a podcast I listened to?": Reference the vault structure naturally — "A podcast note would start in **00-Inbox** as a quick capture. Once you've processed it and added your thoughts, if it's substantial research it could move to **03-Research**. If it connects to a specific client project, you might link it from the relevant project folder in 02-Projects."
- If they ask about a client: Show that you know the details — "Horizon Magazine is where you do your long-form features. Sarah Chen is your editor, and she likes pieces that feel personal and conversational, not like reports. Articles run 3,000-3,500 words, and the current rate is about $1,800 per piece."
- If they ask you to create a note: Follow the conventions from CLAUDE.md — include frontmatter, use proper tags, place it in the right folder, use a descriptive title.
- If they ask "what am I working on?": Summarize the active projects based on the CLAUDE.md context and what you've seen in the vault.

After answering, deliver this key insight:

**Say:**
"Did you notice what just happened? You didn't have to explain your vault, your clients, or how you like things done. I already knew all of it. That's the power of CLAUDE.md.

You teach Claude once, and it remembers every time. No more re-explaining your folder structure. No more reminding me who Sarah Chen is. No more telling me how you like your notes formatted.

And here's the best part: CLAUDE.md is a living document. As your vault grows, as you take on new clients, as your preferences evolve — you just update the note. Next time Claude starts up, it reads the new version. It grows with you.

CLAUDE.md means you never have to re-explain your system. Claude remembers because you taught it."

**Check:** Wait for the student to respond. Let this sink in. The student has now experienced two key insights back-to-back: Module 1.4 showed that Claude can find connections across notes, and this module showed that Claude can *remember* context permanently. Together, these are the foundation of the second brain partnership.

---

**Say:**
"You've now got two powerful things in your vault: a synthesis note that connects scattered ideas, and a CLAUDE.md that teaches Claude your whole system. These are the building blocks.

In the next module, we'll cover some practical navigation skills — keyboard shortcuts in Obsidian, common Claude Code patterns, and the daily workflow that ties everything together. It's the final module of Level 1, and it'll give you the muscle memory and mental model to move through your vault with confidence.

Type `/start-1-6` when you're ready."

---

## Important Notes for Claude
- The CLAUDE.md must be written to `vault/CLAUDE.md` (the vault root), not to the lesson module folder or anywhere else.
- Write the CLAUDE.md with the exact content provided above (or very close to it). This note will be read by Claude in all subsequent modules and conversations, so its content matters.
- Walk through each section at a high level after creating it. Don't read it aloud line by line — summarize what each section does and why it's there.
- The interactive test in Step 4 is the most important moment. The student must *experience* the difference CLAUDE.md makes, not just hear about it. Whatever they ask, answer in a way that clearly demonstrates vault-aware context. Reference specific details from the CLAUDE.md naturally, as if you've always known them.
- If the student seems hesitant about what to ask in Step 4, offer specific suggestions: "Try asking me about one of your clients, or ask me where a new note should go, or ask me to summarize what you're currently working on."
- Do not explain YAML or frontmatter in technical terms. Call it "the info block at the top" if you need to reference it.
- The analogy of onboarding a new assistant is the key framing. Return to it if the student seems confused about what CLAUDE.md is or why it matters.
- This module is more practical and less emotional than Module 1.4. That's intentional — it channels the aha moment excitement into something concrete and usable.
- If the student asks whether they can edit the CLAUDE.md, strongly encourage it. Emphasize that it's their document and should evolve with their vault.

---

## Common Student Questions

**Q: "Does Claude really read this every time?"**
A: Yes. When Claude Code starts in a folder that contains a CLAUDE.md, it reads that note automatically as part of its initialization. It's not a plugin or an extension — it's built into how Claude Code works. You don't have to do anything special to activate it.

**Q: "Can I have different CLAUDE.md notes for different projects?"**
A: Great question! Yes, you can. If you create a CLAUDE.md inside a subfolder, Claude will read it when working in that folder. This becomes useful later when you have complex projects that need their own context. For now, one CLAUDE.md at the vault level is perfect.

**Q: "What if I want to change something later?"**
A: Just edit it! CLAUDE.md is a regular note in your vault. Open it in Obsidian, make your changes, save. Next time Claude starts a conversation, it'll read the updated version. Think of it as a living document that grows with your vault.

**Q: "How long should CLAUDE.md be?"**
A: There's no strict limit, but aim for comprehensive without being overwhelming. The one we just created is a good length — detailed enough to be genuinely useful, organized enough to be scannable. As a rule of thumb: if you'd tell a new assistant about it on their first day, it belongs in CLAUDE.md.

**Q: "Is my CLAUDE.md private? Does it get sent anywhere?"**
A: CLAUDE.md is just a note on your computer. It's read by Claude as part of the conversation context, the same way any note you ask Claude to read is processed. Nobody else can see it unless you share your vault.

**Q: "What if I put something wrong in the CLAUDE.md?"**
A: No harm done. If Claude follows an instruction that turns out to be wrong or outdated, just correct me in the conversation and then update the CLAUDE.md so it doesn't happen again. It's forgiving by design.

---

## Success Criteria
- [ ] Student understands what CLAUDE.md is (an orientation document that gives Claude persistent context)
- [ ] Student knows the key sections: vault description, folder structure, context, conventions, common requests, style preferences
- [ ] Claude created a complete CLAUDE.md at `vault/CLAUDE.md`
- [ ] Student has seen the CLAUDE.md in Obsidian at the vault root
- [ ] Student tested the CLAUDE.md by asking Claude a context-dependent question
- [ ] Student experienced Claude answering with full vault-aware context (the "it remembers!" moment)
- [ ] Student understands that CLAUDE.md is a living document they should update over time
- [ ] Student knows to run `/start-1-6` next
