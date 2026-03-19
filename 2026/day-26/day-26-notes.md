# Day 26 – GitHub CLI: Manage GitHub from Your Terminal

## Challenge Tasks

### Task 1: Install and Authenticate

1. Install the GitHub CLI on your machine
2. Authenticate with your GitHub account
3. Verify you're logged in and check which account is active
![output](images/Task-1(1-3).png)
4. Answer in your notes: What authentication methods does `gh` support?
- Browser-based OAuth
- Personal Access Token (PAT)
- SSH Key-based

---

### Task 2: Working with Repositories
1. Create a **new GitHub repo** directly from the terminal — make it public with a README
![output](images/Task-2(1).png)
2. Clone a repo using `gh` instead of `git clone`
![output](images/Task-2(2).png)
3. View details of one of your repos from the terminal
![output](images/Task-2(3).png)
4. List all your repositories
![output](images/Task-2(4).png)
5. Open a repo in your browser directly from the terminal
![output](images/Task-2(5).png)
6. Delete the test repo you created (be careful!)
![output](images/Task-2(6).png)

---

### Task 3: Issues
1. Create an issue on one of your repos from the terminal — give it a title, body, and a label
![output](images/Task-3(1).png)
![output](images/Task-3(1-2).png)
2. List all open issues on that repo
![output](images/Task-3(2).png)
3. View a specific issue by its number
![output](images/Task-3(3).png)
4. Close an issue from the terminal
![output](images/Task-3(4).png)
![output](images/Task-3(4-2).png)
5. Answer in your notes: How could you use `gh issue` in a script or automation?
- By combining gh issue commands in a script,you can automatically:
        - Check open issues
        - Add comments
        - Close issues

    - Example:
        ```bash
        gh issue list --repo satyabrata-21/gh-cli-task-day26
        gh issue comment 1 --repo satyabrata-21/gh-cli-task-day26 --body "Checked automatically."
        gh issue close 1 --repo satyabrata-21/gh-cli-task-day26
        ```

---

### Task 4: Pull Requests
1. Create a branch, make a change, push it, and create a **pull request** entirely from the terminal
![output](images/Task-4(1).png)
![output](images/Task-4(1-2).png)
2. List all open PRs on a repo
3. View the details of your PR — check its status, reviewers, and checks
4. Merge your PR from the terminal
![output](images/Task-4(2-4).png)
5. Answer in your notes:
   - What merge methods does `gh pr merge` support?
        - `gh pr merge` supports three merge methods:
        - Merge Commit
        - Squash and Merge
        - Rebase and Merge

    - How would you review someone else's PR using `gh`?
        - `gh pr review <PR-number>`

---

### Task 5: GitHub Actions & Workflows (Preview)
1. List the workflow runs on any public repo that uses GitHub Actions
2. View the status of a specific workflow run
![output](images/Task-5(1-2).png)
3. Answer in your notes: How could `gh run` and `gh workflow` be useful in a CI/CD pipeline?
- They enable you to control and automate GitHub Actions programmatically,allowing you to start, track and manage workflows directly from scripts without needing manual interaction

(Don't worry if you haven't learned GitHub Actions yet — this is a preview for upcoming days)

---

### Task 6: Useful `gh` Tricks
Explore and try these — add the ones you find useful to your `git-commands.md`:
1. `gh api` — make raw GitHub API calls from the terminal
---
# Get user information
gh api user

# Get repository information
gh api repos/OWNER/REPO

# List organization members
gh api orgs/ORG/members

# Create custom API requests
gh api graphql -f query='query { viewer { login }}'

---

2. `gh gist` — create and manage GitHub Gists

---
# Create a gist
echo "console.log('Hello World')" > test.js
gh gist create test.js --public

# List your gists
gh gist list

# View a gist
gh gist view <gist-id>

# Edit a gist
gh gist edit <gist-id>

---


3. `gh release` — create and manage releases

---
# Create a gist
echo "console.log('Hello World')" > test.js
gh gist create test.js --public

# List your gists
gh gist list

# View a gist
gh gist view <gist-id>

# Edit a gist
gh gist edit <gist-id>

---

4. `gh alias` — create shortcuts for commands you use often

---
# Create alias for pr view
gh alias set pv 'pr view'

# Create alias for issue list
gh alias set il 'issue list'

# Create alias for repo view
gh alias set rv 'repo view --web'

# List all aliases
gh alias list

# Use alias
gh pv 1

---

5. `gh search repos` — search GitHub repos from the terminal

---
# Create alias for pr view
gh alias set pv 'pr view'

# Create alias for issue list
gh alias set il 'issue list'

# Create alias for repo view
gh alias set rv 'repo view --web'

# List all aliases
gh alias list

# Use alias
gh pv 1

---

## Hints
- `gh help` and `gh <command> --help` are your best friends
- Most `gh` commands work with `--repo owner/repo` to target a specific repo
- Use `--json` flag with most commands to get machine-readable output (useful for scripting)
- `gh pr create --fill` auto-fills the PR title and body from your commits

---

## Submission
1. Add your `day-26-notes.md` to `2026/day-26/`
2. Update `git-commands.md` with `gh` commands — this completes your Git & GitHub reference from Days 22–26
3. Push to your fork
