# Day 25 – Git Reset vs Revert & Branching Strategies

## Challenge Tasks
- Continue updating `git-commands.md` in your `devops-git-practice` repo


### Task 1: Git Reset — Hands-On
1. Make 3 commits in your practice repo (commit A, B, C)
![Output](images/Task-1(1).png)

2. Use `git reset --soft` to go back one commit — what happens to the changes?
![Output](images/Task-1(2).png)
- The changes are still staged and the last commit C is ready to be committed again.

3. Re-commit, then use `git reset --mixed` to go back one commit — what happens now?
![Output](images/Task-1(3).png)
- Commit C removed from history.Changes from commit C remain in working directory. Changes are unstaged. 

4. Re-commit, then use `git reset --hard` to go back one commit — what happens this time?
![Output](images/Task-1(4).png)
- Commit C removed. Changes deleted permanently.Working directory reset to previous commit.
- All changes from commit C are lost.

5. Answer in your notes:
   - What is the difference between `--soft`, `--mixed`, and `--hard`?
   - `--soft` → Moves the commit back but keeps changes staged.
   - `--mixed` → Moves the commit back and unstages the changes (files stay in your folder).
   - `--hard` → Moves the commit back and deletes all changes from staging and files.

   - Which one is destructive and why?
   - `--hard` is destructive because it permanently deletes changes from the commit and cannot be undone.

   - When would you use each one?
   - `--soft` : when you want to undo a commit but keep changes staged,for example to edit the commit message.
   - `--mixed`: when you want to undo a commit and unstage changes,so you can modify them before recommitting.
   - `--hard`: when you want to completely remove commits and all changes.

   - Should you ever use `git reset` on commits that are already pushed?
   No,once commits are pushed,others may have already pulled and worked on them,so resetting them can cause confusion and conflicts.

---

### Task 2: Git Revert — Hands-On
1. Make 3 commits (commit X, Y, Z)
![Output](images/Task-2(1).png)
2. Revert commit Y (the middle one) — what happens?

3. Check `git log` — is commit Y still in the history?
4. Answer in your notes:
   - How is `git revert` different from `git reset`?
   - Why is revert considered **safer** than reset for shared branches?
   - When would you use revert vs reset?

---

### Task 3: Reset vs Revert — Summary
Create a comparison in your notes:

| | `git reset` | `git revert` |
|---|---|---|
| What it does | ? | ? |
| Removes commit from history? | ? | ? |
| Safe for shared/pushed branches? | ? | ? |
| When to use | ? | ? |

---

### Task 4: Branching Strategies
Research the following branching strategies and document each in your notes with:
- How it works (short description)
- A simple diagram or flow (text-based is fine)
- When/where it's used
- Pros and cons

1. **GitFlow** — develop, feature, release, hotfix branches
2. **GitHub Flow** — simple, single main branch + feature branches
3. **Trunk-Based Development** — everyone commits to main, short-lived branches
4. Answer:
   - Which strategy would you use for a startup shipping fast?
   - Which strategy would you use for a large team with scheduled releases?
   - Which one does your favorite open-source project use? (check any repo on GitHub)

---

### Task 5: Git Commands Reference Update
Update your `git-commands.md` to cover everything from Days 22–25:
- Setup & Config
- Basic Workflow (add, commit, status, log, diff)
- Branching (branch, checkout, switch)
- Remote (push, pull, fetch, clone, fork)
- Merging & Rebasing
- Stash & Cherry Pick
- Reset & Revert

---