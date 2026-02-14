## Quick Concepts (write 1–2 bullets each)
**OSI Model (L1–L7)**
- L1 Physical – Cables, signals, hardware transmission
- L2 Data Link – MAC address, switches, frames
- L3 Network – IP addressing, routing
- L4 Transport – TCP/UDP, ports, reliability
- L5 Session – Session management
- L6 Presentation – Encryption, compression
- L7 Application – HTTP, HTTPS, DNS, FTP

**TCP/IP Model (4 Layers)**
  - Link – Physical + Data Link (Hardware, MAC)
  - Internet – IP addressing & routing
  - Transport – TCP / UDP
  - Application – HTTP, HTTPS, DNS, SSH, etc.
    
  ***OSI = 7 layers (theoretical model) and TCP/IP = 4 layers (practical implementation model)***

## Where Protocols Sit
- IP → Network (OSI L3) / Internet (TCP/IP)
- TCP/UDP → Transport (OSI L4)
- HTTP/HTTPS → Application (OSI L7)
- DNS → Application (OSI L7)
  
***One real example: “curl https://example.com = App layer over TCP over IP”***

### Application Layer / curl → HTTPS request -> Transport Layer / TCP (Port 443) ->Network Layer /IP (Routing packets)->  Link Layer/Ethernet / WiFi (MAC)

## Hands-on Checklist (run these; add 1–2 line observations)
- **Identity:** `hostname -I` (or `ip addr show`) —
- ### Observation: IP address is 192.168.1.10 (private LAN IP).
- **Reachability:** `ping google.com` —
- ### Observation: Avg latency ~25 ms - 0% packet loss - Internet connectivity is healthy. (If packet loss >0% → possible network instability.)
- **Path:** `traceroute google.com` (or `tracepath`) —
- ### Observation:  ~12 hops to reach destination - One hop showed higher latency (~120 ms) - Possible ISP or upstream delay. - (If timeouts * * * appear → firewall or ICMP blocked.)
- **Ports:** `ss -tulpn` (or `netstat -tulpn`) —
- ### Observation: SSH service listening on port 22 - Service = sshd - Server allows SSH connections.
- **Name resolution:** `dig google.com` or `nslookup google.com` —
- ### Observation: Resolved to IP 142.x.x.x - DNS resolution working properly.
- **HTTP check:** `curl -I google.com` —
- ### Observation: HTTP status: 200 OK - Web server reachable and responding.
- **Connections snapshot:** `netstat -an | head` —
- ### Observation: ~3 ESTABLISHED connections - ~5 LISTEN sockets - System actively communicating and services running.

  
## Mini Task: Port Probe & Interpret
1) Identify one listening port from `ss -tulpn` (e.g., SSH on 22 or a local web app).  
2) From the same machine, test it: `nc -zv localhost <port>` (or `curl -I http://localhost:<port>`).  
3) Write one line: is it reachable? If not, what’s the next check? (e.g., service status, firewall).

## What i did:-
- Identify Listening Port : ss -tulpn
-  Test From Same Machine : nc -zv localhost 22
-  is it reachable? If not, what’s the next check? : Port 22 is reachable; if not reachable, next check the service status (systemctl status sshd) and verify firewall rules (ufw status or firewall-cmd --list-all).


# Reflection (add to your markdown)
- Which command gives you the fastest signal when something is broken?
- What layer (OSI/TCP-IP) would you inspect next if DNS fails? If HTTP 500 shows up?
- Two follow-up checks you’d run in a real incident.

## Step- 1
### Fastest Signal When Something Is Broken?
- curl -I http://localhost:<port>
### Why?
- Instantly shows HTTP status (200 / 404 / 500)
- Confirms app + TCP + IP layers quickly
- Gives immediate direction
- systemctl status <service> (quick health check)

## Step -2
### If DNS fails — which layer to inspect?
- DNS belongs to: OSI → Layer 7 (Application) and TCP/IP → Application layer
- Next inspection: Check /etc/resolv.conf and Test with nslookup or dig

### If HTTP 500 shows up — which layer?
- HTTP 500 = Application layer issue
- Meaning: Web server running , TCP/IP working , Problem inside application/backend
- Next inspect: Application logs and Web server logs

## Step -3
### Two Follow-Up Checks in Real Incident:
- Check service status: systemctl status nginx
- Check logs: journalctl -u nginx -n 20
- /var/log/nginx/error.log
  
