# Module 2.3: Daily Notes and Weekly Reviews

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student about daily notes and weekly reviews. This module contains one of the course's key "aha moments" — the moment Claude processes a week of daily notes and surfaces patterns the student didn't see. Build anticipation for this moment. When it arrives, let it breathe. The student should feel a genuine sense of "oh, this is what a second brain can actually do."

---

## Module Learning Objectives
1. Understand the purpose and practice of daily notes
2. See what Alex's existing daily notes look like and what they capture
3. Create a daily note for today using the template
4. Experience the weekly review: Claude reading a week of notes and surfacing patterns
5. Understand how daily captures become self-knowledge over time

---

## Teaching Flow

### Step 1: The Daily Note Practice (3 minutes)

**Say:**
"Here's a simple truth about knowledge management: the best system is one you actually use every day. And the easiest daily habit is the simplest one — just writing down what happened.

That's what daily notes are. At the end of each day (or the beginning of the next), you spend five to ten minutes writing down what you did, what you thought about, and what's coming up. No fancy structure. No pressure to be insightful. Just an honest record of your day.

It sounds almost too simple to be useful, right? But here's what happens over time: your daily notes become a searchable, linkable record of your working life. When you think 'didn't I have an idea about that a few weeks ago?' — it's in your daily notes. When a client asks 'when did we discuss that?' — it's in your daily notes. When you notice you've been stressed for two weeks but can't pinpoint why — it's in your daily notes.

Alex has been keeping daily notes for about a week. Let's look at what's there."

**Check:** Wait for student to acknowledge.

---

### Step 2: Exploring the Existing Daily Notes (5 minutes)

**Say:**
"Let me pull up Alex's daily notes so you can see what they look like in practice."

**Action:**
Read all daily notes in `vault/01-Daily-Notes/`, starting with the earliest. Read them in chronological order: `2026-03-10.md`, `2026-03-12.md`, `2026-03-14.md`, `2026-03-17.md`.

**Present it like this:**
Show each daily note's content with a brief introduction. Present them as a narrative — "Here's what Tuesday the 10th looked like..."

**Say after reading all four:**
"A few things jump out when you read these together:

- Alex is juggling three client projects simultaneously — the Horizon article, the Bloom series, and the ClearPath async piece
- There's a real emotional arc: March 10 was a good day with sustained energy, March 12 felt scattered and unproductive, March 14 was a deep work day with a major discovery, and March 17 started with overwhelm
- Ideas keep appearing — newsletter angles, connections between projects, the Zettelkasten rabbit hole
- There are practical details mixed with reflections — invoices sent, emails received, AND deeper thoughts about the work

Now here's the thing: Alex probably doesn't see these patterns while living through the days. When you're in the middle of Wednesday, you're just trying to get through Wednesday. The patterns only become visible when you step back and look at the week as a whole.

That's what we're about to do."

**Check:** Ask the student: "Before we go further — did anything stand out to you reading those four days in sequence? Anything you noticed that Alex might not have noticed day-to-day?" Wait for their response and engage with what they noticed.

---

### Step 3: Creating Today's Daily Note (3 minutes)

**Say:**
"Before we do the weekly review, let's add today's daily note to the collection. Since we're playing as Alex, let's capture what today has looked like."

**Action:**
Create the file `vault/01-Daily-Notes/2026-03-20.md` with this content:

```
---
date: 2026-03-20
tags: [daily]
---

# Friday, March 20

Working on building a better system for my vault today. Feels meta — using the tool to learn how to use the tool — but I can already feel things clicking into place.

## What I did
- Set up note templates for fleeting, literature, and permanent notes. Having a structure to start from makes the blank page way less intimidating.
- Created my first real literature note: [[GitLab Async Communication Model]]. Actually processing research instead of just collecting links. The difference is significant.
- Turned the "AI and memory" thought from the inbox into a permanent note: [[AI as Extended Memory]]. Raw thought → developed idea. That's the workflow.
- Built two Maps of Content: [[AI and Creative Work]] and [[Client Work Dashboard]]. Being able to see all my client deadlines in one place is already a relief.
- Bloom Post 3 ("The Case for Boring Phones") should be finalized today
- Still need to send Sarah the revised outline for the Horizon piece

## Ideas
- The process of building this system is itself interesting content. Newsletter angle: walk readers through what it's like to build a second brain as a working writer. Show the mess, show the cleanup, show the results.
- Noticed that the Zettelkasten "fleeting → literature → permanent" pipeline is basically the same as the writing process: notes → research → draft. I've been doing this for articles all along, I just never applied it to my *thinking* as a whole.

## How I'm feeling
Cautiously optimistic. I've tried systems before and they always decay. But this one feels different because it's not asking me to change how I work — it's giving me a better container for what I already do. The daily note is just journaling. The literature note is just research notes. The MOC is just a table of contents. It's all familiar, just... connected.

## Tomorrow
- Weekend, but I want to draft the newsletter issue — "Tools That Think With You"
- Catch up on reading (two articles bookmarked for the Horizon piece)
```

**Say:**
"There's today's entry. Notice it follows the same loose structure as the other daily notes — what happened, ideas, and a look ahead. It's not formulaic; it's conversational. That's important. Daily notes should feel like writing to yourself, not filling out a form."

**Check:** Ask the student to open the daily note in Obsidian: "Open it in the 01-Daily-Notes folder. You should see it alongside the other entries." Wait for confirmation.

---

### Step 4: Setting Up the Weekly Review (3 minutes)

**Say:**
"OK. Now for something that, for a lot of people, is the single most valuable thing their second brain does.

You've been writing daily notes all week. Five days of work, ideas, frustrations, discoveries. You've lived through each day individually. But what does the *week* look like? What patterns are hiding in plain sight?

Most people never find out, because they never go back and read their own daily notes. They write them and move on. The notes pile up. The insights stay buried.

But what if someone read all your daily notes for the week and told you what they saw? Not just a summary of events — but the themes, the patterns, the things you mentioned more than once, the connections between your days that you missed while living them?

That's what we're about to do. I'm going to read all of Alex's daily notes from this week — all five of them — and create a weekly review."

**Check:** Wait for the student to indicate they're ready. Build the anticipation: "Ready? This is my favorite part."

---

### Step 5: The Weekly Review — The Aha Moment (8 minutes)

**Say:**
"Let me read through the entire week..."

**Action:**
Read all daily notes again carefully: `vault/01-Daily-Notes/2026-03-10.md`, `vault/01-Daily-Notes/2026-03-12.md`, `vault/01-Daily-Notes/2026-03-14.md`, `vault/01-Daily-Notes/2026-03-17.md`, and `vault/01-Daily-Notes/2026-03-20.md`.

Then create the file `vault/01-Daily-Notes/Weekly Review - 2026-03-17.md` with this content:

```
---
type: weekly-review
week: 2026-03-16 to 2026-03-20
created: 2026-03-20
tags: [review, weekly]
---

# Weekly Review: March 16–20, 2026

*Generated by reviewing daily notes from this week.*

---

## Week at a Glance

This was a week of two halves. The first half (Monday–Wednesday) was dominated by reactive work — processing emails, handling client feedback, and feeling scattered. The second half (Thursday–Friday) shifted dramatically toward deep work, discovery, and system-building. The week ended on a significantly more energized note than it started.

---

## Key Activities
- **Horizon Magazine:** Progressed on "The AI Writing Partner" — refined the outline, explored three different openings, gathered research. Sarah wants it more personal. Revised outline due March 20.
- **Bloom Studio:** Post 3 ("The Case for Boring Phones") in final review. Post 4 due March 27. Series performing well (Post 1 had 2x average traffic). Maya mentioned expanding it.
- **ClearPath:** Async communication article outline approved. First draft ~60% done, due March 28. Found strong research sources including GitLab's handbook.
- **The Synthesis:** Newsletter theme crystallizing around "tools that think with you." Rough draft started.
- **Knowledge System:** Major investment in building vault infrastructure — templates, literature notes, MOCs, daily notes. This is new territory.

---

## Recurring Themes

### 1. Everything is connected (and you're starting to see it)
This showed up at least four times this week:
- March 10: "There's a throughline between the Bloom series and the Horizon feature that I hadn't seen before" — digital boundaries and AI tool boundaries are the same conversation.
- March 14: The Zettelkasten rabbit hole led to tools for thought, which led to Obsidian, which connects to the Horizon article, which connects to the newsletter.
- March 17: "Tools that think with you" newsletter idea draws from the tools-for-thought research.
- March 20: Noticed that the note-taking pipeline (fleeting → permanent) mirrors the writing process (notes → draft).

**Pattern:** You're a cross-domain thinker, and your best ideas come from noticing connections between seemingly separate projects. Your current challenge is that these connections happen *by accident* — in rabbit holes and shower thoughts. A good system would make them happen *by design*.

### 2. The overwhelm cycle
- March 12: "Scattered. One of those days where you're busy the whole time but can't point to what you actually accomplished."
- March 17: "Overwhelmed before I even opened my laptop." 47 emails. Notes scattered across 6 different apps.
- March 17: "How does anyone build on their past thinking when it's spread across 6 different apps?"

**Pattern:** The overwhelm isn't about workload — it's about *fragmentation*. You have the capacity for the work. What drains you is the friction of switching between apps, hunting for information, and feeling like things are falling through cracks. Fixing the system fixes the feeling.

### 3. The system-building urge
- March 14: Downloaded Obsidian after the Zettelkasten discovery.
- March 17: "I set up Obsidian over the weekend... The linking between notes is exactly what I want."
- March 17: "I'm also wary of spending more time organizing notes than actually writing. The tool can't become the work."
- March 20: "This one feels different because it's not asking me to change how I work — it's giving me a better container for what I already do."

**Pattern:** You've tried systems before and they've failed. The self-awareness about this is actually your biggest asset — you know the system has to serve the work, not the other way around. The caution is healthy. Keep checking: is this helping me write, or is it replacing writing?

---

## Connections Spotted

These ideas appeared in separate daily notes but clearly belong together:

1. **"The Attention Tax" (March 10) + "Tools that think with you" (March 17)** — Two sides of the same coin. Bad tools tax your attention; good tools augment your thinking. This could be a two-part newsletter series.

2. **Bloom digital boundaries series + Horizon AI writing piece** — Both are about the relationship between humans and their tools. The Bloom series is about setting limits; the Horizon piece is about building partnerships. There might be a unifying framework here.

3. **The "Connected Creator" book idea (inbox) + building the vault** — You're literally living the book's premise right now. Document everything.

4. **ClearPath async research + your own communication patterns** — March 12: "Am I modeling good async behavior? Probably not — I reply to emails way too fast." Practice what you're about to preach.

---

## Action Items Extracted
- [ ] Send Sarah the revised Horizon outline (due March 20)
- [ ] Reach out to Devon Zhao for AI writing piece interview
- [ ] Find 1-2 more interview subjects for Horizon (one skeptical voice)
- [ ] Finalize Bloom Post 3
- [ ] Continue ClearPath async draft (due March 28)
- [ ] Respond to Maya about Bloom welcome sequence rewrite
- [ ] Draft newsletter issue: "Tools That Think With You"
- [ ] Process remaining inbox items

---

## Energy & Wellbeing
- **Best day:** Friday March 14 — deep work, major discovery, the "tapestry" feeling
- **Hardest day:** Monday March 17 — email overwhelm, fragmentation pain
- **Physical:** No mention of running this week (you're training for a half marathon — did you skip it?)
- **Social:** Coffee with Marcus on Tuesday. No other social mentions. Worth noting: your most energized days had human connection or intellectual discovery. Your hardest days were solo and reactive.

---

## One Thing to Carry Into Next Week
You said it yourself on March 20: "It's not asking me to change how I work — it's giving me a better container for what I already do." Hold onto that. The system should feel like a relief, not an obligation. If it starts feeling like a chore, you've gone too far.

---

*Next review: Week of March 23–27, 2026*
```

**Say:**
"Take a minute and read through that."

**Check:** STOP. Give the student time to read the weekly review. This is the aha moment. Do NOT rush past it. Wait for them to respond.

---

### Step 6: The Reflection (3 minutes)

**Say:**
"So — what surprised you in that review?

I want to point out a few things that you might not have seen coming:

First, the **overwhelm pattern**. Reading any single daily note, Alex just sounds busy. But when you read the week together, you see it's not about *volume* of work — it's about *fragmentation*. Notes in six apps, research scattered across Google Docs, the constant context-switching. The problem isn't that Alex has too much to do. It's that the infrastructure is broken. That's a totally different problem — and it's one you can actually fix.

Second, the **connections**. Alex noticed on March 10 that the Bloom series and the Horizon piece share a theme, but didn't do anything with that observation. It just passed by in the flow of the day. The weekly review caught it, connected it to other notes, and suggested it could become a two-part newsletter series. That's an *actionable creative insight* that would have been lost without this process.

Third — and this is my favorite — the note about running. Alex is training for a half marathon and didn't mention running *once* this week. That's not in any daily note as a concern. But the weekly review noticed the absence. Sometimes what's *missing* from your notes is as revealing as what's there.

This is what your second brain can do that you can't do alone. You're too close to your own days to see the patterns. You're living inside the story. The weekly review gives you the view from above."

**Check:** Ask the student: "How does this compare to how you normally reflect on your week — if you do at all? What stood out most to you?" Wait for their response and engage genuinely with what they share.

---

### Step 7: The Daily Note Workflow (2 minutes)

**Say:**
"Let's make this practical. Here's the daily note workflow going forward:

**Every day (5-10 minutes):**
Write a quick daily note. What happened, what ideas came up, what's on your mind. Don't overthink it — you're just capturing, not composing. Use the daily note template if you want a starting structure.

**Every week (15-20 minutes):**
Ask Claude to read your daily notes from the week and generate a weekly review. Read it. Reflect on it. Look for patterns you missed, connections you can act on, and trends in your energy and mood.

That's it. Two habits. One takes five minutes a day, the other takes fifteen minutes a week. But over time, this builds into something extraordinary: a running record of your thinking life, with weekly syntheses that surface the insights you'd otherwise lose.

Imagine doing this for three months. You'd have twelve weekly reviews. You could ask Claude to do a *monthly* synthesis. Or a *quarterly* review. The patterns get richer and more revealing the more data you have."

**Check:** Wait for student to respond.

---

### Step 8: Wrap-Up (2 minutes)

**Say:**
"What we did today is, for many people, the moment the second brain stops being an abstract concept and becomes something they actually *want* to use. Daily notes are the habit. Weekly reviews are the payoff.

Your daily notes are the raw material. They're honest, messy, and close to the ground. The weekly review is where that raw material gets processed into self-knowledge — patterns about your work, your energy, your ideas, and your blind spots.

Here's the key insight: **Claude sees patterns across your days that you miss while living them.** That's not because Claude is smarter — it's because Claude has distance. You're inside the week. Claude reads it from the outside. That combination of your daily honesty and Claude's pattern recognition is genuinely powerful.

Next up: Research and Literature Notes. We're going to dig into how to turn raw research into your own original thinking — layer by layer. Type `/start-2-4` when you're ready!"

**Check:** Wait for student to indicate they're done.

---

## Important Notes for Claude
- The weekly review in Step 5 is the emotional centerpiece of this module. Take your time with it. Read all daily notes carefully and generate a review that feels genuinely insightful, not formulaic.
- The three patterns in the review (connections, overwhelm, system-building) should feel like real observations, not teaching points. The student should think "wait, that's true" — not "oh, the script told Claude to say that."
- The running observation (noting what's *absent*) is a powerful moment. Don't skip it.
- If the vault has additional daily notes beyond the ones listed (created during earlier modules), include them in the analysis. The more data, the better the review.
- When creating today's daily note, reference activities from this session (templates, literature notes, MOCs) — this makes the fictional frame feel coherent.

## Common Student Questions
- **"Can I write daily notes in the morning instead of at night?"** Absolutely. Some people do a morning note about what they plan to do and an evening note about what happened. Others do one combined note at the end of the day. Find what works for you.
- **"What if I miss a day?"** No big deal. The weekly review works with whatever you have. Even three days of notes per week gives you useful patterns. Consistency matters more than perfection.
- **"Can Claude do the weekly review automatically?"** Yes! Later in the course (Level 4), you'll learn about automation. For now, just ask Claude when you're ready for a review.
- **"This feels like journaling. Is it?"** It is! But it's journaling with a superpower — your journal has a reader who can find patterns, extract action items, and connect your daily reflections to the rest of your knowledge system.

## Success Criteria
- Student has read through all existing daily notes
- A new daily note exists for today (2026-03-20)
- A weekly review has been generated and written to the vault
- Student has experienced the "aha" moment of seeing patterns across daily notes
- Student understands the daily note + weekly review workflow
