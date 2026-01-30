# Run and record output for at least 8 commands (save snippets in your runbook)
## Environment basics (2): uname -a, lsb_release -a (or cat /etc/os-release)

- uname -a ->Shows kernel version, architecture, and OS build
- lsb_release -a (or cat /etc/os-release) ->Displays Linux distribution and version details

## Filesystem sanity (2): create a throwaway folder and file, e.g., mkdir /tmp/runbook-demo, cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo

- mkdir /tmp/runbook-demo -> Create a temporary file 
- cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo ->copy host file and rename it and Filesystem is writable; permissions look normal.
  
## CPU / Memory (2): top/htop/ps -o pid,pcpu,pmem,comm -p <pid>, free -h, vm_stat (mac)

- top/htop -> Shows real-time view of system processes
- ps -o pid,pcpu,pmem,comm -p <pid> -> Shows CPU and memory usage for a specific process.
- free -h ->Displays system memory usage in a human-readable format (RAM and swap).

## Disk / IO (2): df -h, du -sh /var/log, iostat/vmstat/dstat

-  df -h -> Shows disk usage of all mounted filesystems in human-readable format (GB/MB)
-  du -sh /var/log -> Shows the total size of /var/log (or any directory) in human-readable format.
-  iostat ->Shows CPU and disk I/O statistics, including read/write rates per device.
-  vmstat ->Shows memory, CPU, and I/O statistics over time.
-  dstat -> Combines CPU, disk, network, memory statistics in real-time.
  
## Network (2): ss -tulpn/netstat -tulpn, curl -I <service-endpoint>/ping
- ss -tulpn/netstat -tulpn ->Shows all listening TCP/UDP ports along with the process name and PID.
- curl -I <service-endpoint>/ping -> Sends a HEAD request to a URL or service endpoint to check connectivity and response headers.

## Logs (2): journalctl -u <service> -n 50, tail -n 50 /var/log/<file>.log
- journalctl -u <service> -n 50 -> Shows the last 50 log entries for the ssh service from systemd journal.
- tail -n 50 /var/log/auth.log -> Shows the last 50 lines of the authentication log file, which includes SSH login attempts.
  
## End with a “If this worsens” section listing 3 next steps you would take (ex: restart strategy, increase log verbosity, collect strace).
1. Restart SSH safely :
-> sudo systemctl restart ssh
2. Increase SSH log verbosity :
-> Edit /etc/ssh/sshd_config and set:LogLevel VERBOSE
3. Collect deep diagnostics :
   Trace SSH process system calls: sudo strace -p <sshd_pid>
4. Capture network activity : sudo tcpdump -i eth0 port 22

   
  

