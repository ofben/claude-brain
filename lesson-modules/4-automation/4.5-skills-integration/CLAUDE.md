# Module 4.5: Claude Code Skills

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role

You are introducing Claude Code skills — a way to teach Claude new abilities. The student has not yet covered custom slash commands (coming in Module 4.6) and has already met sub-agents (Module 3.2). Skills complete the trio. Your tone should make skills feel powerful but approachable: "You've given Claude tools and roles. Now you're teaching Claude new abilities." The three-part framing (commands = tools, agents = roles, skills = abilities) should thread through the entire module. The canvas demo (Step 4) is the "wow" moment — build anticipation.

---

## Module Learning Objectives

1. Understand how skills differ from commands and agents
2. See what the obsidian-skills plugin provides
3. Experience two skills in action (markdown and canvas)
4. Build a custom skill from scratch
5. See the complete extension ecosystem (commands + agents + skills)

---

## Teaching Flow

### Step 1: The Three Ways to Extend Claude (4 minutes)

**Say:**
"Welcome to Module 4.5. We're going to do something different today. You've been using Claude Code throughout this course — giving it instructions, building slash commands, setting up the Librarian, Critic, and Connector agents. Today you're going to see the third and final way to extend what Claude can do.

Here's the mental model I want you to walk away with:

**Commands are tools in a toolbox.** They're step-by-step recipes you trigger manually. When you type `/daily`, Claude follows a specific set of instructions to help you capture the day. When you type `/start-1-1`, it reads a script and begins teaching. These `/start` commands you've been typing throughout this course? Those are recipes — step-by-step instructions that tell Claude exactly what to do. That's exactly what commands are for.

**Agents are roles Claude can play.** The Librarian, Critic, and Connector from Module 3.2 are agents — specialized personalities with different areas of expertise. The Librarian is methodical and organizational. The Critic is rigorous and challenging. The Connector is playful and associative. Agents don't run on a trigger — they *become* Claude for the duration of that conversation.

**Skills are abilities Claude can learn.** This is the new one. A skill is knowledge and behavior that Claude absorbs and applies when it's relevant. Skills feel less like tools you pick up and more like things Claude simply *knows*.

The key distinction: commands only run when you type them. Skills can be loaded automatically when Claude notices they're relevant. That's what makes skills feel like learned abilities rather than instructions you hand over.

Think of it this way: giving someone a recipe card is different from them becoming a trained chef. The recipe tells them what to do step by step. A skill means they just *know* how to cook — and they bring that knowledge to everything they do in the kitchen.

Under the hood, a skill is just a note in a folder. The note describes what the ability is and when to use it. That's it — Claude reads the note and gains the ability. You'll see exactly what this looks like in a few minutes."

**Check:** "Before we go further — can you summarize in your own words the difference between commands, agents, and skills? Just a sentence or two. I want to make sure the mental model is clicking before we jump into the hands-on work."

---

### Step 2: The obsidian-skills Plugin (3 minutes)

**Say:**
"There's someone named Steph Ango who runs Obsidian — he created a set of skills specifically designed for working with Obsidian vaults. These skills teach Claude about Obsidian's unique formats: wikilinks, embeds, canvas files, the special info block at the top of notes. The kinds of things you've been using throughout this course, but which Claude now knows formally.

Your project already has these skills installed. Let me show you what's available."

**Action:**
1. List the contents of `.claude/skills/` to show what's installed
2. Present the five installed skills like this:

**Present it like this:**
"Here's what's in your skills folder right now:

- **obsidian-markdown** — Teaches Claude proper Obsidian-flavored Markdown: `[[wikilinks]]`, `![[embeds]]`, callout blocks, and the info block at the top of notes
- **json-canvas** — Teaches Claude to create visual canvas files you can open in Obsidian
- **obsidian-bases** — Teaches Claude about Obsidian's database views feature
- **obsidian-cli** — Teaches Claude to use Obsidian's command-line tools
- **defuddle** — Teaches Claude to extract clean content from web pages

These skills are already available in your project. Let's see two of them in action."

**Check:** "Got it? Take a moment to look at that list. Any of those jump out as something you'd want to explore? Let me know when you're ready to see the first demo."

---

### Step 3: Skill Demo 1 — Obsidian Markdown (5 minutes)

**Say:**
"The obsidian-markdown skill teaches Claude everything about how Obsidian formats notes differently from regular Markdown. We're talking about `[[wikilinks]]` instead of regular links, `![[embeds]]` to pull content from other notes into a note, callout blocks that render as highlighted boxes with icons, and the info block at the top of every note (those properties with tags, dates, and other metadata you've been adding throughout the course).

You've been using all of these since Module 1. Now Claude formally *knows* about them — not just from context, but as learned abilities it carries into every vault-related task."

**Action:**
1. Read `.claude/skills/obsidian-markdown/SKILL.md` to load the skill
2. Paraphrase what the skill covers for the student — something like: "This skill is quite detailed. It covers internal links using the `[[wikilink]]` format, how to embed notes and images using `![[embed]]`, every type of callout block (note, tip, warning, important, and more), and the complete format for the info block at the top of notes with all property types."
3. Create a note at `vault/00-Inbox/Skills Demo Note.md` with this content:

```markdown
---
tags:
  - inbox
  - skills-demo
---

# Skills Demo Note

This note was created to demonstrate how the obsidian-markdown skill works.

> [!tip] What you're seeing
> This callout block is Obsidian-specific syntax. The obsidian-markdown skill taught Claude how to format it correctly. Without the skill, Claude might use a plain blockquote or format it incorrectly.

Here's a connection to another note in the vault: [[Tools for Thought History]]

And here's what it looks like to embed a note:

![[Tools for Thought History]]

The obsidian-markdown skill is what ensures these formats are correct every time Claude touches a vault note.
```

**Say:**
"See how Claude created that note with proper `[[wikilinks]]`, a callout block, and the info block at the top? That's because the obsidian-markdown skill taught Claude exactly how Obsidian expects these things to look. Without the skill, Claude might use regular Markdown links instead of wikilinks, or miss the specific syntax for a callout. With the skill, it just *knows*."

**Check:** "Open the note in Obsidian — you'll find it in your Inbox folder, named 'Skills Demo Note.' Do you see the wikilink to 'Tools for Thought History', the green tip callout box, and the info block at the top? Let me know when you've had a look."

---

### Step 4: Skill Demo 2 — The Canvas (7 minutes)

**Say:**
"Now for something you haven't seen before. I've been saving this one.

Obsidian has a feature called Canvas — it lets you create visual maps where ideas are cards you can move around and connect with lines. It's like a digital whiteboard built right into your vault. You can put notes on it, connect them with arrows, add labels to the connections.

The json-canvas skill teaches Claude how to create these canvas notes. And I want to make one with you right now — Alex's project map."

**Action:**
1. Read `.claude/skills/json-canvas/SKILL.md` to load the skill
2. Briefly show the student what the skill covers: "This skill teaches Claude the JSON Canvas format — specifically, how to define nodes (the cards), position them on a canvas, give them colors, and create edges (the connecting lines with labels). It's precise technical knowledge that would take time to figure out manually."
3. Create the file `vault/07-MOCs/Alex Project Map.canvas` with this exact JSON content:

```json
{
  "nodes": [
    {"id": "1", "type": "text", "text": "**Horizon Magazine**\nAI Writing Partner\nDue: March 28", "x": -300, "y": -100, "width": 220, "height": 100, "color": "1"},
    {"id": "2", "type": "text", "text": "**Bloom Studio**\nDigital Boundaries Series\nDue: March 27", "x": 100, "y": -100, "width": 220, "height": 100, "color": "3"},
    {"id": "3", "type": "text", "text": "**ClearPath**\nAsync Communication\nDue: March 25", "x": -300, "y": 120, "width": 220, "height": 100, "color": "4"},
    {"id": "4", "type": "text", "text": "**The Synthesis**\nNewsletter Draft\nEvery other Saturday", "x": 100, "y": 120, "width": 220, "height": 100, "color": "2"}
  ],
  "edges": [
    {"id": "e1", "fromNode": "1", "toNode": "4", "label": "AI + writing themes"},
    {"id": "e2", "fromNode": "2", "toNode": "4", "label": "Digital wellness angle"},
    {"id": "e3", "fromNode": "3", "toNode": "4", "label": "Knowledge tools theme"},
    {"id": "e4", "fromNode": "1", "toNode": "3", "label": "Tech-changing-cognition thread"}
  ]
}
```

CRITICAL: The file extension MUST be `.canvas`, NOT `.md`. Obsidian only renders it as an interactive canvas with the correct extension. This is the one exception to the course's all-notes-use-.md rule.

**Say:**
"Open Obsidian and navigate to the **07-MOCs** folder. You should see a note called 'Alex Project Map' with a small canvas icon — click on it."

**Present it like this:**
"Here's what you'll see: four colored cards arranged in a grid — one for each of Alex's projects. The red card is Horizon Magazine (AI Writing Partner, due March 28). The yellow-green card is Bloom Studio (Digital Boundaries series, due March 27). The blue card is ClearPath (Async Communication, due March 25). And the green card at the center of the connections is The Synthesis newsletter.

The lines connecting the cards show how ideas flow between Alex's projects: Horizon's AI writing research feeds directly into The Synthesis newsletter. Bloom's digital wellness angle finds its way in too. ClearPath's knowledge tools theme closes the loop. And there's even a direct thread between Horizon and ClearPath — both involve technology changing how people think.

This is Alex's whole creative ecosystem, visible at a glance."

**Say:**
"Remember the Connector agent from Module 3.2? The Connector's whole job is to find hidden relationships between your notes and ideas. This canvas is *showing* those connections visually. The Connector finds them. The json-canvas skill draws them. That's the power of combining different kinds of extensions — tools, roles, and abilities working together.

If the canvas doesn't open automatically, right-click the note and choose 'Open as Canvas.'"

**Check:** "Can you see the four colored project cards and the lines connecting them? Take a moment to move the cards around — you can drag them. Let me know what you think when you've had a look."

---

### Step 5: Build Your Own Skill — Weekly Digest (5 minutes)

**Say:**
"You've now seen what skills installed from a plugin look like. Let's look at one you've built yourself — or rather, one that's already been created for your vault and is ready to use.

Remember: a skill is just a folder with a note inside it. The note describes the ability. Let's look at one together."

**Action:**
1. Read `.claude/skills/weekly-digest/SKILL.md` and display its contents to the student
2. Walk through each part of the note:
   - "The `name:` at the top tells Claude what to call this skill — you can also trigger it with `/weekly-digest`"
   - "The `description:` is what Claude reads to understand when this skill applies. It's like a job description for the ability."
   - "The `allowed-tools:` section limits what Claude can use during this skill — in this case, reading and searching notes, nothing else."
   - "And below that are the plain instructions telling Claude exactly how to produce the digest — scan the vault, find recent notes, and format them into a summary."

**Say:**
"Notice how this skill lives in `.claude/skills/weekly-digest/` — right alongside the obsidian-skills you saw earlier. Plugins add skills from outside; you create your own right here in the same folder. Same format, same place, same power.

Here's something worth appreciating: these `/start` commands you've been using throughout the course? Those are recipes — step-by-step instructions that tell Claude exactly what to do, triggered by you typing the command. That's exactly what commands are for.

Skills are different. The weekly-digest skill doesn't give Claude a recipe — it gives Claude the *ability* to produce a digest whenever you ask. And this ties forward to the custom commands you'll build in the next module: skills and commands work together, each doing what they do best."

**Action:**
Ask Claude to produce a weekly digest by invoking the skill. Say something like: "Ask me to generate your weekly digest by saying 'generate my weekly digest' or by typing `/weekly-digest`."

Wait for the student to invoke the skill. When they do, read the relevant vault notes and produce a formatted weekly digest following the skill's instructions.

**Check:** "You just saw a custom skill in action — one that lives right in your vault, alongside the plugin skills. Does the digest format make sense? Does it surface anything interesting from your notes this week? Let me know when you're ready for the big-picture recap."

---

### Step 6: The Extension Ecosystem (3 minutes)

**Say:**
"Let's zoom out and look at the complete picture. You've now used all three ways to extend Claude, and they've all been living in your project this whole time."

**Present it like this:**

| Extension | What it is | Your examples |
|-----------|-----------|---------------|
| **Commands** (tools) | Step-by-step recipes you trigger manually | The `/start` commands, `/daily`, `/weekly-review` (coming next module) |
| **Agents** (roles) | Specialized personalities with distinct expertise | The Librarian (organizer), Critic (reviewer), Connector (link-finder) |
| **Skills** (abilities) | Knowledge Claude applies when relevant | obsidian-markdown, json-canvas, your weekly-digest |

**Say:**
"Your Librarian, Critic, and Connector from Module 3.2? Those are agents — roles Claude can step into. The obsidian-markdown and json-canvas skills? Those are abilities Claude has learned. And the slash commands? Those are tools in your toolbox.

Each extension type is good at something different. Commands are perfect for repeatable workflows — when you want the same process to run the same way every time. Agents are perfect when you need a specific perspective — a different way of thinking about your work. Skills are perfect when Claude needs to *know* something new — when you want that knowledge to be available automatically, not just when you remember to ask.

The beautiful thing is they work together. You could write a command that asks the Connector agent to find links between notes, and the obsidian-markdown skill ensures those links are formatted perfectly for Obsidian. Tools, roles, and abilities — a team.

This is your creative toolkit. It started with a vault and some notes. Now it has a team of specialized agents, a library of abilities, and a growing collection of custom workflows. And next module, you're going to add the final piece: building your own custom slash commands to turn your most common workflows into single-word actions."

**Check:** "How does it feel to see the whole ecosystem laid out? Does the tools/roles/abilities framing make sense now that you've seen them all in action? Any questions before we wrap up?"

**Say:**
"Type `/start-4-6` to continue to the next module — Custom Slash Commands."

---

## Common Student Questions

**"What's the difference between a skill and a command again?"**
Commands are recipes: step-by-step instructions that tell Claude exactly what to do in a specific order. You trigger a command by typing it. Skills are abilities: knowledge Claude carries with it. A skill can be loaded automatically when Claude notices it's relevant — you don't have to ask. The key difference is that commands are procedural (do this, then this, then this) while skills are knowledge-based (Claude now knows how to do something).

**"Can I make more skills?"**
Absolutely. Any ability you want Claude to have, write it as a note and put it in a folder under `.claude/skills/`. The folder name becomes the skill name. Start with the description (when should this skill apply?) and the instructions (what should Claude do with it?). That's all it takes.

**"Do skills work in other projects?"**
Yes. Skills live in your project's `.claude/skills/` folder, which means they travel with the project. If you copy a skill folder to another project, Claude gains that ability there too. You're building a personal library of abilities.

**"What if a skill conflicts with a command?"**
They serve different purposes and coexist fine. You could have both a `/weekly-digest` command (step-by-step recipe) and a weekly-digest skill (background knowledge). The command gives structured instructions; the skill gives flexible knowledge. If both exist, they complement each other.

**"Can Claude load skills automatically without me asking?"**
Yes — that's actually the key feature that makes skills different from commands. Claude reads skill descriptions and can decide to apply a skill when it's relevant. But for the weekly-digest skill, there's a setting (`disable-model-invocation: true`) that keeps it manual. This means Claude won't spontaneously start generating digests when you mention "this week" in conversation. Once you're comfortable with how skills work, you can remove that setting and let Claude decide when to use it.

**"Why does the canvas note use .canvas instead of .md?"**
Canvas is Obsidian's visual format — it's not a Markdown note, it's a JSON structure describing nodes and edges. Obsidian only renders it as an interactive canvas when the file has the `.canvas` extension. It's the one exception to the course's all-notes-use-.md rule, and it's why the json-canvas skill specifically teaches Claude to use the right extension.

---

## Success Criteria

- [ ] Student can explain the difference between commands, agents, and skills
- [ ] Student has seen the obsidian-markdown skill create a properly formatted vault note
- [ ] Student has seen the json-canvas skill create a visual project map in Obsidian
- [ ] Student has a working weekly-digest custom skill in `.claude/skills/`
- [ ] Student understands that skills can be loaded automatically (unlike commands)
- [ ] Student can name which of their three agents (Librarian, Critic, Connector) are agents vs skills
- [ ] Student knows to run `/start-4-6` next

---

## Important Notes for Claude

- The skills/ folder was pre-installed as part of the course setup. The Action in Step 2 shows the student what's available — it does not perform a live install. Present it as "here's what's already in your project."
- The weekly-digest skill at `.claude/skills/weekly-digest/SKILL.md` was also pre-created. The Action in Step 5 reads and displays it, then tests it. The student learns the pattern by examining and using, not by typing frontmatter from scratch.
- The canvas demo is the emotional peak of the module. Take a moment after the student opens the canvas in Obsidian — let them explore before moving on. This visual moment is what makes the module memorable.
- The three-part framing (commands/agents/skills = tools/roles/abilities) should feel natural and recurring, not like a forced mnemonic. It appears in Step 1, gets reinforced in Step 5 (commands vs skills distinction), and lands fully in Step 6's summary table.
- Canvas file extension is `.canvas`, not `.md`. This is the one exception to the course's file convention. The Action block in Step 4 is explicit about this.
