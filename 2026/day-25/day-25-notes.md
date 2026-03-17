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
![Output](images/Task-2(2).png)
- A new commit is created that undoes the changes from commit Y. The original commit Y remains in the history, but its changes are reversed in the codebase.   

3. Check `git log` — is commit Y still in the history?
Yes, commit Y is still in the history, but it has been reverted by a new commit that undoes its changes.

4. Answer in your notes:
   - How is `git revert` different from `git reset`?
   - reset rewrites history, revert preserves history
   - Revert creates a new commit that undoes changes, while reset moves the HEAD back and can remove commits from history.

   - Why is revert considered **safer** than reset for shared branches?
   - Because it doesn't rewrite history, so it won't cause issues for other collaborators who may have based their work on the original commits.

   - When would you use revert vs reset?
   - Use revert when you want to undo changes in a shared branch without affecting the commit history. Use reset when you want to undo commits in a local branch and are sure that those commits haven't been shared with others.


---

### Task 3: Reset vs Revert — Summary
Create a comparison in your notes:

| | `git reset` | `git revert` |
|---|---|---|
| What it does | Can rewrite history.Moves the branch pointer to an earlier commit | Creates a new commit that undoes changes from a previous commit.Keeps original commit in history |
| Removes commit from history? | Yes | No |
| Safe for shared/pushed branches? | No | Yes |
| When to use | When you want to rewrite history or completely remove commits | On branches that are already pushed/shared.To undo a commit without breaking history |


---

### Task 4: Branching Strategies
Research the following branching strategies and document each in your notes with:
- How it works (short description)
- A simple diagram or flow (text-based is fine)
- When/where it's used
- Pros and cons

1. **GitFlow** — develop, feature, release, hotfix branches

 **GitFlow**
    
    **How it works:**

    - `main`      : Contains production-ready code.Every commit here is a stable release.
        
    - `develop`   : The integration branch where new features are merged before they’re ready to go live.
    
    - `feature`   : For building out new functionality.Created from develop and merged back when complete.
        
    - `release`   : Used to prep a new version for production.Created from develop and merged into both main and develop.

    - `hotfix`   : For urgent fixes on production.Created from main,then merged back into both main and develop.

   **When/where it's used:**

    - Team follows scheduled release cycles

    - Need to maintain multiple versions

    **Pros:** 
    - Clear separation of concerns across features,releases,and hotfixes.

    **Cons:** 
    - Can result in long-lived branches,increasing the risk of merge conflicts.



2. **GitHub Flow** — simple, single main branch + feature branches

**GitHub Flow**

    **How it works:**

    - Create a `feature branch` from `main`
    - Push commits to the `feature branch`
    - Open a pull request for code review and automated tests.
    - Once approved, merge back to `main`.
    - Deploy immediately.
    - Everything in main should always be production-ready.
  **When/where it's used:**
    - ship frequent,small releases

     **Pros:**
    - Fast merge & deploy
    
     **Cons:**
     - In large teams,it can result in frequent merge conflicts


3. **Trunk-Based Development** — everyone commits to main, short-lived branches

 **Trunk-Based Development**

    **How it works:**

    - There’s one `main` branch, often called main or trunk. All development happens here
    - Developers commit directly to `main`, often multiple times per day
    - Changes are small,incremental
       - Feature flags are used to hide incomplete features in production
       - Long-lived branches are avoided to minimize merge conflicts

 **When/where it's used:**
    - building SaaS products or anything that updates frequently


    **Pros:**
    - Delivers the fastest feedback from dev to prod

    **Cons:**
    - Can be risky without tests and CI/CD in place, as broken code can affect everyone.

4. Answer:
   - Which strategy would you use for a startup shipping fast?
    - Trunk-Based Development

   - Which strategy would you use for a large team with scheduled releases?
      - GitFlow

   - Which one does your favorite open-source project use? (check any repo on GitHub)
      - GitHub Flow
      - https://github.com/satyabrata-21/retail-demo-store


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

https://github.com/satyabrata-21/devops-git-practice/blob/main/git-commands.md

finish updating your reference guide with clear explanations and examples for each command. This will be a valuable resource for you to refer back to as you continue learning Git and working on projects.

---