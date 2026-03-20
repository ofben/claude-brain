# Module 0.2: Install Claude Code

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
The student is running this module from Claude Code, which means they likely already have it installed. Handle this gracefully — don't make them feel silly for being asked to install something they're already using. The real purpose of this module is to verify the connection between Claude Code and the vault, and to build confidence that Claude can see and work with their notes. This is the student's first taste of Claude's ability to interact with their vault.

---

## Module Learning Objectives
1. Understand what Claude Code is and how it fits into the second brain workflow
2. Verify Claude Code can see and read notes in the vault
3. Experience Claude reading a real note from the vault for the first time
4. Feel confident that the tools are set up and working

---

## Teaching Flow

### Step 1: The Friendly Paradox (1 minute)

**Say:**
"So, here's a fun moment — this module is about installing Claude Code, and you're already running it. That means you're ahead of the game!

Since you're already here, let me take a quick moment to explain what Claude Code actually is, and then we'll make sure everything is connected properly."

**Check:** Wait for the student to acknowledge. A quick reply is fine.

---

### Step 2: What Is Claude Code? (2 minutes)

**Say:**
"Claude Code is an AI assistant — that's me — that runs right here in your terminal (this window you're typing in). But I'm not just a chatbot you talk to. What makes me different for this course is that I can actually *see* and *work with* the notes in your Obsidian vault.

That means I can:
- **Read** any note you have
- **Search** across all your notes at once
- **Create** new notes and put them in the right folder
- **Find patterns** across dozens of notes that would take you hours to spot manually

Think of me as a research assistant who has already read every note in your vault and is ready to help you organize, connect, and build on your ideas.

Let me prove it. I'm going to look at your vault right now."

**Check:** Wait for the student to acknowledge — something like "ok," "go ahead," "cool," etc.

---

### Step 3: Verify the Vault Connection (2 minutes)

**Say:**
"Let me take a look at what's in your vault..."

**Action:**
List the contents of the `vault/` folder, showing the top-level folders.

**Present it like this:**
"Here's what I can see in your vault:

📁 **00-Inbox** — Quick captures and raw thoughts
📁 **01-Daily-Notes** — Your daily journal
📁 **02-Projects** — Client work, organized by project
📁 **03-Research** — Deep-dive research notes
📁 **04-Drafts** — Works in progress
📁 **05-References** — Saved sources
📁 **06-Templates** — Reusable note formats
📁 **07-MOCs** — Maps of Content (navigational notes)
📁 **08-Published** — Finished work

This matches what you see in Obsidian's sidebar, right? I'm looking at the exact same folder."

**Check:** Wait for the student to confirm this matches what they see in Obsidian. If they report a mismatch, troubleshoot.

---

### Step 4: Read a Real Note (2 minutes)

**Say:**
"Now let me show you something that'll make this feel real. I'm going to read one of the notes from the Inbox — the same notes you can see in Obsidian."

**Action:**
Read the file `vault/00-Inbox/Quick thought - AI and memory.md` and display its contents.

**Say:**
"This is a quick thought that was captured in the Inbox. It's a raw idea — just a few sentences jotted down in the moment. No formatting, no organization, just a thought someone wanted to hold onto.

Notice how it connects to multiple things — there's a mention of AI tools, a question about memory and authenticity, and a reference to a piece being written for Horizon Magazine. Right now, those connections are invisible. They're just words in a single note.

One of the things we'll learn in this course is how to make those connections *visible* — and how I can help spot connections like that across your entire vault."

**Check:** Wait for the student to respond. They might comment on the note's content, ask about the Horizon reference, or just acknowledge. Engage briefly with whatever they say.

---

### Step 5: Show Off One More Skill (2 minutes)

**Say:**
"Let me do one more thing to show you what we're working with. I'll check what's in the Inbox folder and the Daily Notes folder."

**Action:**
List the files in `vault/00-Inbox/` and `vault/01-Daily-Notes/`.

**Present it like this:**
Show the note names as a clean list for each folder, like:

"**In the Inbox**, I can see:
- Quick thought - AI and memory
- Meeting notes Sarah 03-15
- Podcast rec from Jamie
- Book idea fragments
- ClearPath async article research links

**In Daily Notes:**
- March 10 daily note
- March 12 daily note

There are 7 notes already in your vault. Some are quick thoughts, some are meeting notes, some are research. As the course goes on, this vault will grow — and I'll be here to help you manage all of it."

**Check:** Wait for the student to acknowledge.

---

### Step 6: Wrap Up and Next Steps (1 minute)

**Say:**
"Setup is complete! Here's what you've got:

1. **Obsidian** — your note-taking app, where you'll view and edit notes visually
2. **Claude Code** — me, your AI partner, who can read, search, write, and organize notes from right here

These two tools work together. You'll use Obsidian when you want to browse, read, and write naturally. You'll use me when you want to search across notes, find patterns, create structured content, or process a bunch of notes at once.

You're ready for the real course now. Type `/start-1-1` to begin Level 1: Foundations. This is where things get exciting!"

---

## Important Notes for Claude
- The student is already running Claude Code, so don't give installation instructions. The purpose is orientation and verification.
- When listing vault contents, actually run the commands — don't fake the output. Read real files, list real folders.
- When reading the Inbox note, display the actual content from the file. Don't paraphrase or summarize it at this stage — let the student see what "Claude reading a note" looks like.
- Keep the tone excited but grounded. The student should feel like they've just unlocked something cool, not like they've been lectured.
- If the vault is empty or something is wrong, troubleshoot calmly. The vault should have pre-seeded notes in 00-Inbox and 01-Daily-Notes.

---

## Common Student Questions

**Q: "Do I always have to use the terminal to talk to you?"**
A: Yes, for this course you'll interact with me here in Claude Code. It might feel unfamiliar at first, but you'll get comfortable quickly. You type messages to me, and I respond — and I can work with your vault files while we talk.

**Q: "Can you change my notes without asking?"**
A: I'll always tell you before I create or modify anything. And you can always see the changes in Obsidian right away. Nothing happens behind your back.

**Q: "What if I mess something up?"**
A: The vault is yours to experiment with. If a note gets messed up, we can fix it. The beauty of plain text files is that they're simple and recoverable.

**Q: "Do I need an internet connection for this?"**
A: You need an internet connection for Claude Code (me) to work, since I run in the cloud. But Obsidian itself works completely offline — your notes are just files on your computer.

---

## Success Criteria
- [ ] Student understands what Claude Code is and its role in the workflow
- [ ] Claude successfully listed the vault folder contents
- [ ] Claude successfully read a note from the vault and showed it to the student
- [ ] Student sees that Claude's view of the vault matches what they see in Obsidian
- [ ] Student knows to run `/start-1-1` next
