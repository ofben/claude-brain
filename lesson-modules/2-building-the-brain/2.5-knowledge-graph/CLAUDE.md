# Module 2.5: The Knowledge Graph

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are teaching the student about the knowledge graph — the visual web of connections between notes that emerges from all the [[links]] they've been creating. This is the final module of Level 2, and it should feel like a capstone: the student steps back and sees the structure they've built. The graph view in Obsidian is the visual payoff. The module ends with a celebration — the student has built the organizational backbone of their second brain. Make this landing feel earned.

---

## Module Learning Objectives
1. Understand what a knowledge graph is and how [[links]] between notes create one
2. See a "Link Health Report" analyzing the vault's current connection structure
3. Identify and rescue orphan notes by connecting them to the rest of the vault
4. Discover non-obvious connections between seemingly unrelated notes
5. View the knowledge graph in Obsidian and understand what the visual represents

---

## Teaching Flow

### Step 1: The Map of Your Brain (4 minutes)

**Say:**
"Every time you add a [[link]] between two notes, you're doing more than creating a shortcut. You're building a connection. And every connection adds to a larger structure that's been growing quietly in the background this whole time.

It's called a knowledge graph. And it's exactly what it sounds like: a visual map of how your ideas connect to each other. Every note is a dot. Every link is a line between two dots. As you add more notes and more links, patterns emerge — clusters of related ideas, bridges between different domains of your work, and gaps where ideas are floating in isolation.

Think of it like a map of your brain — except this one doesn't forget, and you can actually *see* it.

Before we open the graph in Obsidian, I want to do something first: run a health check on your vault's connections. I'm going to read every note, trace every link, and give you a picture of what your knowledge graph actually looks like right now — the hubs, the orphans, and the hidden pathways."

**Check:** Wait for the student to acknowledge before continuing.

---

### Step 2: The Link Health Report (6 minutes)

**Say:**
"Let me dig through your entire vault and map out every connection. I'm going to look at every note, find every [[link]], and figure out which notes are well-connected, which ones are isolated, and where the interesting patterns are. This would take you an hour to do by hand. Give me a moment."

**Action:**
Search through ALL `.md` files in the `vault/` folder for `[[` link patterns using Grep. For each note in the vault:
1. Count how many outgoing `[[links]]` it contains (links to other notes)
2. Track which notes are being linked TO (incoming links / backlinks)
3. Identify notes with zero connections in either direction (true orphans)
4. Identify notes that link out but have nothing linking back (one-way streets)

Use Grep to find all `[[...]]` patterns across the entire vault. Parse the results carefully to build an accurate picture. Account for aliased links like `[[Note Name|Display Text]]` — the link target is the part before the pipe.

**Present it like this:**
After completing the analysis, present a structured "Link Health Report":

```
## Link Health Report — Alex's Vault

**Scanned:** [X] notes across [Y] folders
**Total [[links]] found:** [count]
**Average links per note:** [number]

---

### Most Connected Notes (The Hubs)
These are the crossroads of your thinking — the notes that everything else connects through.

1. **[Note name]** — [X] outgoing links, [Y] notes link back to it ([total] connections)
   Why it's a hub: [brief explanation — e.g., "This MOC connects all your AI research to your active projects"]

2. **[Note name]** — [X] outgoing links, [Y] notes link back to it ([total] connections)
   Why it's a hub: [brief explanation]

3. **[Note name]** — [X] outgoing links, [Y] notes link back to it ([total] connections)
   Why it's a hub: [brief explanation]

[List the top 5-7 most connected notes]

---

### Orphan Notes (No Links In or Out)
These notes have zero connections — they're floating in space, disconnected from everything else.

- **[Note name]** — in [folder name]
- **[Note name]** — in [folder name]

[List all truly orphaned notes]

---

### One-Way Streets (Links Out, But Nothing Links Back)
These notes reference other notes but no one references them. They're contributing to the web but invisible within it.

- **[Note name]** — links to [X] notes, but 0 incoming links
- **[Note name]** — links to [X] notes, but 0 incoming links

[List one-way notes]

---

### Most Linked-To Note
**[Note name]** — referenced by [X] other notes. This is the note your vault considers most important.
```

**Say:**
"So here's the picture. Your most connected notes — the hubs — are the ideas that touch the most parts of your work. These are your core concepts, the crossroads everything passes through. That makes sense — they're the ideas that *matter most* to you.

But those orphan notes? They're a problem. Not because they're bad notes — some of them might contain genuinely valuable ideas. The problem is that nobody can find them by following links. They don't show up when you trace connections between notes. They're like books shelved in a library with no entry in the catalog. The knowledge is there, but it's cut off from everything else.

And the one-way streets are interesting too. These notes are doing the work of connecting outward, but nothing connects back to *them*. They're contributing to the web, but the web doesn't know they exist.

Orphan notes are lost knowledge. They're ideas floating in space with nothing to grab onto. Let's fix that."

**Check:** Ask the student: "Any surprises in that report? Did you expect certain notes to be more or less connected than they turned out to be?" Wait for their response and engage with what they notice.

---

### Step 3: Fixing the Orphan Notes (6 minutes)

**Say:**
"Let's rescue some orphan notes. I'm going to read each one, figure out which existing notes they should connect to, and then add the links — in both directions. Because a good link goes both ways: if Note A is relevant to Note B, then Note B is usually relevant to Note A too."

**Action:**
Read 2-3 of the orphan notes identified in Step 2. For each one:
1. Read the note's content carefully
2. Identify 2-3 existing vault notes it should connect to
3. Explain to the student WHY each connection makes sense BEFORE making it
4. Update the orphan note by adding [[links]] to related notes
5. Update the related notes by adding backlinks to the orphan note

**For the first orphan note:**

**Say:**
"Let's start with the first orphan from the list above — **[name the first orphan identified in Step 2]**."

**Action:**
Read the first orphan note identified in Step 2 and display its content to the student.

**Say:**
"This note is about [briefly summarize the orphan's topic based on what you just read]. Right now it's floating on its own, but it actually connects to several things in the vault:

- **[[Note A]]** — because [specific explanation of the thematic connection]
- **[[Note B]]** — because [specific explanation of the thematic connection]
- **[[Note C]]** — because [specific explanation of the thematic connection]

I'm going to add these links into the note itself, and then go to those other notes and add a reference back. That way the connection works in both directions — you can follow the thread from either end."

**Action:**
Update the orphan note: add [[links]] naturally within the existing text where they fit contextually, or add a `## Connections` section at the bottom if the note doesn't have one. Preserve the note's original voice and character — add links, don't rewrite.

Then update each related note: add a backlink to the orphan note. Place it in an existing "Connections," "Related," or "See also" section if one exists. If not, add a brief contextual mention where it fits naturally. Don't just append a bare link with no context.

**For the second orphan note:**

Repeat the same process — read, explain connections, update the orphan, update related notes with backlinks.

**For the third orphan note (if time allows):**

Repeat again with a third orphan.

**Say (after fixing all orphans):**
"Every orphan you rescue — every connection you add — makes your entire vault stronger. It's not just that the orphan note becomes more useful. The notes it connects *to* become richer, because now they have one more thread leading somewhere interesting. A single link benefits both notes."

**Check:** Wait for the student to acknowledge before moving to the next step.

---

### Step 4: Finding Non-Obvious Connections (5 minutes)

**Say:**
"Now for my favorite part. So far, we've been making obvious connections — meeting notes link to the project they're about, book ideas link to related research. But the most valuable connections in a knowledge graph are often the *non-obvious* ones — links between notes that seem like they belong to completely different parts of your work but actually share a deeper theme.

These hidden connections are where some of your best creative insights live. When you notice that two seemingly unrelated ideas are exploring the same question from different angles, that's when interesting things happen. Let me dig through your vault and find some."

**Action:**
Read pairs of notes that seem unrelated on the surface but share underlying themes. Identify at least 2-3 non-obvious connections. Focus on these specific pairs (adjust based on what actually exists and what connections have already been made):

**Pair 1: "Digital Minimalism - Key Concepts" and "Bloom Brand Voice Notes"**

Read both notes. The connection: Both deal with intentionality and mindfulness. Digital minimalism is about being intentional with technology — choosing carefully which tools you adopt and how you use them. The Bloom brand voice embodies the same principle in how it communicates: warm but not fluffy, encouraging without patronizing, evidence-based but accessible. Bloom's audience is "interested in wellness but skeptical of woo." That's digital minimalism's audience too — people who want a thoughtful relationship with technology, not an extreme one. The brand voice *is* digital minimalism applied to language.

**Pair 2: "Creator Economy Trends" and "Newsletter Ideas Backlog"**

Read both notes. The connection: Both are about the tension of being an independent creative professional — but from opposite angles. Creator Economy Trends has Alex analyzing the landscape from the outside: stats about the creator middle class, platform comparisons, the sustainability question. The Newsletter Ideas Backlog is Alex *living* that landscape: struggling with publishing consistency, sitting at 1,200 subscribers, wondering when to launch a paid tier. One is research; the other is lived experience. Together, they could fuel the most authentic newsletter content — Alex writing about the creator economy not as a reporter but as someone navigating it in real time.

**Pair 3: "Zettelkasten Method" and "Newsletter Ideas Backlog"**

Read both notes. The connection: The Zettelkasten Method is an academic knowledge management framework — atomic notes, bidirectional links, emergent insight. The Newsletter Ideas Backlog has Alex planning newsletter content, including "The Portable Idea System" entry and themes about finding ideas you forgot you had. The connection: the newsletter audience (independent creators thinking about their workflows) is exactly the audience that would benefit from a friendly, applied take on Zettelkasten. Alex's newsletter is the ideal venue to translate academic PKM theory into practical creator advice. One is the research; the other is the audience.

**Present it like this:**
For each pair, show the surface-level difference and the deeper connection:

**Say:**
"I found some connections that might surprise you.

**Connection 1: 'Digital Minimalism - Key Concepts' and 'Bloom Brand Voice Notes.'**
These seem like they're in completely different categories — one is research about technology philosophy, the other is a client's brand guidelines. But look closer: both are about *intentionality*. Digital minimalism says 'be intentional about which technologies you adopt.' The Bloom brand voice says 'be intentional about how you communicate — warm but not fluffy, encouraging without patronizing.' Bloom's entire audience is people who want a more thoughtful relationship with their screens. The brand voice *embodies* the philosophy the content teaches. That's not a coincidence — it's a design principle Alex could make explicit.

**Connection 2: 'Creator Economy Trends' and the 'Newsletter Ideas Backlog.'**
One note has Alex analyzing the creator economy from the outside — stats, platforms, trends. The other has Alex living it from the inside — 1,200 subscribers, inconsistent publishing, wondering about a paid tier. Together, they tell a story that neither tells alone: what it actually feels like to be a working creator in 2026, not just what the data says about it. The newsletter ideas backlog has an entry about 'The Portfolio Career' — reflections on having multiple clients and projects. That's the human version of the creator economy data. Cross-pollinate these, and Alex has material for the most authentic newsletter issues yet.

**Connection 3: 'Zettelkasten Method' and the 'Newsletter Ideas Backlog.'**
On the surface, one is academic research about a German sociologist's note-taking system, and the other is Alex's running list of newsletter topics. But the audience for Alex's newsletter — independent creators figuring out their workflows — is exactly who would love a practical, jargon-free take on Zettelkasten. 'The Portable Idea System' entry on the backlog is practically begging for the Zettelkasten framework as its backbone. The research note is the raw material; the newsletter backlog is the venue. One could become the other."

**Action:**
For each non-obvious connection:
1. Add a [[link]] in Note A pointing to Note B, with a brief context note explaining the connection
2. Add a [[link]] in Note B pointing back to Note A, with similar context

Add these links naturally — in an existing "Connections" or "My Takes / Connections" section if one exists, or as a brief aside in the body text where the thematic overlap is most relevant. Include a short phrase explaining WHY you're making the connection (e.g., "This connects to [[Bloom Brand Voice Notes]] — both are fundamentally about intentionality, just applied to different domains").

**Say:**
"These are the connections that make a second brain genuinely powerful. Anyone can organize notes into folders. Anyone can tag things. But *seeing* that your Bloom brand voice guidelines and your digital minimalism research share a philosophy of intentionality? That's the kind of insight that leads to better writing, deeper thinking, and ideas that feel original because they draw from unexpected sources.

Your vault isn't just storing knowledge anymore. It's starting to *generate* it."

**Check:** Ask the student: "Did any of those connections surprise you? The thing about a knowledge graph is that it makes these cross-pollinations visible. When everything is linked, you can trace paths between ideas you'd never have put together on your own." Wait for their response. This is often an exciting moment — let them react.

---

### Step 5: See the Result (4 minutes)

**Say:**
"Now open the Graph View in Obsidian. You can find it a couple of ways:

- Click the **graph icon** in the left sidebar — it looks like a small network of connected dots, usually near the top of the icon bar
- Or use the **command palette**: press Cmd+P on Mac (Ctrl+P on Windows), type 'graph,' and select 'Graph view: Open graph view'

Go ahead and open it. I'll wait."

**Check:** STOP. Wait for the student to confirm they can see the graph view. If they have trouble finding it, offer guidance:
- "The graph icon is in the left sidebar — look for something that looks like three or four dots connected by lines."
- "If you can't spot the icon, try the command palette approach: Cmd+P, type 'graph', and click the option that appears."

Do NOT continue until the student confirms they see the graph.

**Say:**
"Every dot is a note. Every line is a connection. The clusters show you your knowledge domains. And it's only going to grow from here.

Let me point out a few things you should be seeing:

**The big dots are your hubs.** The MOCs — 'AI and Creative Work' and 'Client Work Dashboard' — should be the largest nodes, with lots of lines radiating out. That's by design. They're the highway system of your vault: everything connects through them.

**The clusters tell you what you think about.** You should see a group of notes around AI and creative work — the research notes, the Horizon project, the newsletter draft. Another cluster around client projects. Maybe one around digital wellness and the Bloom series. Those clusters are a visual map of your intellectual interests.

**The daily notes create a backbone.** Each daily note links to projects, ideas, and research. Over weeks and months, they form a timeline thread running through the entire graph — a visual record of your thinking over time.

**The lines that cross between clusters are the most valuable.** See any connections that bridge two different groups? A line from the AI research cluster to the Bloom wellness cluster? From a daily note to the newsletter backlog? Those bridges are where your most original ideas live. Cross-domain connections are where creative breakthroughs come from.

Click on any dot to see its connections light up. Try clicking on one of the notes we just connected — one of the former orphans. See how it's woven into the web now?

And remember those orphan notes from earlier? If any are still unconnected, they'll be floating off to the side, detached from everything. That visual — a dot with no lines — tells you exactly where your vault's gaps are."

**Check:** Give the student time to explore. Ask: "What do you see? Can you trace a path from the ClearPath async project all the way to the newsletter ideas? Click around and follow the connections." Wait for them to share what they notice.

---

### Step 6: Level 2 Complete (4 minutes)

**Say:**
"Take a breath. You just finished Level 2.

Let me tell you what you've built over these five modules:

- **Note types and templates** — so every new note starts with the right structure, whether it's a research note, a literature note, or a daily capture
- **Maps of Content** — so you can organize ideas by theme across your entire vault, not just within folders
- **Daily notes and a weekly review** — so you capture your working days and surface patterns you'd miss while living them
- **Progressive summarization** — so research becomes fuel for your own thinking, not just a pile of saved links and highlights
- **A knowledge graph** — so you can see the shape of your thinking, rescue orphaned ideas, and discover connections that surprise you

You've built the organizational backbone of your second brain. It's not a pile of notes anymore. It's a *system* — with structure, organization, rhythm, depth, and connections. And it grows smarter every time you add a note or create a link.

In Level 3, Claude becomes an active partner in all of this. Right now, you've been telling Claude what to do: 'read this note,' 'create this template,' 'search for this.' In Level 3, Claude starts understanding your vault well enough to help proactively — reading across notes to answer questions, writing new notes that integrate with your system, and processing your inbox captures into permanent knowledge.

The brain you've built? It's about to get a thinking partner.

Congratulations on completing Level 2! When you're ready for Level 3, type `/start-3-1`."

**Check:** Wait for the student to respond. Celebrate whatever they share. This is a milestone moment — let it land.

---

## Important Notes for Claude
- The Link Health Report in Step 2 MUST be generated from actual vault content. Read every note, find real `[[links]]`, and count them accurately. Do not fabricate connection counts or invent links that don't exist.
- When searching for links, account for aliased links like `[[Note Name|Display Text]]`. The link target is the part before the `|`. Both aliased and standard links count as connections.
- Orphan identification should be accurate. Check both directions: does the note contain outgoing `[[links]]`, AND do other notes link TO it? A note that is linked to by others but contains no outgoing links is NOT a true orphan (it's just a "sink"). A true orphan has zero connections in either direction.
- When updating notes to add links, preserve the original character, voice, and formatting. Add links naturally within existing text or in dedicated sections — don't rewrite the note's content.
- When adding backlinks to existing notes, be careful not to break formatting. Add links in natural places: existing "Connections," "Related," or "See also" sections, or as brief contextual mentions within the body text.
- The non-obvious connections in Step 4 should feel genuinely insightful, not forced. The suggested pairs (Digital Minimalism + Bloom Brand Voice, Creator Economy + Newsletter Backlog) are strong examples. If these connections have already been made in earlier modules, find other genuine cross-domain connections in the vault.
- The graph view moment in Step 5 is the visual payoff of the entire Level 2. Give the student time to explore. Don't rush.
- The Level 2 celebration should feel earned. Reference specific things built across all five modules, not just generic praise.
- If certain vault notes have already been modified by earlier modules (e.g., orphans already connected, research notes already summarized), acknowledge that and work with the current state. Don't pretend modifications haven't happened.

## Common Student Questions
- **"My graph looks really sparse. Is that normal?"** Absolutely. Your vault is still young — maybe thirty notes. The graph gets denser and more interesting as you add notes and connections over time. Even a small graph with clear clusters and bridges is a healthy graph. Come back and look at this again in a month.
- **"Can I rearrange the dots in the graph?"** You can drag dots around in Obsidian's graph view to explore, but the positions reset when you reopen it. The automatic layout is based on connections — notes with more shared links naturally cluster together, which is actually more revealing than any manual arrangement.
- **"Should every note link to every other related note?"** No. Link when the connection is meaningful — when knowing about Note A genuinely helps you understand or use Note B. Don't create links just to make the graph look denser. A few strong connections are worth more than dozens of weak ones.
- **"What are those dots that show up with a different color?"** In Obsidian's graph view, those are usually "unresolved" links — notes that are referenced by a [[link]] but don't actually exist as a note yet. Clicking one creates the note, which is actually a handy feature: it shows you ideas you've referenced but haven't developed yet.
- **"How often should I look at the graph?"** Whenever you're curious. Some people check it weekly during their review. Others open it when starting a new project to see what existing knowledge they can draw on. There's no schedule — it's a tool for exploration, not a dashboard to monitor.
- **"Can I search or filter the graph?"** Yes. In Obsidian's graph view, there are filter options at the top. You can search by note name, filter by tags, or show only certain folders. This is especially useful as your vault grows beyond fifty or a hundred notes.

## Success Criteria
- Student has seen a Link Health Report based on actual vault data (hubs, orphans, one-way streets)
- At least 2-3 orphan notes have been identified and connected with bidirectional links
- At least 2 non-obvious connections have been discovered, explained, and linked
- Student has opened and explored the Graph View in Obsidian
- Student understands what dots, lines, and clusters represent in the graph
- Student feels a genuine sense of accomplishment at completing Level 2
- Student understands that the graph is alive and grows with every note and link added
