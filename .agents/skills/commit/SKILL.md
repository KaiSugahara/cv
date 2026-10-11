---
name: commit
description: Create one or more Git commits from changes that are already staged. Use when the user asks to commit the staged work.
---

# Commit staged changes

Inspect the repository with:

- `git status --short`
- `git diff --cached`
- `git branch --show-current`
- `git log --oneline -10`

If nothing is staged, tell the user and stop.

Before committing, review all staged changes against the applicable repository rules. If violations are found, fix and verify them, report them, and stop without staging or committing. Leave the corrections for the user to review and stage.

Analyze the staged diff and decide whether it represents one logical change or multiple unrelated changes. Keep related changes together. When distinct purposes or scopes are mixed, commit each logical group separately and leave any unprocessed staged changes in the index.

For every group:

1. Choose exactly one commit message; do not present alternatives or ask the user to select one.
2. Commit only paths belonging to that group. Do not run `git add` and do not include unstaged or untracked content.
3. Verify the resulting commit and remaining index before continuing.

Commit messages must:

- Fit on one line with no body or co-author footer.
- Be concise Japanese, except for the English prefix.
- Use exactly one of these prefixes: `Add:`, `Update:`, `Refactor:`, `Delete:`, `Remove:`, or `Move:`.

After all groups are committed, report the created commit hashes and messages. Never push.
