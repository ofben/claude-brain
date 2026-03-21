---
description: "Triage everything in the Inbox — categorize, suggest actions, and help file notes"
---

Process the user's Inbox. Follow these steps:

1. List all notes in `vault/00-Inbox/`.
2. If the Inbox is empty, congratulate the user on a clean inbox and stop.
3. For each note in the Inbox:
   a. Read its contents.
   b. Categorize it as one of: Quick Thought, Meeting Notes, Research Lead, Project Task, Reference, or Other.
   c. Suggest where it should go (which vault folder and why).
   d. Note if it connects to any existing project or note in the vault.

4. Present a triage summary like this:

   **Inbox Triage — [count] notes to process:**

   For each note:
   - **[Note name]** -> [Category]
     - Suggested destination: [folder]
     - Connected to: [existing notes, if any]
     - Recommended action: [file it, expand it, merge with another note, or archive it]

5. Ask the user which notes they'd like to process now.
6. For each note they choose:
   - Move it to the suggested folder (or wherever they prefer).
   - Add frontmatter if missing.
   - Add links to related notes.
   - Confirm the move.

7. After processing, report how many notes were handled and how many remain.
