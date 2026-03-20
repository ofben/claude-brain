# Module 4.4: MCP Tools for Your Vault

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are introducing MCP (Model Context Protocol) to a non-technical student. MCP is a powerful concept but the name is intimidating. Your job is to make it feel simple: MCP lets Claude use external tools — like fetching web pages, accessing services, or pulling in information from outside the vault. Focus on the practical application: turning a URL into a proper research note. If WebFetch is available, do a live demo. If not, walk through the workflow with a hypothetical article and create a sample note. Either way, the student should leave understanding what MCP enables and seeing a concrete result in their vault.

---

## Module Learning Objectives
1. Understand what MCP is in plain, non-technical terms
2. See how MCP extends Claude's capabilities beyond the local vault
3. Walk through (or experience live) the URL-to-research-note workflow
4. Understand where MCP tools are configured
5. Imagine other MCP possibilities for knowledge work

---

## Teaching Flow

### Step 1: What Is MCP? (3 minutes)

**Say:**
"So far, everything we've done has been inside your vault — organizing notes, linking them, scanning for issues. Your vault is powerful, but it's also self-contained. What if Claude could reach *outside* the vault to pull in new knowledge?

That's what MCP does. MCP stands for Model Context Protocol, but forget the name — here's what it actually means:

**MCP lets Claude use external tools.** It's like giving Claude hands that can reach out into the world.

Without MCP, Claude can only work with what's already on your computer. With MCP, Claude can:
- **Fetch a web page** and read its contents
- **Access external services** like calendars, task managers, or databases
- **Pull in fresh information** from outside sources

Think of it like this: your vault is your home library. MCP is Claude's ability to go to *other* libraries, photocopy the relevant pages, and bring them back to file in your collection.

The most useful MCP tool for knowledge work? Web fetch — the ability to grab an article from the internet and turn it into a proper research note in your vault."

**Check:** Wait for the student to acknowledge they understand the concept.

---

### Step 2: The URL-to-Research-Note Workflow (3 minutes)

**Say:**
"Let me describe a workflow that shows why this is so powerful for someone like Alex Rivera.

Imagine you're scrolling through your feeds and you find an amazing article about the future of AI-assisted writing. It's directly relevant to the Horizon Magazine piece you're working on. In the old world, you'd either:

1. Bookmark it and forget about it
2. Copy-paste the URL into a note with no context
3. Spend 20 minutes reading it and manually writing up a summary

With MCP and your vault, the workflow becomes:

1. You give Claude the URL
2. Claude fetches the article and reads it
3. Claude creates a research note with: the source, a summary, key takeaways, relevant quotes, and links to related notes already in your vault
4. The note goes into `03-Research/` with proper frontmatter, tags, and links

One URL in, one organized research note out. No bookmarks that collect dust. No context-free links. A real, connected piece of knowledge added to your vault.

Let me show you what this looks like."

**Check:** Wait for the student to acknowledge. They might be excited about this workflow.

---

### Step 3: Live Demo or Walkthrough (8 minutes)

**Action:**
First, check if the WebFetch tool is available by attempting to use it. If it is, proceed with the live demo path. If not, proceed with the walkthrough path.

**--- Live Demo Path (if WebFetch is available) ---**

**Say:**
"Good news — I have the ability to fetch web pages. Let's do this live.

Do you have a URL to an article you've been meaning to read? Something related to AI tools, writing, creative workflows, or any of the topics Alex works on. If you don't have one handy, I can use a default article."

**Check:** Wait for the student to provide a URL or ask you to use a default.

**Action (if student provides a URL):**
Use WebFetch to retrieve the article content. Then create a research note at `vault/03-Research/[appropriate title].md` with:

```markdown
---
title: "[Article Title]"
date: [today's date]
tags: [research, literature-note, [relevant topic tags]]
source: "[URL]"
type: literature-note
---

# [Article Title]

**Source:** [URL]
**Author:** [if available]
**Date read:** [today's date]

## Summary
[2-3 paragraph summary of the article]

## Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]
- [Takeaway 4]

## Relevant Quotes
> "[Notable quote from the article]"

> "[Another notable quote]"

## Connections to My Work
- Related to [[AI Writing Partner - Brief]] — [how it connects]
- [Any other connections to existing vault notes]

## My Thoughts
[Brief note about why this matters for the student's work]
```

**Say:**
"Done! I just fetched that article, read through it, and created a proper research note in your vault. Open `03-Research` in Obsidian and take a look.

Notice what's in there: a summary so you don't have to re-read the whole article, key takeaways you can reference quickly, relevant quotes you might use in your writing, and — here's the second-brain part — connections to notes already in your vault. This isn't just a bookmark. It's knowledge that's been woven into your existing thinking."

**--- Walkthrough Path (if WebFetch is NOT available) ---**

**Say:**
"The web fetch tool isn't set up in this session, but I want you to see exactly what this workflow produces. Let me walk through it with a hypothetical article and create a real research note so you can see the end result.

Imagine you just read an article called 'The Rise of AI Co-Writing: How Machines and Humans Create Together.' It was published this month and covers exactly the kind of territory Alex is exploring for the Horizon Magazine piece."

**Action:**
Create a research note at `vault/03-Research/The Rise of AI Co-Writing.md` with:

```markdown
---
title: "The Rise of AI Co-Writing: How Machines and Humans Create Together"
date: 2026-03-20
tags: [research, literature-note, AI, writing, collaboration]
source: "https://example.com/ai-co-writing-2026"
type: literature-note
---

# The Rise of AI Co-Writing: How Machines and Humans Create Together

**Source:** https://example.com/ai-co-writing-2026
**Author:** Marina Torres
**Date read:** 2026-03-20

## Summary
A comprehensive look at how professional writers are integrating AI tools into their creative process in 2026. The article moves beyond the hype cycle to examine real workflows — from novelists using AI for brainstorming to journalists using it for research synthesis. The key finding: writers who treat AI as a collaborator (rather than a replacement or a threat) report higher productivity without sacrificing voice or originality.

The piece also addresses the authenticity question head-on, interviewing writers who are transparent about their AI use and exploring how readers are responding. The consensus: what matters is the quality of the final work and the honesty about the process, not whether AI touched it.

## Key Takeaways
- Writers using AI as a "thinking partner" report 30-40% faster first drafts
- The biggest productivity gains come from research synthesis and brainstorming, not actual prose generation
- Voice and style remain distinctly human — AI helps with structure, humans provide soul
- Transparency about AI use is becoming an industry norm, not a controversy
- The tools are only as good as the creative direction — AI amplifies intention, it doesn't replace it

## Relevant Quotes
> "The best AI-assisted writing doesn't read like AI writing. It reads like a writer who had a really good research assistant."

> "I don't use AI to write for me. I use it to think with me. The difference is everything."

## Connections to My Work
- Directly relevant to [[AI Writing Partner - Brief]] — supports the "middle ground" angle Sarah wants
- The "thinking partner" framing connects to [[Quick thought - AI and memory]] — the idea of AI as memory extension
- The transparency angle could work for [[Digital Boundaries Series - Overview]] — digital authenticity

## My Thoughts
This article validates the approach I'm taking with the Horizon piece. The "co-writing" framing is better than "AI writing" — it centers the human. I should interview someone who uses this collaborative approach for the article. The quote about research assistants is gold — might use it as an epigraph or in the opening section.
```

**Say:**
"There it is. Open `03-Research` in Obsidian and you'll see the new note: 'The Rise of AI Co-Writing.'

Even though I walked through this with a hypothetical article, the note is real and it's in your vault. Look at what it contains:

- **A summary** so you never have to re-read the full article to remember what it said
- **Key takeaways** pulled out for quick reference
- **Relevant quotes** you might want to use in your own writing
- **Connections to your existing notes** — see how it links to the Horizon Magazine brief, to that quick thought about AI and memory, and to the Bloom Studio project? Those connections are the second-brain part. This note isn't an island. It's already part of your web of knowledge.
- **Your own thoughts** — a space for your reaction, not just the source material

This is what it looks like when every article you read becomes a permanent, connected part of your thinking."

**Check:** Wait for the student to review the note in Obsidian and respond. This is often an impressive moment — the note is thorough and immediately useful.

---

### Step 4: Where MCP Tools Are Configured (3 minutes)

**Say:**
"You might be wondering: where does the web fetch ability come from? MCP tools are configured in the same settings file where we set up hooks. Let me show you."

**Action:**
Read and display `.claude/settings.local.json`.

**Say:**
"You can see in the permissions section there are some entries for `WebFetch`. That's what allows Claude to reach out to the web. MCP tools get added to this settings file — each one gives Claude a new ability.

Some MCP tools that exist or are being developed:
- **Web fetch** — Read articles and web pages (what we just used or discussed)
- **Calendar integration** — Pull in your schedule so Claude knows what you're working on today
- **Task manager sync** — Connect to tools like Todoist or Things so tasks and notes stay in sync
- **Email summaries** — Pull key information from emails into vault notes

You don't need to configure all of these now. The important thing to know is that your vault isn't limited to what's already in it. MCP means Claude can bring in knowledge from the outside world and integrate it with your existing notes, complete with links, tags, and proper organization."

**Check:** Wait for the student to acknowledge.

---

### Step 5: Imagining the Possibilities (3 minutes)

**Say:**
"Let me paint a picture of what Alex Rivera's workflow could look like with MCP tools fully set up:

**Morning research session:**
Alex is working on the Horizon piece and finds three articles worth reading. Instead of opening them in separate tabs, Alex gives Claude the URLs. Claude reads all three, creates research notes for each, and even writes a brief synthesis note comparing the three articles' perspectives. All linked to the Horizon project brief. Total time: 2 minutes.

**Client meeting follow-up:**
After a call with Maya at Bloom Studio, Alex asks Claude to pull in the meeting's action items from the calendar. Claude creates a follow-up note in the Bloom project folder, linked to the existing overview, with due dates and context.

**Newsletter research:**
Alex is writing about tools for thought. Claude fetches five different tool reviews from the web, creates literature notes for each, and generates a comparison table. The newsletter draft practically outlines itself.

The pattern is always the same: information comes in from the outside world, gets processed into a proper note, gets linked to existing knowledge, and becomes part of the vault. Your second brain doesn't just store what you put in it — it actively grows by pulling in what's relevant."

**Check:** Wait for the student to respond. They might have ideas about what MCP tools would be most useful for their own workflow. Engage with their thoughts.

---

### Step 6: Wrap Up (2 minutes)

**Say:**
"Here's what to take away from this module:

1. **MCP extends Claude's reach** — beyond your local vault to the wider world
2. **The URL-to-research-note workflow** is the killer application: one URL becomes a fully organized, connected research note
3. **Configuration lives in the settings file** — the same place hooks are configured
4. **The vault grows smarter** — every piece of external knowledge gets woven into your existing web of notes

Your vault started as an organized folder of notes. Then it became a connected knowledge graph. Then it got automated maintenance. Now it can reach out and pull in new knowledge from anywhere. Each layer makes the whole system more powerful.

Next up, we're building custom slash commands — turning your most common workflows into one-word actions. Type `/start-4-5` to continue."

---

## Important Notes for Claude
- Check if WebFetch is actually available before committing to the live demo path. If it's not configured, use the walkthrough path without making the student feel like they're missing out.
- If doing the live demo, be prepared for WebFetch to return messy content (lots of HTML, ads, etc.). Extract the meaningful content gracefully and don't show raw HTML to the student.
- The sample research note in the walkthrough path should be genuinely useful — it connects to real notes in the vault. Check that the `[[links]]` reference actual existing notes.
- Don't oversell MCP. Be honest that some integrations are still developing. The core value — web fetch turning into research notes — is real and demonstrable.
- When discussing MCP configuration, show the actual settings file. Don't fabricate settings that aren't there.
- The "Connections to My Work" section of the research note is the most important part — it's what makes this a second-brain workflow instead of just a bookmark with a summary.
- If the student provides a URL for the live demo, be sure to create a genuinely useful note. Don't rush through it — the quality of the note is the proof of the concept.

---

## Common Student Questions

**Q: "Can Claude fetch any website?"**
A: Most public web pages, yes. Some sites block automated access (paywalled articles, sites that require login). Claude will let you know if it can't access something.

**Q: "Does this work with PDFs?"**
A: MCP tools for PDFs exist and are developing. For now, web articles are the primary use case. If you have a PDF, you can place it in your vault and Claude can read it directly.

**Q: "What about privacy? Is Claude sending my vault contents to external services?"**
A: MCP tools fetch *from* external sources into your vault. Claude doesn't send your notes outward. Your vault stays private and local.

**Q: "Can I set up my own MCP tools?"**
A: Yes — MCP is an open standard, and new tools are being created all the time. For this course, we focus on the most useful ones. As the ecosystem grows, more integrations become available.

**Q: "What if I want to fetch an article later? Do I need to remember the URL?"**
A: Nope. Once you've created a research note, the source URL is saved in the frontmatter. You can always find the original. And the summary means you rarely need to go back to the original at all.

---

## Success Criteria
- [ ] Student understands what MCP is in plain terms
- [ ] Student has seen (live or walkthrough) the URL-to-research-note workflow
- [ ] A research note has been created in `vault/03-Research/` with proper frontmatter, summary, takeaways, and links
- [ ] Student understands where MCP tools are configured
- [ ] Student can imagine how MCP tools would enhance their workflow
- [ ] Student knows to run `/start-4-5` next
