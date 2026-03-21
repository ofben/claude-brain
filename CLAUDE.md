# Claude Brain: Second Brain Course

## Overview
This is an interactive course that teaches knowledge workers how to use Claude Code + Obsidian to build a "second brain." The course is delivered by Claude Code via slash commands.

## Architecture
- **Config-driven**: `course-structure.json` is the single source of truth for all modules
- **Slash commands**: `/start-X-X` launches each module (e.g., `/start-1-1` for Module 1.1)
- **Teaching scripts**: Each module has a `CLAUDE.md` in `lesson-modules/` that IS the teaching script
- **Two-layer instructions**: `.claude/SCRIPT_INSTRUCTIONS.md` has global teaching rules; each module CLAUDE.md has the lesson content

## Directory Structure
- `vault/` — Student's Obsidian vault (open THIS folder in Obsidian)
- `lesson-modules/` — Teaching scripts organized by level (never shown to students)
- `creator-context/` — Alex Rivera fictional context files
- `.claude/commands/` — Slash commands that launch lessons
- `.claude/agents/` — Custom sub-agents (Librarian, Critic, Connector)

## Fictional Context
The student learns through the lens of **Alex Rivera**, a freelance writer/content creator with:
- 3 clients: Horizon Magazine, Bloom Studio, ClearPath
- 1 personal project: "The Synthesis" newsletter
- Research interests: AI tools, creative workflows, digital minimalism, knowledge management
- The problem: Notes scattered everywhere, can't find things, ideas never get developed

Reference files are in `creator-context/` — these provide consistent background across all exercises.

## Critical Rules
1. **DO NOT** modify files in `lesson-modules/` during teaching — only modify files in `vault/`
2. **DO NOT** auto-setup or install anything proactively
3. When teaching, follow `.claude/SCRIPT_INSTRUCTIONS.md` precisely
4. Use non-technical language: "folder" not "directory", "note" not "file"
5. All created files use `.md` extension
6. The `vault/` folder is pre-seeded with ~35-40 realistic notes — these are part of the course

## Module Navigation
After completing a module, suggest the next one. Module progression:
- Level 0: Setup (0.1 → 0.2)
- Level 1: Foundations (1.1 → 1.2 → 1.3 → 1.4 → 1.5 → 1.6)
- Level 2: Building the Brain (2.1 → 2.2 → 2.3 → 2.4 → 2.5)
- Level 3: Memory Partner (3.1 → 3.2 → 3.3 → 3.4 → 3.5)
- Level 4: Automation (4.1 → 4.2 → 4.3 → 4.4 → 4.5 → 4.6 → 4.7)
