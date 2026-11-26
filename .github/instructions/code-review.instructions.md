---
applyTo: "**"
excludeAgent: "coding-agent"
---

# Reviewing pull requests in this repository

This repository is built by agents and tended by people. `AGENTS.md` is the rulebook; review against it.

Every inline comment you leave must be resolved before the pull request can merge, so each one costs a person time. Comment only on problems that would make merging wrong. Do not comment on style, naming or wording preferences, and do not praise.

## What to check

1. **The ticket.** The pull request closes a ticket (`Closes #N` or `Fixes #N`). Read its acceptance criteria. Say which criterion is not met, if any.
2. **Scope.** The changed paths should match the ticket's "Files in scope". Work outside them needs a reason under "Scope added" in the description.
3. **Evidence.** The description's Evidence section should show real command output or a link to a run for each acceptance criterion. Flag a criterion with no evidence, or evidence that does not match the change.
4. **Bugs and missing tests.** Wrong behaviour, unhandled errors and edge cases, and tests the ticket asked for that are missing.
5. **Security.**
   - Secrets or tokens in code, logs or output.
   - In GitHub Actions workflows: untrusted text (pull request titles and bodies, issue text, branch names) inside `${{ }}` in a `run:` step, which is script injection; a job that runs pull request code and is given secrets; permissions wider than the job needs; `pull_request_target` or `workflow_run` jobs that check out pull request code.
6. **Factory files.** A change to `AGENTS.md`, `CLAUDE.md`, `.claude/` or `.github/` from a ticket that did not ask for it.

## How to write a comment

Say what is wrong, why it matters, and what would fix it, in two or three sentences. If you find nothing that would make merging wrong, say so in your summary and leave no inline comments.
