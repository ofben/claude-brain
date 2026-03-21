# Module 4.6: Custom Slash Commands

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are showing the student how slash commands work — how they can explore the pre-existing ones, see how simple they are, and customize them. The student has been using `/start-X-X` commands throughout the course, so they already understand the concept of typing a command and having something happen. Now they'll learn those commands are just text files they can read and edit themselves. There are also four utility commands already waiting in the project. The "aha" moment is seeing how simple the command files are — and realizing they can make their own.

---

## Module Learning Objectives
1. Understand that slash commands are just text files in `.claude/commands/`
2. Explore four practical utility commands that are pre-built in the project
3. Test at least one command live and see it work
4. Customize an existing command and see the change take effect
5. Understand how to create custom commands for any workflow

---

## Teaching Flow

### Step 1: The Secret Behind Slash Commands (3 minutes)

**Say:**
"You've been typing `/start-4-1`, `/start-4-2`, and so on throughout this entire course. Every time, Claude reads the lesson and starts teaching. It feels like a built-in feature, right?

Here's the secret: those commands are just text files. Literally just notes with instructions in them, sitting in a folder called `.claude/commands/`. When you type `/start-4-1`, Claude reads the file `.claude/commands/start-4-1.md` and follows whatever instructions are in it. That's it. No magic, no special programming. Just a note that tells Claude what to do.

Which means... you can make your own. Any workflow you do repeatedly — creating daily notes, processing your inbox, reviewing your week — can become a single slash command."

**Check:** Wait for the student to react to the revelation that slash commands are just text files.

---

### Step 2: Commands Already Here (3 minutes)

**Say:**
"But here's a bonus: I didn't just leave you with the start commands. There are four utility commands already waiting in your project that we haven't used yet. Let me show you."

**Action:**
List the contents of `.claude/commands/` so the student can see all available commands. Then read `.claude/commands/daily.md` and display its full contents to the student.

**Say:**
"Look at that. It's just plain English. Step by step instructions telling Claude exactly what to do — check the date, see if a note already exists, create it with the right format if not, and mention anything helpful.

That's the whole command. No code, no syntax to memorize. You could write something like this yourself.

There are three more like it: `/weekly-review`, `/process-inbox`, and `/project-brief`. Each one is a text file just like this, already here and ready to use."

**Check:** Wait for the student to acknowledge they can see the command file.

---

### Step 3: Test /daily (3 minutes)

**Say:**
"Let's actually use it. I'll run `/daily` right now."

**Action:**
Execute the `/daily` command by following its instructions: get today's date, check if a daily note already exists at `vault/01-Daily-Notes/[today's date].md`, and create it if it doesn't exist. Show the student the result.

**Say:**
"Your daily note for today is ready. Open it in Obsidian — you'll see it in `01-Daily-Notes`. Notice the sections match your Daily Note Template exactly. One command, and your day is set up."

**Check:** Wait for the student to verify the daily note exists in Obsidian.

---

### Step 4: Explore /weekly-review (2 minutes)

**Action:**
Read `.claude/commands/weekly-review.md` and display its contents to the student.

**Say:**
"Same pattern — plain English steps. This one reads all your daily notes from the past week, synthesizes them, and creates a review note. It even asks what patterns emerged and what to focus on next.

Doing a weekly review manually means opening five or seven daily notes and trying to piece things together yourself — that's 20 to 30 minutes of effort. With this command, it's one word.

We can test this if you have daily notes from earlier modules. Would you like to try it?"

**Check:** Wait for the student to acknowledge. If they want to test it, run `/weekly-review` by following its instructions — find this week's daily notes, read them, and create a synthesis. Show the result in Obsidian.

---

### Step 5: The Other Two Commands (2 minutes)

**Say:**
"There are two more commands already in the project — I'll describe them without running them now.

**`/process-inbox`** reads everything in your Inbox and helps you triage it. It categorizes each note, suggests where it should go, and notices connections to other notes in your vault. Then it asks which ones you want to process and handles the filing. It's the capture-and-process workflow from Level 2, automated.

**`/project-brief`** gathers everything about a project from across your vault — project notes, daily note mentions, drafts, research — and gives you a complete summary. Super useful before a client call or when you need to get back into a project you haven't touched in a few days.

Both are just text files in `.claude/commands/`, same format as the others."

**Check:** Wait for the student to acknowledge.

---

### Step 6: Customize a Command (3 minutes)

**Say:**
"Now here's the powerful part — these are your commands. You can open them, read them, and change them. Let me show you."

**Action:**
Open `.claude/commands/daily.md`. Make a small customization to show how editing works — for example, add a `## Gratitude` section after `## What I Did Today`. Show the student the modified file. Then run `/daily` again (or describe what would happen if there's already a note for today) to show the change would take effect.

After demonstrating the customization, revert the change: restore `.claude/commands/daily.md` to its original state (remove the added section). Tell the student: "I'll put it back to the default for now — but you can customize yours anytime. Add sections, remove sections, change the frontmatter tags, change the language. It's just a text file."

**Say:**
"That's it. You just saw how to customize a command. Any change you make to the file changes what the command does next time you run it. You could add a gratitude section, a mood tracker, an energy level — whatever helps your daily reflection."

**Check:** Wait for the student to acknowledge the customization worked and that they understand they can edit these files.

---

### Step 7: Your Own Command (3 minutes)

**Say:**
"Now it's your turn to think creatively. What's a workflow you do regularly — or wish you could do more easily — that could become a slash command?

Here are some ideas to get you thinking:
- **`/brainstorm`** — Give Claude a topic and it generates ideas, pulling from your existing notes for inspiration
- **`/client-email`** — Draft a status update email based on recent project notes
- **`/reading-list`** — Gather all unread research notes into a reading queue
- **`/connect`** — Find surprising connections between recent notes and older ones
- **`/archive`** — Move completed project notes to Published and update all links

What resonates with you? What would make your daily vault work easier?"

**Check:** Wait for the student to share an idea. Engage with it genuinely:
- Validate the idea
- Describe how it would work as a slash command
- Offer to build it right now if it's straightforward
- If they want to build it, help them write the `.md` file together and save it to `.claude/commands/`

---

### Step 8: Wrap Up (1 minute)

**Say:**
"Excellent work! Here's what you now have:

- Four utility commands already in your project: `/daily`, `/weekly-review`, `/process-inbox`, `/project-brief`
- An understanding that every command is just a plain-English text file you can read, edit, and share
- The ability to create new commands for any workflow you can describe in words

Slash commands are the capstone of practical automation. Hooks run automatically in the background. Sub-agents bring specialized skills. And slash commands give you one-word access to complex workflows. Together, they turn your vault from a collection of notes into a system that works as fast as you can think.

One more module to go — the grand finale. Type `/start-4-7` to wrap up the course."

---

## Important Notes for Claude
- The four command files already exist in `.claude/commands/`. Do NOT create them during the lesson — read and display them.
- Test at least `/daily` live. `/weekly-review` testing is optional — it depends on whether the student has daily notes from earlier modules.
- When customizing `/daily` in Step 6, revert the change after the demo so the command matches the template for future use.
- If the student's custom command idea in Step 7 is straightforward, build it live with them.
- The description field in the frontmatter of command files shows up when the student lists available commands — point this out.
- Use non-technical language: "note" not "file", "folder" not "directory".

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

**Q: "Can a command accept input from me, like a project name?"**
A: Yes — the `/project-brief` command is an example. You type the command and include additional information, and Claude uses it. Commands can be as interactive as you want.

**Q: "Why are there already four utility commands here if we haven't built them in class?"**
A: They were pre-built for you so they're ready to use as soon as you clone the project. This module is about exploring and understanding them — and learning you can make more.

---

## Success Criteria
- [ ] Student has explored the pre-existing command files and seen how simple they are
- [ ] At least one command (`/daily`) has been tested live with real results
- [ ] Student has seen a command customized and understands they can edit them
- [ ] Student has brainstormed (and ideally built) their own custom command
- [ ] Student sees slash commands as simple text files they can create, edit, and share
- [ ] Student knows to run `/start-4-7` next
