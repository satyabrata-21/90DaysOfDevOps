1️⃣ Which 3 commands save me the most time right now, and why?
1. grep

Why: Instantly finds errors, patterns, or keywords in huge logs.
Instead of opening files manually → search in seconds.

grep -i error /var/log/syslog

2. journalctl

Why: One command to debug any systemd service without hunting log files.

journalctl -u nginx -n 50

3. ls -lh

Why: Quick visibility of files, sizes, and permissions (very common checks).

ls -lh /var/log

2️⃣ How do you check if a service is healthy?
Exact 2–3 commands I’d run first
1. Check service status
systemctl status nginx


✔ Running or failed
✔ Exit codes
✔ Last error messages

2. Check recent logs
journalctl -u nginx -n 50


✔ Startup errors
✔ Permission or config issues

3. Check port/listener
ss -tulpn | grep nginx


✔ Is the service actually listening on the expected port?

👉 If these 3 look good, the service is very likely healthy.

3️⃣ How do you safely change ownership & permissions without breaking access?
Golden rules:

Change ownership first, then permissions

Use least privilege

Never blindly use 777

✅ Safe example:
sudo chown -R devuser:developers /opt/dev-project
sudo chmod -R 775 /opt/dev-project


Why this is safe:

Owner + group have full access

Others only have read/execute

Group collaboration still works

4️⃣ What will I focus on improving in the next 3 days?
📅 Next 3-Day Focus Plan
Day 1

Linux permissions (chmod, chown, umask)

Practice real scenarios (shared directories, broken access)

Day 2

Service troubleshooting

systemctl, journalctl, logs under /var/log

Day 3

Shell efficiency

grep, awk, sed, pipelines (|)

Build a mini troubleshooting runbook
