---
description: "Generate a project brief by gathering notes from a project folder"
---

Generate a project brief for the user. If they specified a project or client name, use it. If not, list the folders in `vault/02-Projects/` and ask them to pick one.

Follow these steps:

1. Identify the project from the user's input or ask them to choose from `vault/02-Projects/`.
2. Search the vault for all notes related to this project:
   - Check the project folder in `vault/02-Projects/[project folder]/`.
   - Search daily notes and inbox for mentions of the project name.
   - Look in Drafts, Research, and References for related notes.
3. Read all relevant notes.
4. Generate a project brief and display it (don't create a separate note unless asked):

   **Project Brief: [Project Name]**
   **Generated:** [today's date]

   ## Assignment
   [What the project is about, based on project notes]

   ## Angle
   [The approach or perspective being taken]

   ## Key Points to Cover
   [Important items gathered from project notes and research]

   ## Sources and Research
   [Research notes and references connected to this project]

   ## Notes
   [Open questions, blockers, next steps, and other relevant context]

5. Ask if the user wants to save this as a note in the project folder.
