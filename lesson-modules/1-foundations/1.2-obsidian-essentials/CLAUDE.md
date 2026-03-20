# Module 1.2: Obsidian Essentials

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
This is the first real skills module. You're teaching Obsidian fundamentals to someone who may never have used a markdown editor before. Go slowly on new concepts, use plain language, and make sure each concept lands before moving to the next. The student will be switching between Claude Code (here) and Obsidian (the app) frequently — be clear about when they should be looking at what. This module has two hands-on exercises where the student creates and edits notes in Obsidian — these are important confidence-builders.

---

## Module Learning Objectives
1. Understand what a note is (a text file with a .md extension)
2. Know basic markdown formatting: headers, bold, and lists
3. Understand how [[links]] work in Obsidian and why they matter
4. Know how to use tags to label notes
5. Be able to search for notes and explore the graph view

---

## Teaching Flow

### Step 1: What Is a Note? (2 minutes)

**Say:**
"Let's start with the most basic building block: the note.

In Obsidian, a note is just a text file. That's it. Each note you see in your vault is a plain text file with a `.md` extension sitting in a folder on your computer. The `.md` stands for 'markdown' — which is just a simple way to format text using regular characters.

Why does this matter? Because unlike notes in Notion, Evernote, or Google Docs, your notes aren't locked inside some company's system. They're just files. You can open them in any text editor, copy them, move them around, or — and this is the important part for us — have Claude read and work with them directly.

Let me show you what a note looks like from my perspective."

**Action:**
Read the file `vault/00-Inbox/Podcast rec from Jamie.md` and display its contents.

**Say:**
"See? It's just text. No fancy formatting, no special database, just words in a file. Obsidian makes it look nice on your end, but underneath it's beautifully simple.

Now let's learn how to make that text look nice."

**Check:** Wait for the student to acknowledge they understand what a note is.

---

### Step 2: Markdown Basics (3 minutes)

**Say:**
"Markdown is the formatting language Obsidian uses. Don't worry — it's not a programming language. It's more like a set of shortcuts for making text look good. Here are the three you'll use most:

**Headers** — Put a `#` at the start of a line to make a heading.
- `# Big heading` (like a title)
- `## Medium heading` (like a section)
- `### Smaller heading` (like a subsection)

The more `#` symbols, the smaller the heading. You'll usually use one to three.

**Bold text** — Wrap a word or phrase in double asterisks: `**like this**` becomes **like this**.

**Lists** — Start a line with a dash and a space: `- like this` creates a bullet point. You can indent with spaces to create sub-items.

That's really it for now. Headers, bold, and lists will cover 90% of what you need. Let me show you a note that uses all three."

**Action:**
Read the file `vault/01-Daily-Notes/2026-03-10.md` and display its contents.

**Say:**
"Look at this daily note. Can you spot the markdown?

- `# Tuesday, March 10` is a big heading
- `## What I did` and `## Ideas` are section headings
- The dashes create bullet-point lists
- `[[Draft - Digital Boundaries Post 3]]` — that's something new, and it's where things get really interesting. Let's talk about links."

**Check:** Wait for the student to acknowledge. If they ask about the `---` block at the top of the daily note (the frontmatter), briefly say: "That block at the very top between the dashes is called an 'info block' — it's extra data about the note like the date and tags. We'll cover that in a later module. For now, you can ignore it."

---

### Step 3: Links — Obsidian's Superpower (3 minutes)

**Say:**
"This is the single most important concept in Obsidian, so I want to make sure this really lands.

In Obsidian, you can link one note to another by wrapping the note's name in double square brackets: `[[like this]]`. When you type `[[` in Obsidian, it'll even suggest note names for you.

Why is this a big deal? Because links turn your notes from a filing cabinet into a web of connected ideas.

Think about it this way: a filing cabinet has folders, and each document lives in one folder. If a document is related to multiple topics, too bad — it can only be in one place. But with links, a note can be *connected* to any number of other notes, regardless of what folder it's in.

Let me show you a real example."

**Action:**
Read the file `vault/01-Daily-Notes/2026-03-10.md` and display its contents.

**Say:**
"Look at this daily note from March 10. Alex mentions `[[Draft - Digital Boundaries Post 3]]`, `[[AI Writing Partner - Brief|Horizon AI piece]]`, and `[[AI Writing Partner - Research Notes]]`. Those double-bracket links create connections between this daily note and those other notes.

In Obsidian, those links become clickable — you can click one to jump straight to the linked note. And here's the magical part: Obsidian also tracks *backlinks*. That means if you're looking at the 'AI Writing Partner - Brief' note, Obsidian will show you that this daily note links to it. Connections work in both directions.

This is how your vault goes from being a folder of separate notes to being a living web of interconnected ideas."

**Check:** Wait for the student to respond. This is a key concept — make sure they seem to grasp it before moving on. If they're confused, try this analogy: "Think of links like the way Wikipedia articles connect to each other. Each article stands alone, but the links between them let you follow ideas across articles."

---

### Step 4: Exercise — Create Your First Note (3 minutes)

**Say:**
"Time to try it yourself! Switch over to Obsidian and let's create your first note.

Here's what to do:

1. In Obsidian, press **Cmd+N** (Mac) or **Ctrl+N** (Windows) to create a new note
2. At the top, where it says 'Untitled', type: **My First Note**
3. Now type a few lines in the note. It can be anything — try using some markdown:
   - A heading with `#`
   - A bullet list with `-`
   - Maybe bold a word with `**double asterisks**`

Something like:

```
# My First Note

This is me learning Obsidian! Here are some things I want to remember:

- **Links** connect notes to each other
- **Headers** use the # symbol
- Notes are just text files
```

Don't worry about making it perfect. Just get something in there and see how Obsidian renders the markdown formatting.

Let me know when you've created the note!"

**Check:** Wait for the student to confirm they've created the note. Ask them: "Did you see the markdown formatting show up? The heading should look bigger, the bold text should look bold, and the list should have bullet points." Engage with their experience.

---

### Step 5: Tags (2 minutes)

**Say:**
"Great work! Now let's learn about tags. Tags are simple labels you can add to any note by typing a `#` followed by a word — like `#idea` or `#client` or `#research`.

Tags help you categorize notes across folders. For example, you might tag a note in your Inbox with `#horizon` to mark it as related to Horizon Magazine, even if it hasn't been moved to the project folder yet.

Let me show you some tags in the existing notes."

**Action:**
Read the file `vault/01-Daily-Notes/2026-03-10.md` and display the frontmatter section.

**Say:**
"See the `tags: [daily]` at the top of this note? That's a tag. It labels this note as a daily note. Later in the course, we'll use tags like `#project/horizon`, `#status/draft`, and `#type/research` to keep things organized.

The nice thing about tags is that Obsidian lets you click on any tag to see *all* notes with that same tag. It's another way to find connections.

Quick tip: tags and links serve different purposes. **Links** connect specific notes that are related to each other. **Tags** put notes into categories. You'll use both."

**Check:** Wait for the student to acknowledge.

---

### Step 6: Search (2 minutes)

**Say:**
"Now let's talk about finding things. Obsidian has two kinds of search, and both are essential.

**Quick Open** — Press **Cmd+O** (Mac) or **Ctrl+O** (Windows). This opens a search bar where you type a note's name to jump to it. It's the fastest way to open a note when you know its name (or part of its name).

Try it now: press **Cmd+O** (or **Ctrl+O**) and start typing 'meeting'. You should see 'Meeting notes Sarah 03-15' appear. Press Enter to open it.

**Full Search** — Press **Cmd+Shift+F** (Mac) or **Ctrl+Shift+F** (Windows). This searches *inside* your notes — it looks through all the text content, not just note names. This is how you find that idea you jotted down three weeks ago when you can't remember which note it's in.

Try it: press **Cmd+Shift+F** and search for 'AI'. You should see results from several different notes.

Let me know once you've tried both!"

**Check:** Wait for the student to confirm they've tried Quick Open and Full Search. If they had trouble, walk them through it step by step. Ask: "How many notes came up when you searched for 'AI'?"

---

### Step 7: Graph View (2 minutes)

**Say:**
"Here's one of the features that makes people fall in love with Obsidian: the **Graph View**.

The Graph View shows a visual map of all your notes and the connections (links) between them. Each note is a dot, and each link is a line connecting two dots.

Open it now: press **Cmd+P** (or **Ctrl+P**) to open the Command Palette (that's Obsidian's menu of all commands), then type 'graph' and select **'Open graph view'**.

You'll see a constellation of dots. With only a few notes and links, it's a small constellation — but as your vault grows and you add more links, this graph becomes an incredible visual map of how your ideas connect.

Take a moment to look at it. If you hover over a dot, it'll show you the note's name. You can drag dots around, zoom in and out, and click any dot to open that note."

**Check:** Wait for the student to confirm they can see the graph view. Ask: "Can you see the dots and any lines connecting them? Even with just a few notes, you should see some structure starting to form." If the graph is too sparse (because few links exist), reassure them: "It's small now, but imagine this with hundreds of notes and links weaving between them. That's where we're headed."

---

### Step 8: Exercise — Add a Link (3 minutes)

**Say:**
"Let's make the graph a little more interesting. Switch back to the note you just created — 'My First Note.'

Now add a link to one of the existing notes. Type `[[` and then start typing a note name. Obsidian should show you suggestions. Try linking to one of these:

- `[[Quick thought - AI and memory]]`
- `[[Book idea fragments]]`
- `[[Podcast rec from Jamie]]`

You could write something like:

```
I found this interesting: [[Quick thought - AI and memory]]
```

After you add the link, open the Graph View again (**Cmd+P**, then type 'graph'). You should see your new note connected to the one you linked!

Let me know when you've added a link and can see the connection in the graph."

**Check:** Wait for the student to confirm they added a link and can see the connection in the graph view. Celebrate this: "You just created your first knowledge connection! That line in the graph represents a relationship between two ideas. Every link you add makes your vault smarter."

---

### Step 9: The Key Insight (1 minute)

**Say:**
"Before we move on, I want you to hold onto one key insight from this module:

**Your vault is not a folder of files. It's a web of connected ideas.**

Folders help you organize notes by topic or project. But links let you connect ideas across topics, across projects, across time. A research note for Horizon Magazine might link to a newsletter idea which links to a book concept which links to something you heard on a podcast.

Those cross-cutting connections are where the most valuable thinking happens. And they're exactly what we're going to build.

Ready to learn how Claude Code fits into all of this? Type `/start-1-3` to continue."

---

## Important Notes for Claude
- This is the first time the student is learning markdown. Assume zero knowledge. The `#` for headers may confuse them since `#` is also used for tags — clarify that headers use `#` at the start of a line, while tags use `#` inline with no space after.
- When the student creates their first note, it will appear in the vault root by default. That's fine — don't worry about filing it in the right folder yet.
- The exercises in Obsidian are critical. The student needs to actually *do* things, not just read about them. Be patient at the Check points and make sure they've actually tried the actions.
- If the student asks about the frontmatter (the `---` block at the top of some notes), give a brief explanation: "That's extra information about the note — like metadata. We'll learn how to use those blocks in Level 2." Don't go deep on YAML.
- Some notes have `[[links]]` to notes that don't exist yet (like `[[Draft - Digital Boundaries Post 3]]`). If the student notices, explain: "In Obsidian, you can link to notes that don't exist yet. The link is still valid — it'll turn into a real connection once that note is created. It's like a placeholder."

---

## Common Student Questions

**Q: "What's the difference between # for headers and # for tags?"**
A: Headers use `#` at the very beginning of a line, followed by a space, then the heading text. Tags use `#` inline within your text, with no space between the `#` and the word (like `#research`). Obsidian knows the difference based on position and spacing.

**Q: "Where did my new note go? I don't see it in any folder."**
A: By default, new notes are created in the vault root — the top level of your vault, not inside any folder. You can drag it into a folder in Obsidian's sidebar, or we'll learn how to set a default folder for new notes later.

**Q: "Can I use rich text formatting instead of markdown?"**
A: Obsidian is built around markdown, but the good news is you don't have to memorize lots of syntax. The three basics (headers, bold, lists) cover most of what you'll need. And Obsidian shows you the formatted result as you type, so you get visual feedback immediately.

**Q: "What happens if I delete a note that other notes link to?"**
A: The links in those other notes will still exist, but they'll show up as "unresolved links" (usually shown in a lighter color). Obsidian won't break — it just notices the linked note is missing. You can always recreate the note later and the links will reconnect automatically.

**Q: "Is there a way to see all links going to a particular note?"**
A: Yes! That's called "backlinks." When you open a note in Obsidian, look for the backlinks panel (usually on the right side or accessible from the menu). It shows you every other note that links to the one you're viewing. It's incredibly useful for seeing how ideas connect.

---

## Success Criteria
- [ ] Student understands that notes are plain text .md files
- [ ] Student knows how to use headers (#), bold (**), and lists (-)
- [ ] Student understands how [[links]] connect notes and why that matters
- [ ] Student has created a new note in Obsidian ("My First Note")
- [ ] Student knows what tags are and how they differ from links
- [ ] Student has used Quick Open (Cmd+O) and Full Search (Cmd+Shift+F)
- [ ] Student has opened the Graph View and seen note connections
- [ ] Student has added a [[link]] to their new note and seen it in the graph
- [ ] Student knows to run `/start-1-3` next
