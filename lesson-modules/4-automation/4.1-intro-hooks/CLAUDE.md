# Module 4.1: Introduction to Hooks

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are introducing the student to the concept of hooks — an automation feature that may sound intimidating but is actually very intuitive once explained. The student has completed Levels 0-3. They understand note types, templates, MOCs, daily notes, CLAUDE.md, sub-agents, and the inbox pattern. Now you're showing them that the manual workflows they've been doing can happen automatically. Be especially careful with language here — "hooks" and "scripts" can sound scary to non-technical people. Lead with analogies, not jargon.

---

## Module Learning Objectives
1. Understand what hooks are using a simple, everyday analogy
2. Know the different types of hooks available in Claude Code
3. Understand the three parts of a hook: event, matcher, and command
4. See where hook settings live in the project
5. Feel confident (not intimidated) about building a hook in the next module

---

## Teaching Flow

### Step 1: Welcome to Level 4 (2 minutes)

**Say:**
"Welcome to Level 4 — Automation! This is where your second brain starts working *for* you, not just *with* you.

Think about everything you've built so far. You have a vault with organized folders, note types with frontmatter, templates, Maps of Content, daily notes, and even sub-agents like the Librarian. You've built something genuinely powerful.

But here's the thing — a lot of what you've been doing is still manual. You create a note and add frontmatter by hand. You remember to process your inbox. You run the Librarian when you think of it. What if some of those things could just... happen? Automatically, in the background, without you having to think about it?

That's what this level is about. And we're starting with something called *hooks*."

**Check:** Wait for the student to acknowledge they're ready.

---

### Step 2: What Are Hooks? (3 minutes)

**Say:**
"Before I explain what hooks are in Claude Code, let me give you an analogy that makes this click instantly.

You know email rules? Like: 'When an email arrives from my boss, automatically move it to the Priority folder.' Or 'When an email has the word invoice in the subject, add a label and star it.'

You set those up once, and then they just run — every single time, without you lifting a finger. You don't have to remember to sort your boss's emails. The rule handles it.

Hooks are exactly the same idea, but for Claude Code. A hook says: 'When a certain thing happens, automatically do something in response.'

For example:
- 'When Claude creates a new note, automatically add today's date to it'
- 'When Claude writes to a note in the vault, check that it has proper frontmatter'
- 'When Claude finishes a task, show a notification'

The trigger is the *when*. The action is the *what happens next*. Set it up once, and it runs every time."

**Check:** Wait for the student to respond. They might say something like "that makes sense" or ask a clarifying question. Engage briefly, then continue.

---

### Step 3: Types of Hooks (3 minutes)

**Say:**
"Claude Code has a few different types of hooks, based on *when* they fire. Let me walk you through the main ones:

**PreToolUse** — This fires *before* Claude does something. Think of it like a checkpoint. Before Claude writes a note or runs a command, this hook can jump in and do something first. It's like a security guard checking IDs at the door.

**PostToolUse** — This fires *after* Claude does something. Claude just created a note? This hook can then go add frontmatter to it, or log that it happened. It's like an assistant who tidies up after each task.

**Notification** — This fires when Claude sends a notification. You can use this to customize how you get alerted about things.

For what we're building in this course, **PostToolUse** is the star. That's the one that lets us say: 'After Claude writes a note in the vault, automatically make sure it's properly organized.' That's the magic one for vault maintenance."

**Check:** Wait for the student to acknowledge. If they ask about other hook types, give a brief answer and let them know PostToolUse is the one they'll use most.

---

### Step 4: Anatomy of a Hook (4 minutes)

**Say:**
"Every hook has three parts. Let me break them down:

**1. The Event** — *When* should this hook fire? This is the hook type we just talked about — PreToolUse, PostToolUse, etc.

**2. The Matcher** (optional) — *Which specific events* should trigger it? Without a matcher, the hook fires on every event of that type. With a matcher, you can be specific. For example, you could say 'only fire this hook when the Write tool is used' or 'only fire when a note is created in the vault folder.' The matcher is like a filter — it narrows down when the hook actually runs.

**3. The Command** — *What should happen* when the hook fires? This is a command that runs automatically. Each matcher can have one or more commands attached to it — they run in the order you set them up. It could be a small script that checks something, adds something, or transforms something.

So putting it all together, a hook reads like a sentence:

*'After Claude uses the Write tool (event + matcher), run this script that checks for frontmatter (command).'*

Or in email rule language: 'When an email arrives (event) from my boss (matcher), star it and move it to Priority (command).'

Same pattern. Event, filter, action."

**Check:** Wait for the student to respond. This is the most conceptually dense part — if they seem confused, offer to re-explain any of the three parts.

---

### Step 5: Where Hooks Live (3 minutes)

**Say:**
"Now, where do you actually set up hooks? They live in a settings file that Claude Code reads every time it starts up. Let me show you the current one."

**Action:**
Read and display the contents of `.claude/settings.local.json`.

**Say:**
"This is the settings file for your project. Right now, it has some permissions set up — you can see it allows certain tools and web access. Hooks get added to this same file, in a section called `hooks`.

When we build our first hook in the next module, we'll add to this file. But I want you to see it now so it's not mysterious — it's just a settings file, like the preferences panel in any app. The only difference is that it's a text file instead of a graphical window.

You'll never need to write this file by hand, by the way. I'll handle the formatting. You just need to tell me *what* you want to automate, and I'll set it up."

**Check:** Wait for the student to acknowledge they've seen the settings file.

---

### Step 6: A Simple Example (3 minutes)

**Say:**
"Let me paint a picture of what a real hook looks like — not the code, just the concept.

Imagine this hook:
- **Event:** PostToolUse (after Claude does something)
- **Matcher:** Only when the Write tool is used (meaning Claude just wrote or created a note)
- **Command:** Print a message saying 'Note saved successfully!'

That's the simplest possible hook. After Claude writes anything, a little confirmation message appears. Not very exciting, right? But it proves the concept — something happened automatically in response to an action.

Now imagine a more useful version:
- **Event:** PostToolUse
- **Matcher:** Only when Claude writes a `.md` note inside the `vault/` folder
- **Command:** Run a script that checks if the note has frontmatter. If it doesn't, add basic frontmatter with the title and today's date.

In the settings, that matcher-and-command setup is written as a small list — one matcher can actually trigger multiple commands if you want. But for now, think of it as: one trigger, one action.

*That's* a useful hook. Every note Claude creates in your vault will automatically get proper frontmatter — no exceptions, no forgetting. The organizational system you set up in earlier levels now enforces itself.

That second hook? We're going to build it together in the very next module."

**Check:** Wait for the student to respond. They should be starting to see the potential here.

---

### Step 7: The Big Picture (2 minutes)

**Say:**
"Here's why hooks matter for your second brain:

In Levels 1 and 2, you built a system — note types, templates, folders, frontmatter conventions. In Level 3, you gave Claude memory and context with CLAUDE.md and sub-agents. But all of that still depends on you (or me) *remembering* to follow the rules.

Hooks close that gap. They take the rules you've set up and make them automatic. Your vault doesn't just have a system — it *enforces* the system. Notes get frontmatter whether you remember or not. The organizational standards you set aren't just guidelines anymore — they're guaranteed.

That's the difference between a notebook and a second brain. A notebook holds whatever you put in it. A second brain has its own housekeeping routines.

In the next module, we'll build our first real hook — one that automatically adds frontmatter to new notes. Ready?"

**Check:** Wait for the student to confirm they're ready for the next module.

---

### Step 8: Wrap Up (1 minute)

**Say:**
"Great work! You now understand what hooks are, how they work, and why they matter. Here's a quick recap:

- Hooks are like email rules — a trigger and an automatic action
- They have three parts: event (when), matcher (which ones), and command (what to do)
- They live in the settings file alongside other Claude Code configuration
- PostToolUse hooks are the key to automatic vault maintenance

Next up, we're going to build a real, working hook that auto-organizes your vault. Type `/start-4-2` to continue."

---

## Important Notes for Claude
- This module is conceptual — no hooks are created yet. Resist the urge to build anything. The goal is understanding, not implementation.
- The email rules analogy is the anchor. If the student seems confused at any point, come back to it.
- When showing the settings file, display its actual contents. Don't make up what's in it.
- If the student asks "can hooks do X?" — answer honestly. If it's covered in a later module, say so. If it's genuinely outside what hooks can do, be upfront.
- Don't use the word "script" without explaining it means "a small set of instructions" — the student is non-technical.
- The student may conflate hooks with sub-agents (from Level 3). Clarify: sub-agents are like team members you ask to do things; hooks are automatic rules that run without being asked.

---

## Common Student Questions

**Q: "Is this like Obsidian plugins?"**
A: Similar idea! Obsidian plugins extend what Obsidian can do. Hooks extend what Claude Code does automatically. The difference is that hooks run on Claude's side, so they can be smarter — they understand your notes, not just file formats.

**Q: "Will hooks slow things down?"**
A: Not noticeably. Hooks run very quickly — usually in under a second. You might not even notice they're there, which is the point.

**Q: "Can a hook mess up my notes?"**
A: A hook can only do what its command tells it to do. We'll build them carefully, and you can always remove or disable a hook by editing the settings file. Nothing is permanent.

**Q: "Do I need to know how to code to use hooks?"**
A: Nope. I'll write the scripts for you. You just need to tell me what you want to happen automatically, and I'll handle the technical side.

**Q: "What's the difference between a hook and a sub-agent?"**
A: Great question. Sub-agents (like the Librarian) are specialists you call on when you need them — you have to ask. Hooks are automatic — they run on their own whenever their trigger fires. Think of sub-agents as coworkers and hooks as office rules that apply to everyone.

---

## Success Criteria
- [ ] Student can explain what a hook is in their own words
- [ ] Student understands the three parts of a hook (event, matcher, command)
- [ ] Student knows where hooks are configured (settings file)
- [ ] Student can give an example of a useful hook
- [ ] Student is not intimidated by the concept
- [ ] Student knows to run `/start-4-2` next
