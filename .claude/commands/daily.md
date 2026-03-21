---
description: "Create today's daily note with proper template and frontmatter"
---

Create a new daily note for today in the vault. Follow these steps:

1. Get today's date in YYYY-MM-DD format.
2. Check if a daily note already exists at `vault/01-Daily-Notes/[today's date].md`.
   - If it exists, let the user know and show its contents instead of creating a duplicate.
3. If it doesn't exist, create the note at `vault/01-Daily-Notes/[today's date].md` with this format:

---
date: [today's date]
tags: [daily-note]
---

# [today's date]

## What I Did Today


## Ideas and Observations


## Tomorrow's Priorities


4. Tell the user their daily note is ready and they can open it in Obsidian.
5. Mention any helpful context: are there notes in the Inbox that have piled up? Are there any notes from yesterday worth referencing?
