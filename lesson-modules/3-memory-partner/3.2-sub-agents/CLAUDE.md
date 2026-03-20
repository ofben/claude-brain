# Module 3.2: Sub-Agents for Knowledge Work

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student about sub-agents — specialized versions of Claude that each bring a different lens to the student's work. This module introduces three agents (The Librarian, The Critic, The Connector) and demonstrates each one. The key insight is that different thinking modes produce different insights, and sub-agents let you switch between them on demand.

---

## Module Learning Objectives
1. Understand the concept of sub-agents and why specialized roles are more useful than generic assistance
2. Meet the three agents and understand what each one does
3. See each agent in action on real vault content
4. Know when to reach for which agent

---

## Teaching Flow

### Step 1: The Team Analogy (3 minutes)

**Say:**
"In the last module, you gave Claude deep context about your vault and your work. Now let's take that a step further. What if Claude could *switch hats* depending on what you need?

Think about what it's like to work with a team. When you finish a draft, you don't send it to the same person for every kind of feedback. You might show it to an editor for structural feedback, a fact-checker for accuracy, and a colleague for 'does this idea even make sense?' Each person brings a different lens — and you get better output because of it.

Sub-agents give you that same thing. They're specialized versions of Claude, each with a distinct role and personality. Instead of one generalist assistant, you get a team of specialists you can call on whenever you need a specific kind of thinking.

You have three agents set up and ready to go:

1. **The Librarian** — your vault organizer and health checker. Keeps everything in its right place.
2. **The Critic** — your thinking partner and draft reviewer. Challenges you to be sharper.
3. **The Connector** — your idea matchmaker. Finds hidden relationships between your notes."

**Check:** Wait for the student to acknowledge. If they ask how sub-agents work technically, explain: "They're just Claude with a specific set of instructions that shape how it approaches your request. Think of each one as a role Claude can step into."

---

### Step 2: Meet The Librarian (3 minutes)

**Say:**
"Let's start with The Librarian. This agent is like a helpful, slightly fussy librarian who wants every book on the right shelf. It scans your vault and looks for organizational issues — notes in the wrong folder, missing info blocks at the top of notes, broken links, inconsistent tags, and orphan notes that aren't connected to anything.

Let me show you exactly what it knows about its job."

**Action:**
```
Read .claude/agents/librarian.md
```

**Present it like this:**
Summarize the Librarian's personality, role, and what it looks for in your own words. Don't read the raw file — translate it into a conversational description. Highlight:
- It produces a "Vault Health Report"
- It prioritizes issues (critical, moderate, minor)
- It always suggests fixes but never moves things without asking
- It's great for weekly maintenance

**Say:**
"Think of running The Librarian like doing a weekly tidy-up. It catches the small things before they pile up — like a note about your ClearPath research that somehow ended up in the Inbox, or tags that aren't consistent across your vault."

**Check:** Wait for the student to acknowledge before continuing.

---

### Step 3: The Librarian in Action (5 minutes)

**Say:**
"Let's see what The Librarian thinks about the current state of your vault. I'll run a health check right now."

**Action:**
Adopt The Librarian's role as described in `.claude/agents/librarian.md`. Scan the vault by:
1. Listing all folders and their contents
2. Reading notes to check for frontmatter
3. Looking for orphan notes (no inbound or outbound links)
4. Checking for tag consistency
5. Identifying notes that might be in the wrong folder

Produce a Vault Health Report following the Librarian's output format. Be authentic — report real issues found in the vault. Common issues to look for:
- Inbox notes that could be categorized
- Notes missing frontmatter (date, tags, type)
- Empty project folders
- Inconsistent tag usage
- Missing links between related notes

**Say:**
"This is exactly the kind of check-up you'd want to run weekly. Takes a few minutes, catches things you'd never notice manually, and keeps your vault from slowly drifting into chaos. The Librarian is especially useful after a busy week when you've been dumping notes without organizing them."

**Check:** Wait for the student to review the health report and react. If they want to fix something immediately, help them — but note that the focus of this module is meeting the agents, not doing a full cleanup.

---

### Step 4: Meet The Critic (3 minutes)

**Say:**
"Next up: The Critic. Don't worry — this isn't a harsh reviewer who tears your work apart. Think of The Critic as that brilliant editor who pushes you to be better. The kind of person whose feedback makes you groan for a day, and then three days later you realize every comment was right.

The Critic reads your drafts and notes, finds logical gaps, unsupported claims, and missing perspectives. But it always starts with what's working, because understanding your strengths is just as important."

**Action:**
```
Read .claude/agents/critic.md
```

**Present it like this:**
Summarize the Critic's approach conversationally. Highlight:
- It starts with strengths before diving into critique
- It frames feedback as questions, not accusations
- It adapts its intensity to the stage of the work (light touch for rough notes, deeper for polished drafts)
- Its output includes: Strengths, Questions to Consider, Gaps and Assumptions, Suggestions for Strengthening, and One Thing to Protect

**Say:**
"The 'One Thing to Protect' section is my favorite part. When you're revising a draft, it's easy to accidentally kill the best part. The Critic tells you: 'Whatever you change, don't lose this.'"

**Check:** Wait for the student to acknowledge.

---

### Step 5: The Critic in Action (5 minutes)

**Say:**
"Let's put The Critic to work. I'll have it review one of the notes in your vault — let's try it on something with some real substance."

**Action:**
Read `vault/00-Inbox/Quick thought - AI and memory.md` and display its contents. Then adopt The Critic's role as described in `.claude/agents/critic.md`. Produce a structured critique following the Critic's output format. Be genuine — find real strengths and real gaps. Tailor the feedback to the note type (lighter touch for a quick thought, more rigorous for a draft). If the student's vault has a draft in `vault/04-Drafts/`, use that instead for a more rigorous critique.

**Say:**
"See how the feedback is specific and constructive? It's not 'this is bad' or 'this is good.' It's 'here's what's working, here are questions worth sitting with, and here's how to make it stronger.' Imagine running The Critic on your Horizon feature draft before submitting it to Sarah. You'd catch blind spots before she does."

**Check:** Wait for the student to react. Ask: "Can you see how this would be useful before sending a draft to a client?"

---

### Step 6: Meet The Connector (3 minutes)

**Say:**
"The last agent might be the most exciting one, especially for how you work. The Connector is a creative, associative thinker who sees links between seemingly unrelated ideas. It's like that friend who always says 'this reminds me of...' — and they're actually right.

This is especially relevant for you because your best work — and your newsletter The Synthesis — is all about connecting ideas across different domains. The Connector amplifies that strength by finding relationships you might not have spotted on your own."

**Action:**
```
Read .claude/agents/connector.md
```

**Present it like this:**
Summarize the Connector's approach. Highlight:
- It finds four types of connections: Direct Links, Bridges (non-obvious thematic links), Cross-Pollination (between projects), and Patterns
- It thinks in webs, not lists
- It's especially good at breaking out of project silos
- It will flag "The Unexpected One" — its single most surprising connection

**Say:**
"The 'Cross-Pollination' section is where the magic happens. That's where The Connector might notice that your research for the ClearPath async communication piece has ideas that could strengthen your Horizon article on AI writing tools. Or that a fleeting thought in your inbox connects to your book idea in a way you hadn't realized."

**Check:** Wait for the student to acknowledge.

---

### Step 7: The Connector in Action (5 minutes)

**Say:**
"Let's run The Connector on a note and see what hidden relationships it can find."

**Action:**
Read `vault/00-Inbox/Podcast rec from Jamie.md` and display its contents. Then adopt The Connector's role as described in `.claude/agents/connector.md`. Search the vault broadly — reading related notes in `vault/03-Research/`, `vault/02-Projects/`, and `vault/01-Daily-Notes/` — and produce a Connections Map following the Connector's output format. Focus on finding genuine, non-obvious connections between this note and the student's active projects and research.

**Say:**
"This is what cross-pollination looks like in practice. Ideas that were sitting in separate folders, attached to separate projects, are suddenly talking to each other. And these aren't forced connections — they're real thematic links that you can use in your work.

Next time you're stuck on a newsletter topic, try running The Connector on a few notes. It's like having a brainstorming partner who's read everything you've ever written."

**Check:** Wait for the student's reaction. This is often an exciting moment — let them sit with it.

---

### Step 8: Choosing the Right Agent (3 minutes)

**Say:**
"Now you know all three agents. Here's a quick guide for when to reach for each one:

**The Librarian** — when you want to tidy up. Run it weekly, or after a busy stretch of note-taking. It's your organizational conscience.

**The Critic** — when you want to sharpen your thinking. Run it on drafts before submitting to clients, on arguments you're building, or on any piece of writing where the stakes matter.

**The Connector** — when you want to discover. Run it when you're stuck, when you're looking for a newsletter angle, or when you suspect there are links between your projects that you're not seeing.

The power isn't in any single agent — it's in having different *modes of thinking* available on demand. Organize, critique, connect. Different lenses, different insights."

**Check:** Wait for the student to respond. Ask: "Which agent are you most excited to use in your actual work?"

---

### Step 9: Wrap-Up (2 minutes)

**Say:**
"You've just met your team. Three specialized agents that each bring something different to your knowledge work:

- The Librarian keeps your vault healthy and organized
- The Critic makes your thinking and writing sharper
- The Connector finds the hidden links between your ideas

In the next module, we're going to go deeper on how Claude reads your vault — not just individual notes, but searching, cross-referencing, and synthesizing across your entire collection of knowledge. When you're ready, type `/start-3-3`."

---

## Important Notes for Claude
- When demoing each agent, actually adopt that agent's role and personality as described in the agent file. Don't just describe what it would do — show it.
- Use real vault content for all demos. Read actual notes and produce genuine analysis.
- If the vault is sparse (few notes, empty folders), acknowledge this and note that the agents become more powerful as the vault grows.
- The student doesn't need to memorize agent names or commands — the point is understanding that different thinking modes exist.

## Common Student Questions
- **"How do I actually run a sub-agent?"** — You can ask Claude to "be The Librarian" or "run a vault health check" or "put on your Critic hat and review this draft." Claude will read the agent instructions and adopt that role.
- **"Can I customize the agents?"** — Absolutely! The agent notes are just instructions. You can edit them, add new sections, or adjust the personality to match your preferences.
- **"Can I create my own agents?"** — Yes! If you find yourself asking Claude for the same kind of help repeatedly, that's a sign you should create a new agent for it.
- **"Do agents remember previous runs?"** — Not between conversations. Each time you invoke an agent, it's a fresh start. But the vault itself is the memory — the agents read it every time.

## Success Criteria
- [ ] Student has been introduced to all three agents (Librarian, Critic, Connector)
- [ ] Each agent has been demonstrated on real vault content
- [ ] Student understands when to use each agent
- [ ] Student sees the value of different thinking modes for knowledge work
