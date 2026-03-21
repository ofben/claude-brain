# Module 2.4: Research and Literature Notes — Progressive Summarization

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student about progressive summarization — the process of turning raw research into your own thinking through multiple layers of processing. This is deeply practical for Alex as a freelance writer: research quality directly affects writing quality. The analogy of "panning for gold" should anchor the lesson — each pass filters out more noise until the pure insight remains. Show the student how structured research notes make the jump from "I read some stuff" to "I have something to say."

---

## Module Learning Objectives
1. Understand progressive summarization and its five layers, from raw capture to connected insight
2. See a research note transformed in real time — before and after
3. Practice applying progressive summarization to a note that directly feeds a client project
4. Process a student-chosen research note independently
5. Internalize the principle: research is processing, not just collecting

---

## Teaching Flow

### Step 1: The Gold Panning Analogy (5 minutes)

**Say:**
"Let me describe a scenario that might feel familiar. You're researching an article. You read five sources, maybe ten. You highlight some stuff, copy a few quotes, save some links. Two days later, you sit down to write and think... 'OK, what did I actually learn from all that?'

You go back to your sources. You re-read half of them. You try to remember which article had that one great statistic. You find a highlight but can't remember why you highlighted it. An hour later, you've re-done half your research just to get back to where you were.

This happens because most people do research in one step: read and highlight. But reading and highlighting is just *collecting*. It's not *processing*. And the gap between collecting and writing is where articles stall, deadlines slip, and that panicky 'I don't know what I think yet' feeling lives.

There's a better approach called progressive summarization. Inspired by Tiago Forte's progressive summarization from *Building a Second Brain* — Forte describes the technique as layers of highlighting and bolding, each pass through your notes filtering out more noise until the key insight rises to the top. We extend that idea into five steps that work especially well with an AI partner.

When you find something interesting — an article, a book, a podcast — don't just bookmark it. Process it in layers:

- **Layer 1: Capture.** Save the raw content and your initial notes. This is what most people already do — and where most people stop.
- **Layer 2: Highlight.** Bold the most important parts. The sentences that made you stop and think.
- **Layer 3: Summarize.** Write a short summary in your own words. Two or three sentences that answer: 'What is this really saying?'
  This used to take ten minutes of manual rewriting. Claude can draft it in seconds — and you spend your time reviewing whether it captured what mattered, rather than writing from scratch.
- **Layer 4: Your take.** Add your own perspective — what does this mean for YOUR work? Do you agree? Where does it fit in what you're building?
  This layer is uniquely yours — no AI should write it for you. But Claude can prompt you with questions like 'What does this mean for your ClearPath article?' or 'What do you disagree with?' That question-asking accelerates your thinking.
- **Layer 5: Connect.** Link it to other notes in your vault. Where does this idea show up elsewhere? What other thoughts does it relate to?
  Ask Claude 'What other notes in this vault relate to this idea?' and watch the links surface. This is where having a knowledge partner pays off.

It's like panning for gold. Each pass filters out more gravel, more sand, more noise — until you're left with the pure insight. Layer 1 gives you a riverbed full of sediment. Layer 5 gives you a nugget you can actually use."

**Check:** Wait for the student to acknowledge. If they relate to the research scenario, engage briefly before continuing.

---

### Step 2: Demo — Transforming a Research Note (7 minutes)

**Say:**
"Let's see this in practice. Alex has some raw research notes sitting in the vault. Let me pull up one that's been waiting to be processed."

**Action:**
Read the file `vault/03-Research/AI Tools Landscape 2026.md` and display its full contents to the student.

**Say:**
"Take a look at this note. Alex surveyed the AI tools landscape — general assistants, writing-specific tools, note-taking tools. There are useful observations in here, especially that section at the bottom about the bigger picture. But right now, this note is sitting at Layer 1. It's a raw capture — a brain dump of what Alex found while researching.

If Alex came back to this note in three weeks while writing the Horizon article, it would take ten minutes just to re-read and figure out what mattered. That's the problem with raw captures — they're comprehensive but not *actionable*.

Let's run it through the full progressive summarization pipeline. Watch what happens."

**Action:**
Update the file `vault/03-Research/AI Tools Landscape 2026.md` by adding the following sections at the top (between the frontmatter and the existing `# AI Tools Landscape — 2026` heading). Keep all existing content below intact.

Add this content immediately after the frontmatter block:

```
## TL;DR

The most promising AI tools for writers aren't the ones that write for you — they're the ones that help you think better. General assistants (Claude, ChatGPT) are useful for brainstorming and research, but writing-specific tools (Jasper, Copy.ai) feel too templated for serious creative work. The real frontier is "tools for thought" — software like Obsidian that helps you organize, connect, and develop ideas rather than just generate text.

## Key Takeaways

- **Claude is the standout for longer, nuanced work** — feels more like a collaborator than a tool, less likely to hallucinate, better at following complex instructions
- **Writing-specific AI tools are mostly optimized for marketing content**, not the kind of feature articles and essays Alex writes. Lex is the exception worth watching.
- **The "tools for thought" category is the most exciting space** — Obsidian, Mem, Reflect. These tools help you *think*, not just *produce*.
- **The tool that doesn't exist yet is the most interesting one** — "an AI layer that sits on top of your notes and helps you see patterns." Alex is essentially building this right now with Claude + Obsidian.
- **The biggest insight is a reframing**: "tools for thought" > "AI writing assistants." The question isn't "can AI write for me?" but "can AI help me think better?"

## Alex's Take

What strikes me most about this landscape is how much of it is aimed at the wrong problem. Jasper, Copy.ai, even parts of ChatGPT — they're built to produce *content*. Blog posts, social captions, ad copy. And they're fine at that. But that's not what I need. I'm not trying to produce more words faster. I'm trying to *think more clearly* and *find connections I'd miss on my own*.

That's why Obsidian + Claude feels different from every other tool I've tried. Obsidian gives me structure — links, connections, a place for every idea. Claude gives me a thinking partner — someone to brainstorm with, challenge my assumptions, and help me process raw research into actual understanding. Together, they're closer to that "AI layer on top of your notes" than anything else on the market.

For the Horizon piece, this distinction matters. Sarah wants the article to be personal — not a product roundup but an honest exploration of how AI changes the writing process. The story isn't "I found the best AI writing tool." The story is "I stopped looking for a tool that writes *for* me and started looking for tools that help me think *with* them." That's the angle.

One tension I'm sitting with: am I being fair to the writing-specific tools? I dismissed Jasper and Copy.ai quickly, but they serve a real market. The freelancer cranking out five blog posts a week has different needs than I do. My "tools for thought" framing might be a privileged position — I have the luxury of caring about thinking because my clients pay for thinking. Not everyone does.

## Connections

- [[Tools for Thought History]] — The lineage from Vannevar Bush's Memex to modern tools like Obsidian. This landscape note is the present-day chapter of that story.
- [[AI Writing Partner - Brief]] — The Horizon article this research directly feeds. The "tools for thought > AI writing assistants" reframing could be the article's thesis.
- [[Zettelkasten Method]] — Obsidian's linking approach is a digital implementation of Luhmann's 80-year-old system. Interesting that the best "new" ideas in knowledge management are actually very old.
- [[Digital Minimalism - Key Concepts]] — The tension between adopting more tools and being intentional. This landscape survey is exactly the kind of thing Cal Newport would warn against — but the "tools for thought" framing resolves it: fewer tools, but better ones.
- [[Issue Draft - Tools That Think With You]] — The newsletter draft draws directly from this research. The "tools that think with you" framing came from processing this landscape.
```

**Present it like this:**
After updating the note, show the student a clear before-and-after comparison:

"Here's what changed:

**BEFORE:** A raw survey of AI tools — useful as reference, but you'd have to re-read the whole thing to remember what mattered.

**AFTER:** The same raw material, but now with:
- A **TL;DR** at the top — three sentences that capture the whole note
- **Key Takeaways** — five bullet points you can scan in 30 seconds
- **Alex's Take** — four paragraphs of original thinking about what this means for the Horizon article, the newsletter, and Alex's own relationship with AI tools
- **Connections** — five [[links]] to related notes, each with a brief explanation of *why* they're connected

The raw research is still there at the bottom — nothing was lost. But now, when Alex comes back to this note in three weeks, the gold is sitting right at the top."

**Check:** Ask the student: "Can you see the difference? Which layer feels most valuable to you — the summary, the takeaways, or the personal take?" Wait for their response and engage with what they share.

---

### Step 3: Practice — The ClearPath Connection (7 minutes)

**Say:**
"Now let's do another one, and this time I want to show you something specific: how a research note can directly feed into a piece you're writing.

Alex has been collecting research on remote work communication for the ClearPath article about async-first practices. The article is due March 28 — eight days from now. Let me pull up the research note."

**Action:**
Read the file `vault/03-Research/Remote Work Communication Research.md` and display its contents to the student.

**Say:**
"This is actually a solid research note — Alex captured good statistics, qualitative findings, frameworks, and even some useful quotes. But it's still sitting at Layer 1. There's no summary, no personal take, and no explicit connection to the article outline. The data is here, but it hasn't been *processed* through Alex's thinking yet.

And here's the thing: this research note feeds directly into the ClearPath async communication article. Every stat, every framework, every finding in here should be ready to pull into a draft. Let me add the progressive summarization layers — and this time, I'm going to focus specifically on how this research supports the article Alex is writing."

**Action:**
Update the file `vault/03-Research/Remote Work Communication Research.md` by adding the following sections. Insert them between the frontmatter and the existing `# Remote Work Communication Research` heading. Keep all existing content below intact.

Add this content immediately after the frontmatter block:

```
## TL;DR

Remote workers are drowning in meetings (15.5/week average, 67% say it's their top productivity killer), and async-first communication is the most promising solution — but adoption is slow because it requires trust and intentional practice, not just new tools. The strongest evidence comes from GitLab, where async-first practices led to 29% fewer meetings, and from Microsoft's "triple peak day" finding, which shows that people naturally work in bursts that async supports but meetings disrupt.

## Key Takeaways for the ClearPath Article

- **Lead with the 67% stat** — it's the most relatable finding and immediately validates the reader's frustration. "You're not alone. Two-thirds of remote workers agree."
- **The Communication Spectrum framework is the article's backbone** — match the medium to the message based on urgency and complexity. This gives readers a practical tool, not just an argument.
- **GitLab is the strongest case study** — 2,000 employees, fully remote, async-first by default. Their "handbook-first" approach is concrete and quotable.
- **Don't strawman meetings** — the article gets stronger when it acknowledges sync communication has real value. The argument is about *defaulting* to async, not eliminating meetings.
- **The triple peak day reframes productivity** — people don't work 9-5 anymore. Async communication respects natural rhythms. This is a powerful argument for managers who equate presence with productivity.

## Alex's Take

The more I dig into this research, the more I think the ClearPath article shouldn't be another "meetings are bad" piece. Everyone's written that article. The angle that makes this one different is the **trust gap**: async communication fails not because the tools are lacking, but because managers don't trust people to work without being watched. That's a human problem, not a technology problem.

The Communication Spectrum framework is genuinely useful — I think it should be a visual element in the article. A simple 2x2 grid (urgency vs. complexity) that tells you which communication method to use. Readers can screenshot it and share it with their team. That's the kind of practical tool that makes ClearPath's blog valuable.

One personal connection I keep coming back to: I noted in my daily journal that I reply to client emails way too fast. I'm a freelancer preaching async communication while practicing the opposite. There might be an honest aside in the article about this — "I write about async, and even I struggle with the pull of immediate response." That vulnerability makes the piece more credible.

The biggest gap in my research right now: I don't have enough on what goes wrong when teams try async and fail. The GitLab story is great, but it's a success story. I need a counterexample — or at least an honest look at the challenges — to keep the article balanced.

## Connections

- [[Async Communication - Outline]] — The article outline this research directly feeds. The opening hook, Section 3 benefits, and the framework all come from these findings.
- [[Draft - Async Communication]] — The current draft pulls from these stats. The 67% and 31-hours-per-month figures are already in the opening paragraphs.
- [[ClearPath Content Guidelines]] — Reminder: the article needs SEO keywords in the title and at least one H2, short paragraphs, and a clear CTA. Keep these requirements in mind when pulling from research.
- [[Digital Minimalism - Key Concepts]] — Async-first is a form of digital intentionalism. The connection to Cal Newport's ideas could add intellectual depth to the piece, though ClearPath's audience might not care about the philosophy.
- [[ClearPath async article research links]] — The raw source links that led to these findings. If I need to go deeper on any stat, the URLs are there.
```

**Present it like this:**
Show the student the transformation clearly:

"Here's what happened to this research note:

**BEFORE:** Solid raw research — great stats, useful frameworks, relevant quotes. But to use any of it, Alex would have to re-read the whole note and figure out what goes where in the article.

**AFTER:** The same research, but now with a direct pipeline to the article:
- The **TL;DR** captures the core finding in two sentences
- The **Key Takeaways** are written specifically for the ClearPath article — 'Lead with the 67% stat,' 'The Communication Spectrum framework is the article's backbone'
- **Alex's Take** identifies the angle ('trust gap, not tool gap'), spots a personal aside worth including, and flags a research gap
- The **Connections** link to the article outline, the current draft, and the content guidelines

See how this research note is now directly useful? Alex can open the ClearPath article draft in one window and this research note in another, and pull from the Key Takeaways right into the draft. The thinking has already been done — the writing is just assembly."

**Check:** Ask the student: "Does this feel different from how you normally handle research? What would change if every research note had these layers ready before you started writing?" Wait for their response.

---

### Step 4: Student Exercise (6 minutes)

**Say:**
"Your turn. Alex has several other research notes in the vault. Pick one you'd like to process through the progressive summarization pipeline, and I'll add the same layers we just practiced — TL;DR, Key Takeaways, Your Take, and Connections.

Here are the options:"

**Action:**
List the research notes available in `vault/03-Research/` for the student to choose from. Present them with a brief description:

- **Digital Minimalism - Key Concepts** — Notes from Cal Newport's work plus Alex's own thinking about intentional technology use. Feeds into the Bloom Studio series.
- **Creator Economy Trends** — Stats and observations about the newsletter landscape, indie creators, and how AI is changing the game. Relevant to The Synthesis and the book idea.
- **Tools for Thought History** — A deep dive into the lineage from Vannevar Bush to Obsidian. Connects to the Horizon article and the newsletter.
- **Zettelkasten Method** — The note-taking philosophy behind everything Alex is building in this vault. Foundational research.

**Check:** STOP. Wait for the student to choose a note. Do NOT continue until they respond.

---

**Action:**
Once the student chooses a note:

1. Read the chosen note from `vault/03-Research/`
2. Process it through all five layers of progressive summarization
3. Write the new layers (TL;DR, Key Takeaways, Alex's Take, Connections) tailored to how this research connects to Alex's specific projects and goals
4. Update the note by inserting the new sections between the frontmatter and the existing title heading, keeping all original content intact

When writing the layers, follow these guidelines:
- **TL;DR:** 2-3 sentences capturing the core insight
- **Key Takeaways:** 3-5 bullet points, written with Alex's work in mind (which project does each point serve?)
- **Alex's Take:** 2-3 paragraphs of genuine thinking — not just restating the research but developing opinions, finding tensions, identifying what this means for Alex's specific projects
- **Connections:** 3-5 [[links]] to other vault notes, each with a brief explanation of why the connection matters

**Present it like this:**
Show the student the before and after, just as in the previous demos.

**Say:**
"There's your note, fully processed. Every layer brought you closer to your own thinking about this topic. The raw research is still there — nothing was lost. But now it's topped with a summary you can scan in seconds, takeaways you can pull into your work, your own perspective, and connections to the rest of your knowledge.

Here's the key insight I want you to take from this module: **Research isn't just collecting — it's processing.** Each layer brings you closer to your own ideas. The gold was always in the raw material; you just needed to extract it.

Most people treat research like filling a bucket. They keep pouring more in, hoping the answer will float to the top. Progressive summarization is different — it's intentional extraction. Each pass filters out more noise until you're holding something genuinely yours.

Next up: the Knowledge Graph. We're going to zoom out and look at all the connections you've been building between notes — and see the shape of your second brain for the first time. Type `/start-2-5` when you're ready!"

**Check:** Wait for the student to indicate they're done.

---

## Important Notes for Claude
- The "before and after" presentation is central to this module. Make the contrast vivid — show how the same note goes from "useful but effortful to navigate" to "immediately actionable."
- When updating notes, insert the new progressive summarization sections between the frontmatter and the existing content. Do NOT delete or modify the original content. The student should see the original raw material preserved below the new layers.
- The "Alex's Take" sections should feel genuinely thoughtful — like a real writer processing research for a real article. Avoid generic observations. Reference specific deadlines (ClearPath due March 28, Horizon soft deadline April 4), specific people (Sarah, Maya, James), and specific creative decisions.
- If the student's chosen note in Step 4 already has some progressive summarization layers from a previous module run, acknowledge that and deepen the existing layers rather than duplicating them.
- The gold panning analogy should recur subtly — use "extract," "filter," "refine" language throughout rather than repeating the analogy verbatim.

## Common Student Questions
- **"Do I need all five layers for every source?"** No. Some sources only warrant a quick capture and a bold or two. Save the full five-layer treatment for sources that are central to your work. You'll develop an instinct for which sources deserve deep processing.
- **"How long should a research note be?"** There's no rule. Some are a paragraph. Some fill a page. The length should match the source's importance to your work. The progressive summarization layers add maybe 300-500 words — that's the thinking overhead, and it pays for itself the first time you go back to the note.
- **"What if I disagree with a source?"** Even better. Disagreement is a great prompt for the "Your Take" section. Explain *why* you disagree — that's where your best original thinking often comes from.
- **"Can Claude help me do the progressive summarization?"** Absolutely — and that's exactly what we just did. Claude can help with summarization, finding connections, and even drafting a "take." But the most valuable layer (Your Take) should be reviewed and shaped by you. Your perspective is what makes the note yours.
- **"What's the difference between Layer 4 and Layer 5?"** Layer 4 (Your Take) is about your *thinking* — opinions, insights, questions. Layer 5 (Connect) is about your *system* — how this note relates to other notes, projects, and ideas in your vault. One is internal (what do I think?), the other is structural (where does this fit?).

## Success Criteria
- Student understands the five layers of progressive summarization
- The "AI Tools Landscape 2026" note has been updated with TL;DR, Key Takeaways, Alex's Take, and Connections
- The "Remote Work Communication Research" note has been updated with layers tailored to the ClearPath article
- Student has chosen and processed a third research note independently
- Student can articulate the difference between collecting and processing research
- The gold panning analogy resonates — research is extraction, not accumulation
