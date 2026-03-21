---
description: "Generate a weekly review by synthesizing this week's daily notes"
---

Perform a weekly review. Follow these steps:

1. Determine the current week (Monday through Sunday, or the last 7 days).
2. Find all daily notes in `vault/01-Daily-Notes/` from this period.
3. Read each daily note carefully.
4. Create a weekly review note at `vault/01-Daily-Notes/Weekly Review - [start date] to [end date].md` with this format:

---
week: [start date] to [end date]
date: [today's date]
tags: [weekly-review]
---

# Weekly Review — [start date] to [end date]

## What Got Done
[Things completed or meaningfully advanced]

## What Didn't Get Done
[Items that were planned but didn't happen]

## Key Insights This Week
[Interesting thoughts and observations from the week]

## Next Week Priorities
[Based on this week, what should next week focus on?]

## Open Questions
[Things that came up but haven't been resolved yet]


5. After creating the review, give the user a brief verbal summary of the week's highlights.
6. Mention any ideas from the daily notes that seem worth developing further.
