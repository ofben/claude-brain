# Module 4.2: Auto-Organize Hook

**Teaching Script for Claude Code**

> **Before starting:** Read `.claude/SCRIPT_INSTRUCTIONS.md` for critical instructions

---

## Your Role
You are helping the student build their first real hook — one that automatically adds frontmatter to new notes. This is a hands-on module. The student learned what hooks are in 4.1; now they're building one. Be encouraging and demystify the process. The student should feel like they're assembling something from clear, understandable parts — not writing mysterious code.

---

## Module Learning Objectives
1. Build a working shell script that checks for and adds frontmatter to notes
2. Configure a PostToolUse hook in the settings file
3. Test the hook by creating a note and watching the hook add frontmatter automatically
4. Modify the hook to customize the automatically-added frontmatter
5. Understand how to extend hooks for other organizational tasks

---

## Teaching Flow

### Step 1: What We're Building (2 minutes)

**Say:**
"In the last module, we talked about hooks as email rules for Claude Code. Now let's build one.

Here's what we want: Every time Claude creates or writes a note in your vault, a hook should check whether that note has frontmatter — that info block at the top of the note with the title, date, and tags. If the frontmatter is missing, the hook automatically adds it.

Why does this matter? Because frontmatter is what keeps your vault organized. It's what lets you search by tags, sort by date, and know at a glance what a note is about. But adding it manually every time is tedious and easy to forget. So let's make it automatic.

We'll do this in two steps:
1. First, create a small script — a set of instructions — that knows how to check for and add frontmatter
2. Then, wire that script up as a hook so it runs automatically

Ready to build?"

**Check:** Wait for the student to confirm they're ready.

---

### Step 2: Understanding the Script (3 minutes)

**Say:**
"Before we create anything, let me explain what our script will do in plain language:

1. It receives a message from Claude Code that includes the name of the note that was just written
2. It checks: is this note inside the `vault/` folder? (We only care about vault notes, not other files)
3. It checks: does the note already have frontmatter? (Frontmatter starts with `---` on the very first line)
4. If the note is in the vault AND doesn't have frontmatter, it adds a basic frontmatter block with:
   - A title (based on the note's name)
   - Today's date
   - An empty tags list ready to be filled in

That's it. Four steps. Nothing magical — just a checklist that runs automatically.

The script will live in a folder called `.claude/scripts/` — that's a good place to keep these kinds of helper tools organized."

**Check:** Wait for the student to acknowledge the plan.

---

### Step 3: Create the Script (5 minutes)

**Say:**
"Let me create the script now. I'll put it in `.claude/scripts/` so it's neatly organized alongside your other Claude Code configuration."

**Action:**
1. Create the folder `.claude/scripts/` if it doesn't exist.
2. Create the file `.claude/scripts/add-frontmatter.sh` with the following content:

```bash
#!/bin/bash

# Auto-Organize Hook: Add frontmatter to new vault notes
# This script runs after Claude writes a file.
# It receives information about what was written via a message from Claude Code,
# then checks if frontmatter is needed and adds it.

# Read the message from Claude Code and extract the file path
INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | python3 -c "
import sys, json
data = json.load(sys.stdin)
print(data.get('tool_input', {}).get('file_path', ''))
" 2>/dev/null)

# Only process markdown files in the vault folder
if [[ ! "$FILE_PATH" == */vault/*.md ]]; then
  exit 0
fi

# Check if the file already has frontmatter (starts with ---)
FIRST_LINE=$(head -n 1 "$FILE_PATH" 2>/dev/null)
if [[ "$FIRST_LINE" == "---" ]]; then
  exit 0
fi

# Generate a title from the filename
FILENAME=$(basename "$FILE_PATH" .md)
TODAY=$(date +%Y-%m-%d)

# Create frontmatter and prepend it to the file
FRONTMATTER="---
title: \"$FILENAME\"
date: $TODAY
tags: []
---

"

# Add frontmatter to the top of the file
TEMP_FILE=$(mktemp)
printf '%s' "$FRONTMATTER" > "$TEMP_FILE"
cat "$FILE_PATH" >> "$TEMP_FILE"
mv "$TEMP_FILE" "$FILE_PATH"
```

3. Make the script executable: `chmod +x .claude/scripts/add-frontmatter.sh`

**Say:**
"Done! I've created the script. Let me walk you through what it does — no coding knowledge required:

- First, it reads a message from Claude Code that tells it which note was just written
- Then it asks two questions: Is this a `.md` note in the vault? Does it already have frontmatter?
- If the note is in the vault and has no frontmatter, it adds a block at the top with a title, today's date, and an empty tags list
- If the note already has frontmatter, or isn't in the vault, the script does nothing — it just quietly steps aside

Think of it like a helpful assistant standing at the entrance to your vault, checking that every new note has its name badge on."

**Check:** Wait for the student to acknowledge they understand what the script does.

---

### Step 4: Configure the Hook (4 minutes)

**Say:**
"Now we need to tell Claude Code to actually *run* this script. That's where the hook configuration comes in. We need to add a hook to the settings file that says: 'After Claude uses the Write tool, run the frontmatter script.'

Let me show you what the hook configuration looks like, and then I'll add it."

**Action:**
Update `.claude/settings.local.json` to add the hooks configuration. Keep all existing permissions and add the hooks section. The file should look like this after the update (with whatever permissions already exist preserved):

```json
{
  "permissions": {
    "allow": [
      "WebFetch(domain:api.github.com)",
      "WebFetch(domain:raw.githubusercontent.com)",
      "Bash(curl:*)"
    ]
  },
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write",
        "hooks": [
          {
            "type": "command",
            "command": ".claude/scripts/add-frontmatter.sh"
          }
        ]
      }
    ]
  }
}
```

**Say:**
"Here's what I just added to the settings. Let me translate it:

- **`hooks`** — This is the section where all hooks live
- **`PostToolUse`** — This hook fires *after* Claude uses a tool (in this case, after writing)
- **`matcher: Write`** — This narrows it down: only fire when the *Write* tool is used (not for every tool)
- Inside the matcher, there's a `hooks` list — that's where you put the commands to run. Each command has a type (we're using `command` to run a script) and a path to the script

Reading it as a sentence: 'After Claude writes something, run the add-frontmatter script.'"

**Check:** Wait for the student to acknowledge. They might have questions about the format — answer them plainly.

---

### Step 5: Test the Hook (5 minutes)

**Say:**
"The moment of truth! Let's test this hook by creating a new note *without* frontmatter and seeing if the hook adds it automatically.

I'm going to create a simple note in your inbox — just a plain thought with no frontmatter at the top."

**Action:**
Create a note at `vault/00-Inbox/Test note - hook demo.md` with this content (no frontmatter):

```
This is a test note to see if the auto-organize hook works. If everything is set up correctly, this note should automatically get frontmatter added to the top — with a title, today's date, and an empty tags list.

Pretty cool if it works!
```

**Say:**
"I just created a note called 'Test note - hook demo' in your Inbox — and I deliberately left out the frontmatter. Now let's check if the hook did its job..."

**Action:**
Read the file `vault/00-Inbox/Test note - hook demo.md` and display its contents.

**Say (if frontmatter was added successfully):**
"Look at that! The hook worked. The note now has frontmatter at the top with:
- A title pulled from the note's name
- Today's date
- An empty tags list ready for you to fill in

I didn't add that frontmatter. The hook did, automatically, the moment I created the note. Every note you create in the vault from now on will get this treatment — no more forgetting to add frontmatter.

Go ahead and check in Obsidian — open the 'Test note - hook demo' in your Inbox folder. You should see the frontmatter right there at the top."

**Say (if frontmatter was NOT added — fallback):**
"Hmm, it looks like the hook didn't fire on this one. That can happen — hooks sometimes need Claude Code to be restarted to pick up new settings. That's totally normal.

But here's the important thing: the *system* is in place. The script exists, the hook is configured, and it will work the next time Claude Code loads these settings. Let me manually add the frontmatter this time so you can see what the end result looks like, and the hook will handle it automatically going forward."

(If fallback: manually add the frontmatter to the test note and show the result.)

**Check:** Wait for the student to confirm they can see the note in Obsidian, ideally with frontmatter.

---

### Step 6: Exercise — Customize the Hook (4 minutes)

**Say:**
"Now let's customize the hook. Right now it adds a title, date, and empty tags. But what if you wanted every note Claude creates to automatically get a special tag — say, `created-by-claude` — so you can always tell which notes Claude helped create versus ones you wrote yourself?

Let's modify the script to do that."

**Action:**
Update the script at `.claude/scripts/add-frontmatter.sh` — change the tags line in the FRONTMATTER block from `tags: []` to `tags: [created-by-claude]`.

**Say:**
"Done! I updated the script so that the tags line now includes `created-by-claude` by default. Let me test it with another note."

**Action:**
Create a note at `vault/00-Inbox/Another test note.md` with this content (no frontmatter):

```
Just testing the updated hook. This note should get frontmatter with the created-by-claude tag.
```

Then read the file back and display it.

**Say:**
"Now every note Claude creates will be automatically tagged with `created-by-claude`. You could use this to:
- Search your vault for all Claude-created notes
- See at a glance in Obsidian which notes have AI assistance
- Track how much of your vault is collaborative

You can customize this further anytime — add more default tags, change the frontmatter format, whatever fits your workflow."

**Check:** Wait for the student to acknowledge the customization.

---

### Step 7: What Else Could Hooks Do? (2 minutes)

**Say:**
"Before we move on, let's brainstorm. Now that you've seen how hooks work, what other automatic behaviors might be useful for your vault?

Here are a few ideas to get you thinking:

- **Link validation:** After creating a note, check that any `[[links]]` in it actually point to existing notes
- **Auto-tagging:** Scan a new note's content and suggest tags based on what it's about
- **Inbox alert:** If the Inbox folder has more than 10 notes, remind you to process it
- **Template enforcement:** Make sure notes in certain folders follow the right template format
- **Naming conventions:** Automatically adjust note names to follow your preferred format

Can you think of something that would help *your* workflow? Something you keep forgetting to do, or something that's tedious every time?"

**Check:** Wait for the student to share an idea or respond to the brainstorm. Engage with their idea — validate it, suggest how it could work as a hook. Don't build it now, but acknowledge the thinking.

---

### Step 8: Wrap Up (1 minute)

**Say:**
"Excellent work! You just built your first automation. Let's recap what you did:

1. Created a script that checks for and adds frontmatter to vault notes
2. Configured a PostToolUse hook that triggers the script after every write
3. Tested it and saw it work in real time
4. Customized it to add a `created-by-claude` tag automatically

This is the bridge between a manual workflow and an automated one. You set up the rule once, and it runs forever. Your vault's organizational standards are no longer something to remember — they're something that just happens.

Next up, we're going to supercharge your vault maintenance with the Librarian agent. Type `/start-4-3` to continue."

---

## Important Notes for Claude
- Actually create the script file and update the settings. This is a hands-on module — the student should see real files being created.
- The hook may or may not fire during this session (depending on whether Claude Code reloads settings mid-session). Be prepared for both outcomes. The fallback path in Step 5 handles the case where it doesn't fire.
- If the hook doesn't fire, don't make the student feel like something went wrong. Frame it as normal ("hooks pick up new settings on restart") and show the end result manually.
- When showing the script, don't expect the student to read bash code. Always translate it into plain language.
- The script reads the file path from stdin JSON using python3. This is the correct Claude Code hook API — hooks receive a JSON message via stdin, not via environment variables.
- Keep the `.claude/scripts/` folder creation quiet — don't make a big deal about creating a folder.

---

## Common Student Questions

**Q: "What if I don't want frontmatter on every note?"**
A: You can make the hook smarter — for example, only add frontmatter to notes in certain folders, or skip notes with specific names. We kept it simple for now, but the script can be customized.

**Q: "Can I turn off the hook later?"**
A: Absolutely. Just remove the hook section from the settings file, or ask me to do it. Hooks are easy to add and remove.

**Q: "What happens if the script has an error?"**
A: If the script fails, your note is still fine — the hook runs *after* the note is created, so the note itself is never at risk. The worst case is that frontmatter doesn't get added, which you'd notice and we could fix.

**Q: "Can I have multiple hooks?"**
A: Yes! You can have as many hooks as you want. They'll all run when their triggers match. We'll keep things simple for the course, but in practice you could have several hooks working together.

**Q: "Does the hook run when I edit a note in Obsidian?"**
A: No — this hook only fires when Claude writes a note. If you create or edit notes directly in Obsidian, the hook won't run. It's specific to Claude's actions.

---

## Success Criteria
- [ ] Script file exists at `.claude/scripts/add-frontmatter.sh`
- [ ] Script is executable
- [ ] Hook is configured in `.claude/settings.local.json`
- [ ] Student has seen the hook in action (or seen the expected result)
- [ ] Student successfully customized the hook to add a custom tag
- [ ] Student can brainstorm other potential hooks
- [ ] Student knows to run `/start-4-3` next
