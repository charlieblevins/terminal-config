---
name: shepherd-jira
description: Track sub-tasks like PRs, comments, and suggest next steps
license: MIT
compatibility: opencode
metadata:
  audience: maintainers
  workflow: github
---

## What I do

Please read the supplied Jira ticket. The ticket ID should be supplied in the prompt but if it is not please ask for it. Try to reason through the steps that have been completed and the steps that should follow, then suggest the next task.

## How to reason about next steps

Consider multiple possible next steps. Put these in a temporary list. Now consider the pros and cons of doing each step next and add these to the list.

Once your temp list exist with many possible next steps and the pros and cons, try to reason about which next step is the most correct. If multiple steps could be considered correct, try to balance time and efficiency with long-term correctness.

Once all of this consideration is done, please show output according to the output section below.

## How to access things

- Use github mcp to read state from github
- Use the atlassian mcp to read state from jira

## Output

Suggested next task: <task description>
    - pros: <pros of this task>
    - cons: <cons of this task>

Tasks considered:
    - <task description>
        - pros: <pros of this task>
        - cons: <cons of this task>
    - etc.

## When to use me

- When working in the context of a pull request or Jira ticket
- When the user asks for next steps regarding the current task and a Jira ticket is involved
- A Jira ticket is involved when you see commits with messages containing values like "CVID-1234"
