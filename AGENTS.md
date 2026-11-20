# AGENTS.md

This repository is built by agents and tended by people. Read this file first: it is a map, and the detail lives where it points.

## What this repository is

- **The product:** not chosen yet. The first plan will land in `docs/plans/`; until then there is no application code.
- **How work arrives:** as GitHub issues. One ticket becomes one pull request. Tickets are written from a plan that a person and an agent have grilled together, saved in `docs/plans/`.
- **Stack and commands:** to be filled in when the product is chosen (see "How to verify work").

## How to work a ticket

1. Read the ticket and the section of the plan it links to.
2. Open a draft pull request. Its description lists one goal per acceptance criterion, as a checklist (the pull request template has the sections).
3. For each goal: write the failing test first, implement, run the checks, tick the goal, commit.
4. Before handing over, verify: put evidence for every acceptance criterion into the pull request (commands run and their real output, screenshots where it is a UI change).
5. Write the handoff in the pull request: what changed, the evidence, and anything still uncertain.
6. If the same check fails twice, or a goal needs a decision you cannot make from the plan, stop: comment on the ticket with what you tried and what you need, and move it to Blocked.

## Scope

- Stay within the ticket's files in scope and its risk tier.
- Found work outside the ticket? File a new issue labelled `origin:agent` with what you found, where, why it is out of scope and how to reproduce it. Search open issues first and comment on a duplicate instead.
- Add found work to the current pull request only if the ticket cannot be finished without it, it stays within the ticket's files and risk tier, and it changes no behaviour the plan did not ask for. List it under "Scope added" in the pull request.

## Files agents do not edit

These are factory files. Propose a change in an issue instead.

- `AGENTS.md`, `CLAUDE.md`, `.claude/`
- `.github/workflows/`, `.github/merge-policy.yml`, `.github/CODEOWNERS`, `.github/ISSUE_TEMPLATE/`
- `.github/skills/`: synced from the shared skills repository and overwritten on every sync

## Review

- Reply to every review thread: with the commit that fixes it, or with "won't fix" and the reason.
- Never resolve a review thread yourself. The reviewer resolves it after checking the fix.

## How to verify work

To be filled in when the product is chosen:

- Install: _TODO_
- Build: _TODO_
- Lint and type check: _TODO_
- Tests: _TODO_
- Run locally: _TODO_

Build and type errors are always fixed, never skipped or silenced.

## Where things live

| Path | What it holds |
| --- | --- |
| `docs/plans/` | Merged plans; every ticket links its section |
| `docs/architecture/` | Architecture notes and decision records |
| `.github/ISSUE_TEMPLATE/agent-task.yml` | The ticket form |
| `.github/pull_request_template.md` | The pull request sections: goals, evidence, handoff |
| `.github/merge-policy.yml` | What may merge without a person |
| `.github/skills/` | Shared skills, synced; do not edit |

## Things agents get wrong here

The gardeners add entries here from the weekly review. Keep each to one line, with the fix.

- _None yet._
