# Module 4.6: Custom Slash Commands

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are showing the student how to build their own slash commands — turning multi-step workflows into single-word actions. The student has been using `/start-X-X` commands throughout the course, so they already understand the concept of typing a command and having something happen. Now they'll learn those commands are just text files they can create themselves. This should feel empowering — the student is graduating from following commands to creating them. Build each command collaboratively, and test at least two of them live.

---

## Module Learning Objectives
1. Understand that slash commands are just text files in `.claude/commands/`
2. Build four practical slash commands for daily vault workflows
3. Test at least two commands live and see them work
4. Understand how to create custom commands for any workflow
5. Come up with an idea for an original custom command

---

## Teaching Flow

### Step 1: The Secret Behind Slash Commands (3 minutes)

**Say:**
"You've been typing `/start-4-1`, `/start-4-2`, and so on throughout this entire course. Every time, Claude reads the lesson and starts teaching. It feels like a built-in feature, right?

Here's the secret: those commands are just text files. Literally just notes with instructions in them, sitting in a folder called `.claude/commands/`. When you type `/start-4-1`, Claude reads the file `.claude/commands/start-4-1.md` and follows whatever instructions are in it. That's it. No magic, no special programming. Just a note that tells Claude what to do.

Which means... you can make your own. Any workflow you do repeatedly — creating daily notes, processing your inbox, reviewing your week — can become a single slash command.

In this module, we're going to build four commands together. By the end, your most common vault tasks will be one-word actions."

**Check:** Wait for the student to react to the revelation that slash commands are just text files.

---

### Step 2: Build Command 1 — /daily (4 minutes)

**Say:**
"Let's start with the most useful command: `/daily`. This one creates your daily note for today, pre-filled from your template format, ready for you to start writing in.

Right now, creating a daily note means: figure out today's date, create a new note with the right name, add the frontmatter, set up the sections. With this command, you'll just type `/daily` and it's done."

**Action:**
Create the file `.claude/commands/daily.md` with the following content:

```markdown
---
description: "Create today's daily note with proper template and frontmatter"
---

Create a new daily note for today in the vault. Follow these steps:

1. Get today's date in YYYY-MM-DD format
2. Check if a daily note already exists at `vault/01-Daily-Notes/[today's date].md`
   - If it exists, tell the user and open/show it instead of creating a duplicate
3. If it doesn't exist, create the note at `vault/01-Daily-Notes/[today's date].md` with this format:

```
---
date: [today's date]
tags: [daily]
---

# [Full day name], [Month Day]

## What I did
-

## Observations


## Ideas
-

## Tomorrow
-
```

4. Tell the user their daily note is ready and they can open it in Obsidian
5. Mention any relevant context: are there notes from yesterday they might want to reference? Any items in the Inbox that have piled up?
```

**Say:**
"There it is — your `/daily` command. Let me show you what's in it:

- A description line at the top so you remember what it does
- Step-by-step instructions for Claude: check the date, see if today's note already exists, create it with the right format if not, and give you a heads-up about anything relevant

Notice it's written in plain English, not code. You're just telling Claude what to do, step by step. Claude reads these instructions and follows them, just like it reads the teaching scripts for this course.

Let's test it!"

**Action:**
Run the `/daily` command by following its instructions: check today's date, check if the daily note exists, and create it if needed. Show the student the result.

**Say:**
"Your daily note for today is ready. Open it in Obsidian — you'll see it in `01-Daily-Notes`. One command, and your day is set up."

**Check:** Wait for the student to verify the daily note exists in Obsidian.

---

### Step 3: Build Command 2 — /weekly-review (4 minutes)

**Say:**
"Next up: the weekly review. At the end of each week, you want to look back at what you did, what you thought about, and what patterns emerged. Doing this manually means opening five to seven daily notes and trying to synthesize them yourself. Let's automate that."

**Action:**
Create the file `.claude/commands/weekly-review.md` with the following content:

```markdown
---
description: "Generate a weekly review by synthesizing this week's daily notes"
---

Perform a weekly review for the user. Follow these steps:

1. Determine the current week (Monday through Sunday, or the last 7 days)
2. Find all daily notes in `vault/01-Daily-Notes/` from this period
3. Read each daily note carefully
4. Create a weekly review note at `vault/01-Daily-Notes/Weekly Review - [start date] to [end date].md` with this format:

```
---
date: [today's date]
tags: [weekly-review, reflection]
type: synthesis
---

# Weekly Review: [Start Date] to [End Date]

## Summary
[2-3 paragraph overview of the week — what was the main focus? What progressed?]

## Projects Touched
- **Horizon Magazine:** [what happened this week]
- **Bloom Studio:** [what happened this week]
- **ClearPath:** [what happened this week]
- **The Synthesis:** [what happened this week]
(Only include projects that were actually mentioned)

## Key Accomplishments
- [Things completed or meaningfully advanced]

## Ideas That Emerged
- [Interesting thoughts from the daily notes worth developing]

## Patterns I Notice
- [Recurring themes, concerns, or interests across the week]

## Next Week's Focus
- [Based on this week, what should next week prioritize?]
```

5. After creating the review, give the user a brief verbal summary of the week's highlights
6. Mention any ideas from the daily notes that seem worth developing further
```

**Say:**
"The `/weekly-review` command reads all your daily notes from the past week and synthesizes them into a single review. It pulls out what you worked on, what ideas emerged, and what patterns it noticed across the week. It even suggests what to focus on next.

This is exactly the kind of task that's tedious for humans but easy for Claude. You wrote the daily notes over the course of the week — Claude reads them all at once and finds the through lines.

Let me test this one too."

**Action:**
Run the `/weekly-review` command by following its instructions: find this week's daily notes, read them, and create a synthesis. Show the student the result.

**Say:**
"Check it out in Obsidian — there's a new weekly review note in your Daily Notes folder. Look at how it pulled together themes from across the week. This would have taken you 20-30 minutes to write yourself. Now it takes one command."

**Check:** Wait for the student to look at the weekly review in Obsidian and react.

---

### Step 4: Build Command 3 — /process-inbox (4 minutes)

**Say:**
"Third command: `/process-inbox`. Your Inbox is where quick captures go — stray thoughts, meeting notes, links to check out later. But if you never process the Inbox, it just becomes another pile. This command reads everything in the Inbox and helps you triage it."

**Action:**
Create the file `.claude/commands/process-inbox.md` with the following content:

```markdown
---
description: "Triage everything in the Inbox — categorize, suggest actions, and help file notes"
---

Process the user's Inbox. Follow these steps:

1. List all notes in `vault/00-Inbox/`
2. If the Inbox is empty, congratulate the user on a clean inbox and stop
3. For each note in the Inbox:
   a. Read its contents
   b. Categorize it as one of: Quick Thought, Meeting Notes, Research Lead, Project Task, Reference, or Other
   c. Suggest where it should go (which vault folder and why)
   d. Note if it connects to any existing project or note in the vault

4. Present a triage summary like this:

   **Inbox Triage — [count] notes to process:**

   For each note:
   - **[Note name]** → [Category]
     - Suggested destination: [folder]
     - Connected to: [existing notes, if any]
     - Recommended action: [file it, expand it, merge with another note, or archive it]

5. Ask the user which notes they'd like to process now
6. For each note they choose:
   - Move it to the suggested folder (or wherever they prefer)
   - Add frontmatter if missing
   - Add links to related notes
   - Confirm the move

7. After processing, report how many notes were handled and how many remain
```

**Say:**
"The `/process-inbox` command is your inbox zero tool. It reads everything in the Inbox, tells you what each note is, where it should go, and what it connects to. Then it asks which ones you want to process and handles the filing for you.

This is the capture-and-process workflow from Level 2, but automated. You still make the decisions — the command just does the analysis and heavy lifting for you."

**Check:** Wait for the student to acknowledge. They don't need to test this one now — they'll see it in action naturally as they use the vault.

---

### Step 5: Build Command 4 — /project-brief (3 minutes)

**Say:**
"Last command: `/project-brief`. This one takes a client name and gathers everything relevant from your vault into a current status summary. Super useful before client calls or when you need to get your head back into a project you haven't touched in a few days."

**Action:**
Create the file `.claude/commands/project-brief.md` with the following content:

```markdown
---
description: "Generate a current project status brief for a specific client"
---

Generate a project brief for the specified client. The user should provide a client name (Horizon Magazine, Bloom Studio, ClearPath, or The Synthesis). If they didn't specify one, ask them.

Follow these steps:

1. Identify the client from the user's input
2. Search the vault for all notes related to this client:
   - Check the project folder: `vault/02-Projects/[client folder]/`
   - Search all notes for mentions of the client name
   - Check for relevant tags
   - Look in Drafts, Research, and Inbox for related notes
3. Read all relevant notes
4. Generate a project brief and display it (don't create a separate note unless asked):

   **Project Brief: [Client Name]**
   **Generated:** [today's date]

   **Active Projects:**
   - [Project name] — Status: [status] — Deadline: [if known]

   **Recent Activity:**
   - [What's been worked on recently, pulled from daily notes and project notes]

   **Key Notes:**
   - [List of the most important notes for this project, with brief descriptions]

   **Open Questions / Blockers:**
   - [Things that need resolution]

   **Next Steps:**
   - [What should happen next, based on the notes]

   **Related Research:**
   - [Research notes that connect to this project]

5. Ask if the user wants to save this as a note in the project folder
```

**Say:**
"The `/project-brief` command is like having a research assistant prepare a briefing before a meeting. You say `/project-brief` and tell it which client, and Claude gathers everything — project notes, recent daily note mentions, drafts, research — and gives you a complete picture of where things stand.

No more scrambling before a call with Sarah at Horizon or Maya at Bloom. One command, full context."

**Check:** Wait for the student to acknowledge.

---

### Step 6: Review What You've Built (2 minutes)

**Say:**
"Let's take a moment to look at what you now have. Four custom commands:

1. **`/daily`** — Creates today's daily note, ready to go
2. **`/weekly-review`** — Synthesizes your week from daily notes into a review
3. **`/process-inbox`** — Triages your inbox and helps file notes
4. **`/project-brief`** — Generates a status summary for any client

Each one replaces a multi-step manual process with a single word. And each one is just a text file — you can read them, edit them, improve them anytime.

That's four commands. But here's the thing — you can make as many as you want. Any workflow you repeat can become a slash command."

**Check:** Wait for the student to acknowledge.

---

### Step 7: Exercise — Your Own Command (3 minutes)

**Say:**
"Now it's your turn to think creatively. What's a workflow you do regularly — or wish you could do more easily — that could become a slash command?

Here are some ideas to get you thinking:
- **`/brainstorm`** — Give Claude a topic and it generates ideas, pulling from your existing notes for inspiration
- **`/client-email`** — Draft a status update email for a client based on recent project notes
- **`/reading-list`** — Gather all unread research notes and literature notes into a reading queue
- **`/connect`** — Find surprising connections between recent notes and older ones
- **`/archive`** — Move completed project notes to Published and update all links

What resonates with you? What would make your daily vault work easier?"

**Check:** Wait for the student to share an idea. Engage with it genuinely:
- Validate the idea
- Describe how it would work as a slash command
- Offer to build it right now if it's straightforward
- If they want to build it, help them write the `.md` file together

If the student creates their own command, save it to `.claude/commands/` with the appropriate name.

---

### Step 8: Wrap Up (1 minute)

**Say:**
"Excellent work! You've gone from being a user of slash commands to a creator of them. Here's what you built:

- Four custom commands that automate your most common workflows
- An understanding that commands are just plain-English instruction files
- The ability to create new commands for any workflow you can describe

Slash commands are the capstone of practical automation. Hooks run automatically in the background. Sub-agents bring specialized skills. And slash commands give you one-word access to complex workflows. Together, they turn your vault from a collection of notes into a system that works as fast as you can think.

One more module to go — the grand finale. Type `/start-4-7` to wrap up the course."

---

## Important Notes for Claude
- Actually create all four command files. The student should be able to use them after this lesson.
- Test at least `/daily` and `/weekly-review` live. Execute them by following their instructions and show the student real results.
- The command files use plain English instructions, not code. This is intentional — slash commands are meant to be readable by non-technical users.
- When testing `/daily`, check if today's note already exists (it might, from earlier modules). Handle gracefully — show the existing note rather than creating a duplicate.
- When testing `/weekly-review`, read the actual daily notes in the vault. The synthesis should reference real content from the student's vault.
- For `/process-inbox`, a live test is optional — it may be disruptive to move notes around mid-lesson. A description of what it does is sufficient.
- In the exercise step, genuinely engage with the student's idea. If they want to build it, build it. This is their chance to feel ownership over the system.
- The description field in the frontmatter of command files is important — it shows up when the student lists available commands.

---

## Common Student Questions

**Q: "Can I edit these commands later?"**
A: Absolutely! They're just text files. Open them, change the instructions, save. Claude will follow the updated instructions next time you run the command.

**Q: "Can commands call other commands?"**
A: Not directly in a chain, but a command can instruct Claude to do multiple things in sequence. You can make a command as simple or as complex as you want.

**Q: "What if I make a mistake in a command?"**
A: Claude interprets the instructions flexibly — small wording changes won't break anything. If something isn't working as expected, just tweak the instructions and try again. There's no rigid syntax to get wrong.

**Q: "Can I share commands with other people?"**
A: Yes! Since they're just `.md` files, you can copy them, email them, or put them in a shared folder. Anyone using Claude Code can drop them into their `.claude/commands/` folder and start using them.

**Q: "Is there a limit to how many commands I can have?"**
A: No practical limit. Create as many as you find useful. If you end up with a lot, you might want to use descriptive names so they're easy to remember.

**Q: "Can a command accept input from me, like a client name?"**
A: Yes — the `/project-brief` command is an example. You type the command and include additional information, and Claude uses it. Commands can be as interactive as you want.

---

## Success Criteria
- [ ] All four command files have been created in `.claude/commands/`
- [ ] At least two commands have been tested live with real results
- [ ] Student understands that commands are plain-text instruction files
- [ ] Student has brainstormed (and ideally built) their own custom command
- [ ] Student sees slash commands as a tool they can create, not just use
- [ ] Student knows to run `/start-4-7` next
