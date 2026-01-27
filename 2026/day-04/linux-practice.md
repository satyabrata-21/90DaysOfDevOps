# Today’s goal is to practice Linux fundamentals with real commands by actually running basic commands and capturing 

# Check running processes

:)
- ps -ef | grep sshd -> shows whether the ssh server process is running or not
- pgrep -a sshd -> to get PID of sshd


# Inspect one systemd service

:)
- systemctl status ssh -> SSH service is running, stopped, or failed
- systemctl list-units --type=service | grep ssh -> list all ssh running servics


# Capture a small troubleshooting flow

:)
- systemctl status sshd -> check service state
- pgrep sshd -> verify process
- journalctl -u ssh -n 20 -> check logs
- journalctl -u ssh -> shows login attempts and service activity
- tail -n 50 /var/log/auth.log -> show last 50 lines authentication related logs

