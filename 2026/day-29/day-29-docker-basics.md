# Day 29 – Introduction to Docker

## Challenge Tasks

### Task 1: What is Docker?
Research and write short notes on:
- What is a container ?
  - A container is a lightweight, portable package that includes everything needed to run an application. It’s an instance of an image that is ready to execute code with all its necessary libraries,configurations and files.
  
- why do we need them?
  - You can build locally,deploy to the cloud and run anywhere on any server.
  - They are faster to start than virtual machines and use less resources.
  - No version mismatch issues.
  - Containers are used to package applications with their dependencies so they run consistently across any environment.

- Containers vs Virtual Machines — what's the real difference?

### Containers vs Virtual Machines

| Feature | Virtual Machines (VMs) | Containers |
|----------|------------------------|------------|
| **Virtualization Level** | Hardware-level virtualization | OS-level virtualization |
| **Architecture** | Includes full guest OS + hypervisor | Shares host OS kernel |
| **Size** | Large (GBs) | Small (MBs) |
| **Startup Time** | Slow (minutes) | Fast (seconds) |
| **Performance** | Slower due to OS overhead | Faster, lightweight |
| **Isolation** | Strong (separate OS per VM) | Process-level isolation |
| **Resource Usage** | High CPU, RAM, Storage usage | Efficient resource usage |
| **Portability** | Less portable | Highly portable |
| **Management** | Complex (manage full OS) | Simple (manage app + dependencies) |
| **Best For** | Legacy apps, multiple OS environments | Microservices, CI/CD, cloud-native apps |

- What is the Docker architecture? (daemon, client, images, containers, registry)

### Docker Architecture

**Docker Daemon**: 
   - The background service that manages Docker objects (images, containers, networks, volumes) and handles container lifecycle. 

**How it works**:
   - The Docker daemon listens for Docker API requests and performs the requested actions, such as building, running, and distributing containers.



- **Docker Client**: 
    - The command-line interface (CLI) that users interact with to communicate with the Docker Daemon. It sends commands to the daemon, which executes them.

**How it works**: 
   - You type commands in the Docker client, and it sends those requests to the Docker daemon, which performs the actual work.

**Example Commands**:
- `docker build`: Build an image from a Dockerfile.
- `docker run`: Run a container from an image.
- `docker pull`: Pull an image from a registry.
- `docker push`: Push an image to a registry.

**Docker Images**: 
   - Read-only templates used to create containers. They contain the application code, libraries, dependencies, and runtime needed to run an application.
**How it works**: 
   - You can build an image using a Dockerfile, which contains instructions on how to create the image. Once built, you can run a container from that image.
**Example**:
```Dockerfile   
FROM python:3.8-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
```
**Docker Containers**: 
   - Docker containers are running instances of Docker images that package an application with all its dependencies and run it in an isolated environment.

   - Docker takes your app + dependencies → packages them → runs them as a container on your system

**How it works**: 
   - Docker containers work by running an application inside an isolated environment using the host system’s OS kernel.
**Example**:
```bash     
docker run -d -p 80:80 nginx
```
**Docker Registry**: 
   - A Docker Registry is a place where Docker images are stored and shared.

**How it works**: 
   - Docker Registry works by storing images so you can be pushed and pulled anywhere.
**Example**:
- Docker Hub: A public registry where anyone can host their images. 

Draw or describe the Docker architecture in your own words.

---

### Task 2: Install Docker
1. Install Docker on your machine (or use a cloud instance)
---
    For Ubuntu:
    `sudo apt update`
    `sudo apt install docker.io`
    `sudo systemctl status docker`
    `sudo systemctl start docker`
    `sudo usermod -aG docker $USER`
    `newgrp docker`
---

2. Verify the installation
    `docker --version`
![Output](images/Task-2(2).png)
3. Run the `hello-world` container
    `docker run hello-world`
![Output](images/Task-2(3).png)

4. Read the output carefully — it explains what just happened
    - The Docker client contacted the Docker daemon.
    - The Docker daemon pulled the "hello-world" image from the Docker Hub registry.
    - The Docker daemon created a new container from that image which runs the executable that produces the output you are currently reading.


---

### Task 3: Run Real Containers
1. Run an **Nginx** container and access it in your browser
    `docker run -d -p 80:80 nginx`
![Output](images/Task-3(1).png)
![Output](images/Task-3(1-2).png)
    - Open your browser and go to `http://localhost:80` to see the Nginx welcome page. 
2. Run an **Ubuntu** container in interactive mode — explore it like a mini Linux machine
    `docker run -it ubuntu`
![Output](images/Task-3(2).png)
3. List all running containers
    `docker ps`
![Output](images/Task-3(3).png)
4. List all containers (including stopped ones)
    `docker ps -a`
![Output](images/Task-3(4).png)

5. Stop and remove a container
    `docker stop <container_id>`
    `docker rm <container_id>`
![Output](images/Task-3(5).png)

---

### Task 4: Explore
1. Run a container in **detached mode** — what's different?
    `docker run -d ubuntu`
![Output](images/Task-4(1).png)
    
2. Give a container a custom **name**
    `docker run -d --name my-web httpd`
![Output](images/Task-4(2).png)
3. Map a **port** from the container to your host
    `docker run -d --name web2 -p 80:80 nginx <host_port>:<container_port>`
    `docker run -d -p 8080:80 nginx`
![Output](images/Task-4(3).png)

4. Check **logs** of a running container
    `docker logs <container_id>`
![Output](images/Task-4(4).png)
5. Run a command **inside** a running container
    `docker exec -it <container_id> bash`
![Output](images/Task-4(5).png)

---

## Why This Matters for DevOps
    
   - Docker is the foundation of modern deployment.
   - Every CI/CD pipeline, Kubernetes cluster,and microservice - architecture starts with containers.
   - Today you took the first step


