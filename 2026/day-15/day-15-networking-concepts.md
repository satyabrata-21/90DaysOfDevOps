# Task 1:DNS – How Names Become IPs

***Explain in 3–4 lines: what happens when you type `google.com` in a browser?***
- Ans: When you type google.com in your browser, your computer first asks a DNS server for the IP address of that name.
- Then DNS server looks up the domain and returns the correct IP address (like 142.x.x.x).
- Your computer then connects to that IP address.
- Finally, the server sends back the website data, and the page loads in your browser.

***What are these record types? Write one line each:   - `A`, `AAAA`, `CNAME`, `MX`, `NS`***
- A Record → Maps a domain name to an IPv4 address.
- AAAA Record → Maps a domain name to an IPv6 address.
- CNAME Record → Points one domain name to another domain name.
- MX Record → Tells where emails for the domain should go.
- NS Record → Shows which name servers are responsible for the domain.

***Run: `dig google.com` — identify the A record and TTL from the output***
- A Record → The IP address after A -> Example: 142.250.183.14
- TTL (Time To Live) → The number before IN -> Example: 300 (means cache for 300 seconds = 5 minutes)


# Task 2: IP Addressing

***What is an IPv4 address? How is it structured? (e.g., `192.168.1.10`)***
- An IPv4 address is a number used to identify a device on a network.
- 4 parts (called octets). Each part ranges from 0 to 255. Example: 192 . 168 . 1 . 10
  
***Difference between **public** and **private** IPs — give one example of each***
### Public IP:
- Used on the internet
- Accessible from anywhere
- Given by your ISP
- Example: 8.8.8.8 (DNS server by Google)
### Private IP:
- Used inside local networks
- Not directly accessible from the internet
- Used in homes, offices, labs
- Example: 192.168.1.10
  
***What are the private IP ranges?*** 
- These IP ranges are reserved for private networks:
- 10.0.0.0 – 10.255.255.255
- 172.16.0.0 – 172.31.255.255
- 192.168.0.0 – 192.168.255.255

***Run: `ip addr show` — identify which of your IPs are private***
- If IP starts with 10. → Private
- If IP starts with 172.16 – 172.31 → Private
- If IP starts with 192.168. → Private

---

# Task 3: CIDR & Subnetting:

***What does `/24` mean in `192.168.1.0/24`?***
- /24 means:
- First 24 bits are for the network
- Remaining 8 bits are for hosts
- In simple words: /24 tells us how big the network is.
- Subnet mask for /24 = 255.255.255.0
  
***How many usable hosts in a `/24`? A `/16`? A `/28`?***
**Formula:**
- Total IPs = 2^(32 - CIDR)
- Usable Hosts = Total IPs - 2
- (We subtract 2 because 1 is Network ID and 1 is Broadcast IP)
1. /24
- Total IPs = 2⁸ = 256
- Usable Hosts = 256 - 2 = 254
2. /16
- Total IPs = 2¹⁶ = 65,536
- Usable Hosts = 65,536 - 2 = 65,534
3. /28
- Total IPs = 2⁴ = 16
- Usable Hosts = 16 - 2 = 14

***Explain in your own words: why do we subnet?***
## We subnet to:
- Divide a big network into smaller networks
- Reduce network traffic
- Improve security
- Use IP addresses efficiently
- Simple: Subnetting helps us organize and control networks better.
***Quick exercise — fill in:***

| CIDR | Subnet Mask     | Total IPs | Usable Hosts |
|------|-----------------|-----------|--------------|
| /24  | 255.255.255.0   | 256       | 256          |
| /16  | 255.255.0.0     | 65,536    | 65,534       |
| /28  | 255.255.255.240 | 16        | 14           |

---

# Task 4: Ports – The Doors to Services:

***What is a port? Why do we need them?***
- A port is a number that identifies a specific service running on a computer.
1. Think of it like this:
- IP address = House address 
- Port number = Door number
2. If data comes to your computer:
- IP tells which computer
- Port tells which service inside that computer

***Document these common ports:***
- Because one computer runs many services at the same time:
- examples: Web server, SSH, Database, Email, FTP
- Ports help the system know which service should receive the data.
- Without ports → the system would not know where to send the traffic.

# Task 5: Putting It Together
***You run `curl http://myapp.com:8080` — what networking concepts from today are involved?***
- curl http://myapp.com:8080
->  What happens?
- First, DNS finds the IP address of myapp.com.
- Then your computer connects to that IP using port 8080.
- The server sends back the response, and curl shows it.
- Simple: Name → IP → Port → Response

***Your app can't reach a database at `10.0.1.50:3306` — what would you check first?***
-> What to check first?
- Check if 10.0.1.50 is reachable (network working or not).
- Check if port 3306 (database port) is open.
- Check if firewall is blocking it.
- Simple: Network → Port → Firewall
