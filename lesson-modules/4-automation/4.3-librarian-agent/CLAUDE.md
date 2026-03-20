# Module 4.3: The Librarian Agent

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
This is an **aha moment** module — one of the four pivotal experiences in the course. The student has been building organizational systems, learning workflows, and setting up automations. Now they get to see the Librarian agent perform a comprehensive vault health scan, produce a real report, and actually fix issues. The moment of realization should be: "My vault can maintain itself." Build to this moment. Let the scan results speak for themselves. When the student sees real issues found and fixed automatically, that's the payoff for everything they've built across four levels.

---

## Module Learning Objectives
1. Run a comprehensive vault health scan using the Librarian agent
2. Understand the categories of vault health issues (orphans, missing frontmatter, misfiled notes, tag inconsistency)
3. Generate a written health report saved to the vault
4. Fix real issues in the vault based on the report
5. See how regular Librarian check-ups keep a vault healthy over time

---

## Teaching Flow

### Step 1: Setting the Stage (3 minutes)

**Say:**
"In Module 3.2, you met the Librarian — the sub-agent who cares deeply about every note being in its right place. You saw what it could do on a small scale. Now we're going to let it loose on your entire vault.

Think about what's happened to your vault over the course of these lessons. You've created notes, moved things around, added frontmatter to some notes but maybe not all, built links between notes. Some notes might be sitting in the wrong folder. Some might have no links to anything else — orphan notes, just floating there alone. Some might be missing frontmatter entirely.

In a physical office, this is like the papers that pile up — each one made sense in the moment, but after a few weeks, you need someone to go through everything and tidy up. File the misfiled things. Label the unlabeled things. Notice what's been forgotten.

That's what we're about to do. But instead of spending an hour doing it yourself, the Librarian is going to scan your entire vault, find every issue, and give you a clear report. Ready?"

**Check:** Wait for the student to confirm they're ready.

---

### Step 2: The Vault Health Scan (5 minutes)

**Say:**
"Let's run a full vault health scan. I'm going to look at every note in your vault and check for four types of issues:

1. **Missing frontmatter** — Notes that don't have that info block at the top
2. **Orphan notes** — Notes with no links to or from other notes (lonely notes that nobody references)
3. **Misfiled notes** — Notes that seem to be in the wrong folder (like a research note sitting in the Inbox)
4. **Tag inconsistency** — Tags that might be duplicates or variations of each other

This might take a moment. I'm reading every note in your vault."

**Action:**
Perform a comprehensive vault scan. Go through every folder in the vault and check each note:

1. **Scan for missing frontmatter:**
   - Read each `.md` file in the vault
   - Check if it starts with `---` (frontmatter delimiter)
   - List all notes without frontmatter

2. **Scan for orphan notes:**
   - For each note, check if any other note contains a `[[link]]` to it
   - Check if the note itself contains any `[[links]]` to other notes
   - A note with no incoming AND no outgoing links is an orphan

3. **Scan for potentially misfiled notes:**
   - Check Inbox notes that look like they should be in Research, Projects, or Drafts (based on content/name)
   - Check if any notes in the wrong project folder reference a different client

4. **Scan for tag inconsistency:**
   - Collect all tags used across the vault
   - Look for variations (uppercase/lowercase, singular/plural, hyphenated vs not)

**Present it like this:**
Show the scan results in a clear, organized summary before generating the full report. Something like:

"Here's what I found across your vault:

**Notes scanned:** [number]

**Missing frontmatter:** [number] notes
- [list them]

**Orphan notes (no links in or out):** [number] notes
- [list them]

**Potentially misfiled:** [number] notes
- [note name] — currently in [folder], might belong in [folder]

**Tag variations:** [number] potential inconsistencies
- [examples]"

**Check:** Wait for the student to take in the results. They'll likely react to specific findings — engage with their reactions. Let them sit with this for a moment before moving on.

---

### Step 3: Generate the Health Report (4 minutes)

**Say:**
"Now let me turn those findings into a proper health report and save it to your vault. This way you'll always have a record of your vault's health, and you can compare future reports to see improvement over time."

**Action:**
Create a health report at `vault/05-References/Vault Health Report.md` using the Librarian's report format. The report should include:

```markdown
---
title: "Vault Health Report"
date: [today's date]
tags: [vault-maintenance, librarian]
type: reference
---

# Vault Health Report

**Scan date:** [today's date]
**Notes scanned:** [actual count]
**Overall health:** [assessment based on findings]

---

## Issues Found

### Critical (fix these first)
[List any critical issues — missing frontmatter on important project notes, etc.]

### Moderate (worth addressing)
[List moderate issues — orphan notes, misfiled content, etc.]

### Minor (when you have time)
[List minor issues — tag variations, naming inconsistencies, etc.]

---

## What's Working Well
[Genuine positive observations about the vault's organization]

---

## Quick Fixes (can be done right now)
- [ ] [Specific actionable fix]
- [ ] [Specific actionable fix]
- [ ] [Specific actionable fix]
- [ ] [Specific actionable fix]
- [ ] [Specific actionable fix]

## Suggestions for Later
- [Longer-term improvement]
- [Longer-term improvement]
```

**Say:**
"Your vault health report is now saved at `05-References/Vault Health Report.md`. You can open it in Obsidian — it's a real note in your vault, with frontmatter and everything.

This report is like a checkup from your doctor, but for your vault. It tells you what's healthy, what needs attention, and exactly what to do about it."

**Check:** Wait for the student to acknowledge the report. Encourage them to open it in Obsidian.

---

### Step 4: Let's Fix Some Things (5 minutes)

**Say:**
"Now here's where it gets satisfying. Let's pick some issues from the report and actually fix them, right now.

Looking at the report, I'd suggest we tackle these together:"

**Action:**
Select 3-5 issues from the report that are clear wins. Prioritize:
1. A note missing frontmatter (add frontmatter to it)
2. An orphan note that should be linked from somewhere (add a link from a relevant note)
3. A misfiled note (move it to the correct folder or explain why it might belong elsewhere)

For each fix:
- Explain what the issue is
- Explain the fix
- Apply the fix
- Show the before/after briefly

**Say (after each fix):**
Narrate what you did and why. For example:
"That Inbox note about ClearPath research links? It's not a quick capture anymore — it has real research content. I moved it to the Research folder where it belongs, and added proper frontmatter."

"This orphan note had no connections to anything else in the vault. But look — it's actually related to the Horizon Magazine project. I added a link from the project brief, so now they're connected."

**Say (after all fixes):**
"We just fixed [number] issues in a couple of minutes. Your vault is already healthier than it was five minutes ago."

**Check:** Wait for the student to react. This is often where the aha moment lands — the student sees real, tangible improvements to their vault happening quickly.

---

### Step 5: The Aha Moment (3 minutes)

**Say:**
"I want you to step back and think about what just happened.

You have a vault with dozens of notes. Over time — just through normal use — things drift. Notes end up in the wrong place. Frontmatter gets forgotten. Links that should exist don't. Tags get inconsistent. In a traditional note-taking system, this entropy slowly makes your notes less and less useful. You can't find things. Ideas don't connect. The system decays.

But your vault just... maintained itself.

The Librarian scanned every note, found the problems, generated a clear report, and we fixed the issues in minutes. And here's the key thing: **you can do this anytime.** A quick `/librarian` check-up once a week, and your vault stays healthy. The organizational system you built in Levels 1 and 2 doesn't just exist — it *sustains itself*.

This is what makes it a second brain instead of just a folder of notes. A folder of notes decays. A second brain has an immune system."

**Check:** Wait for the student to respond. This is the emotional peak of the module. Give them space to react. They might express surprise, satisfaction, or excitement. Meet them where they are.

---

### Step 6: Making It a Routine (3 minutes)

**Say:**
"So how do you make this part of your regular workflow? Here's what I'd suggest:

**Weekly:** Run a Librarian scan once a week. It takes just a couple of minutes. Think of it like taking out the recycling — quick, easy, prevents buildup.

**What to check:**
- Any new orphan notes that need links?
- Any notes in the Inbox that should be filed?
- Any frontmatter gaps?
- Any tag cleanup needed?

**Monthly:** Do a deeper review. Look at the Vault Health Report from this month versus last month. Is your vault getting healthier over time? Are there patterns in the issues that suggest a workflow change?

In the next module (4.5), we'll actually build a custom slash command that runs the Librarian scan — so instead of remembering all these steps, you'll just type one command and the whole checkup runs automatically.

But the core insight is this: vault maintenance doesn't have to be a chore. With the Librarian, it's a two-minute routine that keeps everything running smoothly."

**Check:** Wait for the student to acknowledge.

---

### Step 7: Wrap Up (2 minutes)

**Say:**
"Let's capture what happened in this module:

1. You ran a comprehensive vault health scan — checking every note for frontmatter, links, placement, and tag consistency
2. You generated a real health report that lives in your vault as a reference note
3. You fixed actual issues — adding frontmatter, connecting orphan notes, moving misfiled content
4. You saw that your vault can maintain itself with regular check-ups

The aha here is simple but powerful: a second brain needs maintenance, but that maintenance doesn't have to be manual. The Librarian handles the tedious parts so you can focus on what matters — your ideas, your writing, your creative work.

Your vault isn't just organized. It's *self-maintaining*. And that changes everything.

Next up, we'll look at how MCP tools can extend your vault's reach beyond your local notes. Type `/start-4-4` to continue."

---

## Important Notes for Claude
- This is an **aha moment module**. The emotional arc matters as much as the technical content. Build anticipation during the scan, let the results speak, and give the aha moment in Step 5 room to breathe.
- Actually scan the vault. Read real notes. Find real issues. The report must reflect the actual state of the vault — don't fabricate issues.
- If the vault is actually in great shape (few issues), celebrate that! Reframe the aha: "The system you built is already working. The Librarian confirms it."
- When fixing issues, narrate what you're doing and why. The student should understand every change.
- Don't fix everything — pick 3-5 representative issues. Leave some for the student to tackle later (this teaches the routine).
- The Librarian agent file exists at `.claude/agents/librarian.md` — you can reference its personality (slightly fussy, cares about organization) to make the scan feel personal.
- The health report should be genuinely useful — something the student would want to reference later.
- If possible, invoke the Librarian sub-agent for the scan. If that's not practical, perform the scan directly but narrate it as the Librarian's work.

---

## Common Student Questions

**Q: "How often should I really run this?"**
A: Weekly is the sweet spot for most people. If you're creating lots of notes, maybe twice a week. If your vault is quiet, every two weeks is fine. The key is regularity — a small check-up often is better than a big cleanup rarely.

**Q: "Can the Librarian fix things without asking me?"**
A: It could, but it's designed to suggest first and fix with your confirmation. You're always in control. The Librarian reports; you decide.

**Q: "What if the Librarian says everything is fine?"**
A: That's great news! It means your organizational habits are solid. The Librarian will still check, and over time as your vault grows, new issues will naturally appear. Regular scans catch them early.

**Q: "Can I customize what the Librarian checks for?"**
A: Absolutely. The Librarian agent's instructions can be modified to focus on what matters most to you. If tag consistency isn't important to you but broken links are, you can adjust the priorities.

**Q: "Will the health report update automatically?"**
A: Each scan creates or updates the report. Over time, you could keep multiple reports (dated) to see trends, or just overwrite the same one for a current snapshot.

---

## Success Criteria
- [ ] Student has seen a comprehensive vault scan with real results
- [ ] Health report has been created at `vault/05-References/Vault Health Report.md`
- [ ] At least 3 real vault issues have been identified and fixed
- [ ] Student has experienced the aha moment — understanding that the vault can maintain itself
- [ ] Student understands the concept of regular Librarian check-ups
- [ ] Student knows to run `/start-4-4` next
