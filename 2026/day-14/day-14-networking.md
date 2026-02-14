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

