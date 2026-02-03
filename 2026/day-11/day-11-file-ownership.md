# Day 11 – File Ownership Challenge (chown & chgrp)

## Files & Directories , Groups & users , dir & files Created
- touch devops-file.txt
- touch team-notes.txt
- sudo groupadd heist-team
- touch project-config.yaml
- sudo useradd professor
- sudo groupadd heist-team
- mkdir app-logs
- mkdir -p heist-project/vault
- mkdir -p heist-project/plans
- touch heist-project/vault/gold.txt
- touch heist-project/plans/strategy.conf
- sudo groupadd planners
- sudo useradd tokyo
- sudo useradd berlin
- sudo useradd nairobi
- sudo groupadd vault-team
- sudo groupadd tech-team
- mkdir bank-heist
- touch bank-heist/access-codes.txt
- touch bank-heist/blueprints.pdf
- touch bank-heist/escape-plan.txt


## Ownership & groups Changes
- sudo chown tokyo devops-file.txt
- sudo chown berlin devops-file.txt
- sudo chgrp heist-team team-notes.txt
- sudo chgrp heist-team team-notes.txt
- sudo chown berlin:heist-team app-logs
- sudo chown -R professor:planners heist-project/
- sudo chown tokyo:vault-team bank-heist/access-codes.txt
- sudo chown berlin:tech-team bank-heist/blueprints.pdf
- sudo chown nairobi:vault-team bank-heist/escape-plan.txt

***Example:***
- devops-file.txt: user:user → tokyo:heist-team


## What I Learned
- How to create users and groups in Linux using useradd and groupadd
- How to create files and directories with touch, mkdir, and mkdir -p
- How to check file ownership and group using ls -l
- How to change file ownership using chown owner
- How to change file group ownership using chgrp or chown :group
- How to change both owner and group in one command using
- sudo chown owner:group filename
- How to apply ownership recursively to directories and all contents using -R
- How Linux enables fine-grained access control by assigning different owners and groups to different files
- How to verify changes confidently using ls -l and ls -lR
