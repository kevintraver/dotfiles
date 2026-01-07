---
name: code-explorer
description: Download and explore GitHub repositories. Use when user asks questions about a GitHub repo (URL or owner/repo format), wants to understand a repo's structure, or needs to explore unfamiliar codebases. Automatically clones repos to ~/Code for local exploration.
---

# Code Explorer

Clone GitHub repos to ~/Code and explore their structure, architecture, and implementation.

## Workflow

### 1. Detect GitHub Reference

Trigger on:

- Full URLs: `https://github.com/owner/repo`
- Short format: `owner/repo` or `github.com/owner/repo`
- Questions like "How does X work in [repo]?" or "Explore [repo]"

### 2. Check ~/Code First

Before cloning, check if the repo already exists locally:

```bash
# Check if already cloned
ls ~/Code/repo
```

- **If exists**: Use the local copy, optionally `git fetch origin` for latest
- **If not found**: Clone it with `gh repo clone owner/repo ~/Code/repo`

Use the repo name as the directory name (e.g., `~/Code/mastra`).

### 3. Explore the Codebase

After cloning, use standard exploration:

1. **Quick overview**: Check README, package.json/Cargo.toml/etc. for project type
2. **Structure**: `ls -la` and `tree -L 2` (if available) to understand layout
3. **Entry points**: Find main files (main.go, index.ts, src/main.rs, etc.)
4. **Search**: Use Grep/Glob to find relevant code for user's question

### 4. Answer Questions

Provide specific file paths and line numbers when referencing code.
Use the Task tool with Explore agent for deeper codebase questions.

## Examples

**User**: "I have questions about mastra-ai/mastra"

1. Clone to ~/Code/mastra
2. Read README.md for overview
3. Explore project structure
4. Ask user what they want to know

**User**: "How do agents work in mastra-ai/mastra?"

1. Clone to ~/Code/mastra (if not present)
2. Search for agent-related files
3. Trace the agent implementation
4. Explain with code references

