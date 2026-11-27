# How a ticket moves through the factory

- **Triage — `status:triage`:** A person reviews the ticket, plans and routes it, and moves buildable work to ready.
- **Ready — `status:ready`:** A person marks the ticket ready; `dispatcher.yml` assigns Copilot and starts work for `route:agent` tickets.
- **In progress — `status:in-progress`:** Copilot builds the ticket; `mark-ready.yml` marks its pull request ready for review and moves the ticket to in review.
- **In review — `status:in-review`:** `review.yml` reviews the pull request and sends it to a person after three fix rounds; `review-followup.yml` asks Copilot to fix requested changes.
- **Merged or closed — no `status:` label:** `merge-gate.yml` merges eligible tier 0 pull requests or routes tier 1 to a person; `ticket-closed.yml` removes status labels on other closures.

Tier 0 pull requests meet the merge policy and may be approved and merged by the factory when checks and review pass; tier 1 pull requests need a person to merge. Before an automatic merge, the factory gives people a 30-minute hold to add the `hold` label, which stops the merge.

See [AGENTS.md](../../AGENTS.md) for the agent workflow and [merge policy](../../.github/merge-policy.yml) for merge rules.
