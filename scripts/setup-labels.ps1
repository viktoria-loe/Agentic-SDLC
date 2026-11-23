# Creates or updates the factory labels on a repository. Safe to run again:
# --force updates a label that already exists instead of failing.
param(
    [string]$Repo = "viktoria-loe/Agentic-SDLC"
)

# Use gh from PATH if it's there, otherwise the default install location.
$gh = (Get-Command gh -ErrorAction SilentlyContinue)?.Source ?? "C:\Program Files\GitHub CLI\gh.exe"

$labels = @(
    # Route and origin: who starts a ticket, and who wrote it
    @{ Name = "route:agent";           Color = "1D76DB"; Description = "An agent may start this ticket without a person" }
    @{ Name = "route:human";           Color = "5319E7"; Description = "A person works this ticket locally" }
    @{ Name = "origin:agent";          Color = "BFD4F2"; Description = "Written by an agent while working on something else" }

    # Pull request labels
    @{ Name = "hold";                  Color = "B60205"; Description = "Stops an auto-merge; anyone can add it" }
    @{ Name = "needs-person";          Color = "E99695"; Description = "The merge gate wants a person's review" }

    # Stage: exactly one per open ticket
    @{ Name = "status:triage";         Color = "C5DEF5"; Description = "Filed; no person has reviewed it yet" }
    @{ Name = "status:needs-grilling"; Color = "C5DEF5"; Description = "Needs a planning session before it can be built" }
    @{ Name = "status:spike";          Color = "C5DEF5"; Description = "Exploration only; its pull request never merges" }
    @{ Name = "status:ready";          Color = "0E8A16"; Description = "Planned and routed; can be started" }
    @{ Name = "status:in-progress";    Color = "FBCA04"; Description = "Someone is building it" }
    @{ Name = "status:blocked";        Color = "D93F0B"; Description = "Stopped; needs a decision from a person" }
    @{ Name = "status:in-review";      Color = "BFDADC"; Description = "Its pull request is in review" }

    # Track and risk
    @{ Name = "track:product";         Color = "C2E0C6"; Description = "Work on the product" }
    @{ Name = "track:factory";         Color = "F9D0C4"; Description = "A change to the factory itself" }
    @{ Name = "risk:low";              Color = "BFE5BF"; Description = "Risk tier low" }
    @{ Name = "risk:medium";           Color = "FEF2C0"; Description = "Risk tier medium" }
    @{ Name = "risk:high";             Color = "F9C0C0"; Description = "Risk tier high" }
)

foreach ($label in $labels) {
    & $gh label create $label.Name --repo $Repo --color $label.Color --description $label.Description --force
    if ($LASTEXITCODE -ne 0) {
        throw "Could not create or update label $($label.Name) on $Repo"
    }
}

Write-Host "Done: $($labels.Count) labels on $Repo"
