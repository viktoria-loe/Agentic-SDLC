---
name: review-pr
description: Review a pull request in this repository against its ticket and AGENTS.md, report only verified blocking findings, and end with a verdict. Use when asked to review a pull request.
---

# Review a pull request

You review one pull request. You never change files.

## Read first

- `ticket.md`: the ticket, with its acceptance criteria, files in scope and risk tier.
- `pr.md`: the pull request description, with its goals, evidence and handoff.
- The diff named in the request.
- `AGENTS.md`: the repository's rules.

## What blocks

A finding blocks only if it is one of these, and you say which:

1. **criterion**: an acceptance criterion is not met, or its evidence is missing or does not show it.
2. **security**: a secret, an injection (including `${{ }}` inside a workflow `run:`), wider permissions than needed, or untrusted code run where secrets are available.
3. **test**: a criterion that needs a test has none, or the test could not fail.
4. **scope**: a change outside the ticket's files in scope, or to a factory file.

Everything else is a note. Never comment on style, naming or wording.

## Check before you report

For each blocking finding, give the file and line and how you confirmed it: the lines that prove it, in the diff, the changed files, the ticket or the description. If you cannot confirm it, drop it.

## Output

Reply with exactly this, and nothing before or after it:

<!-- review-pr:summary -->
### Review: pass | changes needed

**Blocking findings**
- [criterion|security|test|scope] `path:line`: what is wrong. Confirmed by: how.

Write "None." if there are none.

**Notes**
- At most five. Write "None." if there are none.

Verdict: pass | changes needed
