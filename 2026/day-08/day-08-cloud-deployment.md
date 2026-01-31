# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment
## Today's goal is to deploy a real web server on the cloud and learn practical server management.

- Launch a cloud instance (AWS EC2 or Utho)
- Connect via SSH
- Install Nginx
- Configure security groups for web access (port 80 by default for nginx)
- Extract and save logs to a file
- Verify your webpage is accessible from the internet

## Part 1: Launch Cloud Instance & SSH Access (15 minutes)
### Step 1: 
- Create a EC2 Cloud Instance on AWS in Region oregon.
### Step 2: 
- Connect via SSH : Open an SSH client.
- Locate your private key file. The key used to launch this instance is joshbatch10key.pem
- Run this command, if necessary, to ensure your key is not publicly viewable.
- chmod 400 "joshbatch10key.pem"
- Connect to your instance using its Public DNS: ec2-18-237-59-99.us-west-2.compute.amazonaws.com
- Example: ssh -i "joshbatch10key.pem" ubuntu@ec2-18-237-59-99.us-west-2.compute.amazonaws.com

## Part 2: Install Docker & Nginx (20 minutes)
### Step 1: 
- Update System : sudo apt update 
### Step 2:
-  Install Nginx : sudo apt install ngnix
### Step 3
- Verify Nginx is running: systemctl status nginx
## Part 4: Extract Nginx Logs (15 minutes)
### Step 1:
- View Nginx Logs:
- Main files:
. Access log → sudo cat /var/log/nginx/access.log
. Error log → sudo cat /var/log/nginx/error.log
  
  
