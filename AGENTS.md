# AGENTS.md

This repository is built by agents and tended by people. Read this file first: it is a map, and the detail lives where it points.

## What this repository is

- **The product:** not chosen yet. Its brief will land in `docs/plans/`; until then there is no application code.
- **How work arrives:** as GitHub issues. One ticket becomes one pull request. A person and an agent grill each feature into tickets, and a person triages each ticket before it is ready. The ticket holds the plan for its piece of work.
- **Stack and commands:** to be filled in when the product is chosen (see "How to verify work").

## How to work a ticket

1. Read the ticket, its parent feature issue if it has one, and the decision records in `docs/architecture/` that touch it.
2. Open a draft pull request. Its description lists one goal per acceptance criterion, as a checklist (the pull request template has the sections).
3. For each goal: write the failing test first, implement, run the checks, tick the goal, commit.
4. Before handing over, verify: put evidence for every acceptance criterion into the pull request (commands run and their real output, screenshots where it is a UI change).
5. Write the handoff in the pull request: what changed, the evidence, and anything still uncertain.
6. If the same check fails twice, or a goal needs a decision you cannot make from the plan, stop: say in the pull request (and on the ticket, if you can comment there) what you tried and what you need, and swap the ticket's label to `status:blocked`. If you cannot change labels, a person will.

## Scope

- Stay within the ticket's files in scope and its risk tier.
- Found work outside the ticket? File a new issue labelled `origin:agent` and `status:triage` with what you found, where, why it is out of scope and how to reproduce it. Search open issues first and comment on a duplicate instead.
- Add found work to the current pull request only if the ticket cannot be finished without it, it stays within the ticket's files and risk tier, and it changes no behaviour the plan did not ask for. List it under "Scope added" in the pull request.

## Files agents do not edit

These are factory files. Propose a change in an issue instead.

- `AGENTS.md`, `CLAUDE.md`, `.claude/`
- Everything under `.github/`: workflows, `merge-policy.yml`, `CODEOWNERS`, `dependabot.yml`, the issue and pull request templates, and review instructions
- `.github/skills/`: synced from the shared skills repository and overwritten on every sync

A pull request that touches any of these always goes to a person to merge. If a Copilot pull request changes anything under `.github/`, its checks also wait for a person to approve them.

## Review

- The factory's reviewer (`agentic-sdlc-reviewer`) reviews every pull request against the `review-pr` skill. Its blocking findings are review threads, and none may be left open at merge.
- Answer every open review thread: fix it, or say "won't fix" and why. Where you cannot reply inside a thread, answer them all in one pull request comment, naming each thread and the commit that fixes it.
- Leave every thread for the reviewer to resolve: it does so once it has checked the fix.
- On a Copilot pull request the factory asks for the fixes itself, for at most three rounds; after that a person decides.
- Never merge a pull request yourself. The merge gate merges tier 0 after its hold; a person merges the rest. Anyone can add the `hold` label to stop an automatic merge.

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
| `docs/plans/` | The product brief |
| `docs/architecture/` | Architecture notes and decision records |
| `.github/ISSUE_TEMPLATE/agent-task.yml` | The ticket form |
| `.github/pull_request_template.md` | The pull request sections: goals, evidence, handoff |
| `.github/merge-policy.yml` | What may merge without a person |
| `.github/workflows/` | The factory: dispatcher, mark-ready, checks, merge gate |
| `.github/skills/review-pr/` | The reviewer's rubric |
| `.github/instructions/` | Review instructions that Copilot tools read |
| `.github/skills/` | Shared skills, synced; do not edit |

## Things agents get wrong here

The gardeners add entries here from the weekly review. Keep each to one line, with the fix.

- _None yet._
