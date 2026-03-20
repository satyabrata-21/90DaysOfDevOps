# Day 28 – Revision Day: Everything from Day 1 to Day 27

## What You've Covered So Far

| Days | Topic | Key Concepts |
|------|-------|-------------|
| 1 | DevOps & Cloud Intro | What is DevOps, SDLC, Cloud basics |
| 2–7 | Linux Fundamentals | Architecture, commands, processes, systemd, file system hierarchy, troubleshooting, text files |
| 8 | Cloud Server Setup | Docker, Nginx, web deployment |
| 9–11 | Users, Permissions & Ownership | User/group management, file permissions, chown/chgrp |
| 12 | Revision Day 1 | Days 1–11 recap |
| 13 | Volume Management | LVM — physical volumes, volume groups, logical volumes |
| 14–15 | Networking | Fundamentals, DNS, IP, subnets, ports, hands-on checks |
| 16–18 | Shell Scripting | Basics, loops, arguments, error handling, functions |
| 19–20 | Shell Scripting Projects | Log rotation, backup, crontab, log analyzer |
| 21 | Shell Scripting Cheat Sheet | Personal reference guide |
| 22–25 | Git & GitHub | Init, branching, merge, rebase, stash, cherry pick, reset, revert, branching strategies |
| 26 | GitHub CLI | Managing GitHub from the terminal |
| 27 | GitHub Profile | Profile README, repo organization, developer branding |

---

## Challenge Tasks

### Task 1: Self-Assessment Checklist
Go through the checklist below. For each item, mark yourself honestly:
- **Can do confidently**
- **Need to revisit**
- **Haven't done yet**

#### Linux
- [ Can do confidently ] Navigate the file system, create/move/delete files and directories
- [ Can do confidently] Manage processes — list, kill, background/foreground
- [ Can do confidently] Work with systemd — start, stop, enable, check status of services
- [ Can do confidently] Read and edit text files using vi/vim or nano
- [Can do confidently ] Troubleshoot CPU, memory, and disk issues using top, free, df, du
- [ Can do confidently] Explain the Linux file system hierarchy (/, /etc, /var, /home, /tmp, etc.)
- [ Can do confidently] Create users and groups, manage passwords
- [ Can do confidently] Set file permissions using chmod (numeric and symbolic)
- [ Can do confidently] Change file ownership with chown and chgrp
- [ Can do confidently] Create and manage LVM volumes
- [ Can do confidently] Check network connectivity — ping, curl, netstat, ss, dig, nslookup
- [ Can do confidently] Explain DNS resolution, IP addressing, subnets, and common ports

#### Shell Scripting
- [ Can do confidently] Write a script with variables, arguments, and user input
- [Need to revisit ] Use if/elif/else and case statements
- [Need to revisit ] Write for, while, and until loops
- [Need to revisit ] Define and call functions with arguments and return values
- [Need to revisit] Use grep, awk, sed, sort, uniq for text processing
- [Need to revisit] Handle errors with set -e, set -u, set -o pipefail, trap
- [ Can do confidently ] Schedule scripts with crontab

#### Git & GitHub
- [Can do confidently ] Initialize a repo, stage, commit, and view history
- [Can do confidently ] Create and switch branches
- [Can do confidently ] Push to and pull from GitHub
- [Can do confidently ] Explain clone vs fork
- [Can do confidently ] Merge branches — understand fast-forward vs merge commit
- [ Can do confidently ] Rebase a branch and explain when to use it vs merge
- [Can do confidently ] Use git stash and git stash pop
- [ Can do confidently] Cherry-pick a commit from another branch
- [ Can do confidently] Explain squash merge vs regular merge
- [ Can do confidently] Use git reset (soft, mixed, hard) and git revert
- [ Can do confidently] Explain GitFlow, GitHub Flow, and Trunk-Based Development
- [ Need to revisit] Use GitHub CLI to create repos, PRs, and issues

---

### Task 2: Revisit Your Weak Spots
1. Pick **3 topics** from the checklist where you marked "Need to revisit"
2. Go back to that day's challenge and redo the hands-on tasks
3. Document what you re-learned in `day-28-notes.md`

***What I Re-learned:***
1. Hands-on experience with if/elif/else and case statements.
2. More practice with loops and functions in shell scripting.
3. Hands-on practice with awk, sed, sort, uniq for text processing.
4. More practice with error handling in shell scripts.
5. More practice with GitHub CLI for repo and PR management.


---

### Task 3: Quick-Fire Questions
Answer these from memory (no Googling). Then verify your answers:

1. What does `chmod 755 script.sh` do?
- Specifically, the owner can read, write, and execute; the group can read and execute; and others can read and execute.
2. What is the difference between a process and a service?
- process is a running program instance, service is a long running background process.
3. How do you find which process is using port 8080?
- `sudo netstat -tuln | grep 8080` or `sudo ss -tuln | grep 8080`
4. What does `set -euo pipefail` do in a shell script?
- makes a script exit immediately if any command fails,if an undefined variable is used,or if any command in a pipeline fails.
5. What is the difference between `git reset --hard` and `git revert`?
- `git reset --hard`: removes commit from history
- `git revert`: creates a new commit, keeps original commit in history
6. What branching strategy would you recommend for a team of 5 developers shipping weekly?
- Trunk-Based Development because it keeps things simple, reduces merge conflicts, and supports frequent releases.

7. What does `git stash` do and when would you use it?
- temporarily saves uncommitted changes so you can switch branches without committing.
8. How do you schedule a script to run every day at 3 AM?
- Use `cron` to schedule the script. Add a line to the crontab like `0 3 * * * /path/to/script.sh`
9. What is the difference between `git fetch` and `git pull`?
- `git fetch` downloads changes without merging, while `git pull` fetches and merges
10. What is LVM and why would you use it instead of regular partitions?

- LVM (Logical Volume Manager) allows for more flexible disk management. You can resize volumes, create snapshots, and manage storage across multiple physical disks without worrying about partitioning.

---

### Task 4: Organize Your Work
1. Make sure all your daily submissions (day-1 through day-27) are committed and pushed.
- Yes.
2. Check that your `git-commands.md` is up to date
- Yes, I added more commands and explanations based on my revision.
3. Check that your shell scripting cheat sheet is complete
- Yes, I added more commands and explanations based on my revision.
4. Verify your GitHub profile and repos are clean (from Day 27)
- Yes, I cleaned up my profile and organized my repos.

---

### Task 5: Teach It Back
Pick **one topic** you've learned and write a short explanation (5-10 lines) as if you're teaching it to someone who has never heard of it. Add it to your `day-28-notes.md`.

Examples:
- Explain Git branching to a non-developer
 - A Git branch is like a separate workspace where you can make changes to your code without affecting the main version. Imagine you're writing a book, and you want to try out a new chapter. You create a branch, write your chapter there, and if you like it, you can merge it back into the main book. If not, you can discard the branch without messing up your original work.

- Explain file permissions to a new Linux user
 - In Linux, every file and directory has permissions that control who can read, write, or execute it. There are three types of users: the owner (the person who created the file), the group (a set of users that share permissions), and others (everyone else). Permissions are represented by a combination of letters (r for read, w for write, x for execute) or numbers (4 for read, 2 for write, 1 for execute). For example, `chmod 755` means the owner can read, write, and execute (7), while the group and others can only read and execute (5).

- Explain what a crontab is and why sysadmins use it
    - A crontab is a file that contains a list of commands that are scheduled to run at specific times. Sysadmins use it to automate repetitive tasks, such as backups, system updates, or log rotation. By using crontab, you can ensure that important maintenance tasks are performed regularly without needing to remember to do them manually.