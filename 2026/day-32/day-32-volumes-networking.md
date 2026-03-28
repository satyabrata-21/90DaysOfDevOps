# Day 32 – Docker Volumes & Networking

## Challenge Tasks

### Task 1: The Problem
1. Run a Postgres or MySQL container
![Output](images/Task-1(1).png)

2. Create some data inside it (a table, a few rows — anything)
![Output](images/Task-1(2).png)

3. Stop and remove the container
![Output](images/Task-1(3).png)

4. Run a new one — is your data still there?
![Output](images/Task-1(4).png)

- No, the data is gone! This is because by default, Docker containers are ephemeral — when you remove a container, all its data goes with it. 

Write what happened and why.

---

### Task 2: Named Volumes
1. Create a named volume
![Output](images/Task-2(1).png)

2. Run the same database container, but this time **attach the volume** to it
![Output](images/Task-2(2).png)

3. Add some data, stop and remove the container
![Output](images/Task-2(3).png)

4. Run a brand new container with the **same volume**
![Output](images/Task-2(4).png)

5. Is the data still there?
Yes! The named volume persists data independently of the container lifecycle. When you attach the same volume to a new container, it can access the existing data.

**Verify:** `docker volume ls`, `docker volume inspect`
![Output](images/Task-2(5).png)

---

### Task 3: Bind Mounts
1. Create a folder on your host machine with an `index.html` file
2. Run an Nginx container and **bind mount** your folder to the Nginx web directory
3. Access the page in your browser
![Output](images/Task-3(1).png)

4. Edit the `index.html` on your host — refresh the browser
![Output](images/Task-3(4).png)

Write in your notes: What is the difference between a named volume and a bind mount?
- Named Volume = “Docker handles storage”
- Bind Mount = “You control the storage path”
- Named Volume: A Docker-managed storage space used to persist data independently of containers.
- Bind Mount: A direct link between a specific host machine path and a container path.
---

### Task 4: Docker Networking Basics
1. List all Docker networks on your machine
![Output](images/Task-4(1).png)

2. Inspect the default `bridge` network
![Output](images/Task-4(2).png)

3. Run two containers on the default bridge — can they ping each other by **name**?
- No

![Output](images/Task-4(3).png)

4. Run two containers on the default bridge — can they ping each other by **IP**?
![Output](images/Task-4(4).png)

---

### Task 5: Custom Networks
1. Create a custom bridge network called `my-app-net`
![Output](images/Task-5(1).png)

2. Run two containers on `my-app-net`
3. Can they ping each other by **name** now?
![Output](images/Task-5(3).png)
- Yes! Custom bridge networks provide built-in DNS resolution, allowing containers to communicate using their names.

4. Write in your notes: Why does custom networking allow name-based communication but the default bridge doesn't?
- Default bridge
   - No DNS service
   - You must use IP address
   - Container name won’t work

- Custom network
   - Has built-in DNS 
   - You can use container name
   - Easy communication 

- One-line reason:
   - Custom network = has DNS → name works
   - Default bridge = no DNS → only IP works
---

### Task 6: Put It Together
1. Create a custom network
![Output](images/Task-6(1).png)
2. Run a **database container** (MySQL/Postgres) on that network with a volume for data
3. Run an **app container** (use any image) on the same network
4. Verify the app container can reach the database by container name
![Output](images/Task-6(a).png)
![Output](images/Task-6(b).png)

---