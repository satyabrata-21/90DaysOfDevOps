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


