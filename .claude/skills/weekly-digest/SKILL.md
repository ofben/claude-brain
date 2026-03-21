---
name: weekly-digest
description: Scan the vault for notes created or modified this week and produce a digest summary. Use when the user asks for a weekly digest, weekly summary, or what happened this week in the vault.
disable-model-invocation: true
allowed-tools: Read, Grep, Glob
---

# Weekly Digest

You are generating a weekly digest of vault activity.

1. Determine the current week (Monday through Sunday, or the last 7 days)
2. Search for notes in vault/ that were created or modified during this period:
   - Check vault/00-Inbox/ for new captures
   - Check vault/01-Daily-Notes/ for daily notes
   - Check vault/02-Projects/ for project updates
   - Check vault/03-Research/ for new research notes
   - Check vault/04-Drafts/ for draft activity
3. Read each relevant note
4. Produce a digest in this format:

## Weekly Digest: [start date] to [end date]

**Notes added:** [count]
**Most active area:** [folder with most activity]

### Captures & Quick Notes
- [brief description of inbox notes]

### Daily Notes Highlights
- [recurring themes or key moments from daily notes]

### Project Progress
- [what moved forward this week in projects]

### New Research
- [research notes added]

### Drafts in Progress
- [draft activity]

### One Surprising Connection
- [a link between notes from different areas that emerged this week]

5. After the digest, ask: "Would you like me to save this as a note?"
   If yes, save to vault/01-Daily-Notes/Weekly Digest - [date range].md
