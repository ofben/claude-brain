#!/bin/bash
# verify-clone.sh — structural check for DIST-06 scripted verification
# Verifies that the repo structure is complete and correct for distribution.
# Run from repo root: bash .planning/phases/06-distribution/verify-clone.sh
set -e

echo "=== Clone Verification Script ==="
echo ""

# Use the current directory as the test target (works for both real clones and local testing)
REPO_DIR="${1:-.}"
cd "$REPO_DIR"

FAIL=0
pass() { echo "  [OK] $1"; }
fail() { echo "  [FAIL] $1"; FAIL=1; }

echo "Checking required directories..."
for dir in vault lesson-modules creator-context .claude/commands .claude/agents .claude/skills; do
  if [ -d "$dir" ]; then
    pass "$dir/"
  else
    fail "$dir/ missing"
  fi
done

echo ""
echo "Checking required root files..."
for file in README.md LICENSE CLAUDE.md course-structure.json .gitignore; do
  if [ -f "$file" ]; then
    pass "$file"
  else
    fail "$file missing"
  fi
done

echo ""
echo "Checking .gitignore effectiveness..."

# Verify workspace.json is excluded by .gitignore
if git check-ignore -q vault/.obsidian/workspace.json 2>/dev/null; then
  pass "vault/.obsidian/workspace.json is excluded by .gitignore"
else
  fail "vault/.obsidian/workspace.json is NOT excluded by .gitignore"
fi

# Verify .obsidian config files are NOT excluded
if git check-ignore -q vault/.obsidian/app.json 2>/dev/null; then
  fail "vault/.obsidian/app.json is incorrectly excluded by .gitignore"
else
  pass "vault/.obsidian/app.json is NOT excluded (correct)"
fi

echo ""
echo "Checking Obsidian config files are present..."
for file in vault/.obsidian/app.json vault/.obsidian/appearance.json; do
  if [ -f "$file" ]; then
    pass "$file"
  else
    fail "$file missing — Obsidian config incomplete"
  fi
done

echo ""
echo "Checking slash commands..."

# Count start commands (expect 25: 0.1-0.2, 1.1-1.6, 2.1-2.5, 3.1-3.5, 4.1-4.7)
CMD_COUNT=$(ls .claude/commands/start-*.md 2>/dev/null | wc -l | tr -d ' ')
if [ "$CMD_COUNT" -ge 25 ]; then
  pass "$CMD_COUNT start commands found (expected 25+)"
else
  fail "Only $CMD_COUNT start commands found (expected 25+)"
fi

# Verify utility commands
for cmd in .claude/commands/daily.md .claude/commands/weekly-review.md .claude/commands/process-inbox.md .claude/commands/project-brief.md; do
  if [ -f "$cmd" ]; then
    pass "$cmd"
  else
    fail "$cmd missing"
  fi
done

echo ""
echo "Checking vault folders exist..."
for dir in vault/00-Inbox vault/01-Daily-Notes vault/02-Projects vault/03-Research vault/04-Drafts vault/05-References vault/06-Templates vault/07-MOCs vault/08-Published; do
  if [ -d "$dir" ]; then
    pass "$dir/"
  else
    fail "$dir/ missing"
  fi
done

# Verify .gitkeep in empty folders
for dir in vault/07-MOCs vault/08-Published; do
  if [ -f "$dir/.gitkeep" ]; then
    pass "$dir/.gitkeep"
  else
    fail "$dir/.gitkeep missing (folder won't survive clone)"
  fi
done

echo ""
echo "Checking README content..."
if grep -q "API costs" README.md; then
  pass "README contains API cost estimate"
else
  fail "README missing API cost estimate"
fi

if grep -q "kepano/obsidian-skills" README.md; then
  pass "README acknowledges kepano/obsidian-skills"
else
  fail "README missing kepano/obsidian-skills acknowledgment"
fi

if grep -q "## Prerequisites" README.md || grep -q "## Requirements" README.md; then
  pass "README has prerequisites/requirements section"
else
  fail "README missing prerequisites section"
fi

echo ""
echo "Checking LICENSE content..."
if grep -q "MIT License" LICENSE && grep -q "Creative Commons" LICENSE; then
  pass "LICENSE has dual MIT + CC BY 4.0 structure"
else
  fail "LICENSE missing expected license sections"
fi

echo ""
echo "================================="
if [ "$FAIL" -eq 0 ]; then
  echo "Structural check PASSED."
  echo "Proceed to manual Module 0.1 walkthrough."
else
  echo "Structural check FAILED. Fix issues above."
  exit 1
fi
