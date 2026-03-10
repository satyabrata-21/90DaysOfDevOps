# Challenge Tasks

## Task 1: Install and Configure Git

### Verify Git is installed on your machine:
- sudo apt update
- sudo apt install git
- git --version
### Set up your Git identity — name and email
- git config --global user.name "Your Full Name"
- git config --global user.email "your-email@example.com"
### Verify your configuration
- git config --global --list

![git](images/git_1.png)

## Task 2: Create Your Git Project

### Create a new folder called `devops-git-practice`
- mkdir devops-git-practice
### Initialize it as a Git repository
- git init 
### Check the status — read and understand what Git is telling you
 git is telling :
- On branch master
- No commits yet
- nothing to commit 
### Explore the hidden `.git/` directory — look at what's inside
- ls -la : to show all hidden file & dir's
- " HEAD  branches  config  description  hooks  info  objects  refs " : inside .git
![git](images/git_2.png)

## Task 3: Create Your Git Commands Reference
### Create a file called `git-commands.md` inside the repo
- touch git-commands.md
### Add the Git commands you've used so far, organized by category: For each command, write:
  **Setup & Config**
  - git --version : Checks the installed Git version.
  - git config --global user.name : Sets your name for all Git commits.
  - git config --global user.email : Sets your email for all Git commits.
  - git config --list : Shows all Git configuration settings.
  - git init : Creates a new Git repository in the current folder.
  **Basic Workflow**
  - git status : Shows the current state of files (tracked, untracked, staged).
  - git add : Adds files to the staging area.
  - git commit : Saves staged changes to the repository.
  - git log : Shows commit history.

## Task 4: Stage and Commit
- git add git-commands.md : Stage your file
- git status : Check what's staged
- git commit -m "Add Git commands " : Commit with a meaningful message
- View your commit history : git log / git log --oneline

![git](images/git_4.png)

## Task 5: Make More Changes and Build History
- vim git-commands.md : Edit `git-commands.md` — add more commands as you discover them
- git status : Check what changed since your last commit
- git add git-commands.md / git commit -m "Add git branch command explanation" :  Stage and commit again with a different, descriptive message
- Repeat this process at least **3 times** so you have multiple commits in your history
- git log --oneline : View the full history in a compact format

![git](images/git_5.png)

## Task 6: Understand the Git Workflow
1. What is the difference between `git add` and `git commit`?
- `git add` moves changes from the working directory to the staging area (index).
- `git commit` saves the staged changes into the repository as a new commit.
2. What does the **staging area** do? Why doesn't Git just commit directly?
- The staging area allows you to select specific changes before committing them.
- Git uses it so you can organize commits properly instead of committing all changes at once.
3. What information does `git log` show you?
- git log shows the commit history including: Commit ID (SHA), Author name, Date and time, Commit message,
4. What is the `.git/` folder and what happens if you delete it?
- The .git/ folder is the hidden directory where Git stores all repository data like commits, branches, and configuration.
- If you delete it, the project will no longer be a Git repository and all version history will be lost.
5. What is the difference between a **working directory**, **staging area**, and **repository**?
- Working Directory → Where you edit files normally.
- Staging Area → Where selected changes are prepared for commit.
- Repository → Where committed snapshots are permanently stored inside the .git folder.
