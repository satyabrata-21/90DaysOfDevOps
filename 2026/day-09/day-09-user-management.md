# Day 09 Challenge

## Users & Groups Created
***Users: tokyo, berlin, professor, nairobi***
- sudo useradd -m tokyo
- sudo useradd -m berlin
- sudo useradd -m professor
- sudo useradd -m nairobi

***password sertup***
- sudo passwd tokyo
- sudo passwd berlin
- sudo passwd professor
- sudo passwd nairobi

***Groups: developers, admins, project-team***
- sudo groupadd developers
- sudo groupadd admins
- sudo groupadd project-team


## Group Assignments
- sudo usermod -aG developers tokyo
- sudo usermod -aG developers,admins berlin
- sudo usermod -aG admins professor
- sudo groupadd project-team
- sudo usermod -aG project-team nairobi
- sudo usermod -aG project-team tokyo


## Directories Created
- sudo mkdir /opt/dev-project
- sudo mkdir /opt/team-workspace
- sudo mkdir /opt/team-workspace


## Commands Used
- sudo chown :developers /opt/dev-project
- ls -ld /opt/dev-project
- sudo chmod 775 /opt/dev-project
- ls -ld /opt/dev-project
- sudo chown :project-team /opt/team-workspace
- sudo chmod 775 /opt/team-workspace
- ls -ld /opt/team-workspace

## Test as user tokyo:
- sudo su - tokyo
- cd /opt/dev-project
- touch tokyo_file.txt
- echo "Hello from tokyo" > tokyo_file.txt
- ls -l
- exit

## Test as user berlin:
- sudo su - berlin
- cd /opt/dev-project
- touch berlin_file.txt
- echo "Hello from berlin" > berlin_file.txt
- ls -l
- exit
- ls -l /opt/dev-project

## Test as user nairobi:
- sudo su - nairobi
- cd /opt/team-workspace
- touch nairobi_test.txt
- echo "Team workspace test" > nairobi_test.txt
- ls -l
- exit

## What I Learned
- Create users and set passwords
- Create groups and assign users
- Set up shared directories with group permissions
