# Day 37 – Docker Revision & Cheat Sheet

## Goal
Take a **one-day pause** to consolidate everything from Days 29–36 so Docker actually sticks.


## Self-Assessment Checklist
Mark yourself honestly — **can do**, **shaky**, or **haven't done**:

- [can do] Run a container from Docker Hub (interactive + detached)
- [can do] List, stop, remove containers and images
- [shaky] Explain image layers and how caching works
- [can do] Write a Dockerfile from scratch with FROM, RUN, COPY, WORKDIR, CMD
- [can do] Explain CMD vs ENTRYPOINT
- [can do] Build and tag a custom image
- [can do] Create and use named volumes
- [can do] Use bind mounts
- [can do] Create custom networks and connect containers
- [can do] Write a docker-compose.yml for a multi-container app
- [can do] Use environment variables and .env files in Compose
- [can do] Write a multi-stage Dockerfile
- [can do] Push an image to Docker Hub
- [can do] Use healthchecks and depends_on

---

## Quick-Fire Questions
Answer from memory, then verify:
1. What is the difference between an image and a container?
    - An image is a read-only template that contains the instructions for creating a container. A container is a running instance of an image, which can be started, stopped, and modified.

2. What happens to data inside a container when you remove it?
    - When you remove a container, any data stored inside it is lost unless you have used volumes or bind mounts to persist the data outside the container.

3. How do two containers on the same custom network communicate?
    - Containers on the same custom network can communicate with each other using their container names as hostnames. Docker's embedded DNS server resolves these names to the appropriate IP addresses.
4. What does `docker compose down -v` do differently from `docker compose down`?
    - `docker compose down -v` removes the volumes associated with the services, while `docker compose down` only stops and removes the containers.
5. Why are multi-stage builds useful?
    - Multi-stage builds are useful for reducing the size of the final image by only including the necessary files and dependencies in the production image, while keeping development tools and intermediate files in separate stages.
6. What is the difference between `COPY` and `ADD`?
    - `COPY` copies files from the host machine to the container's filesystem, while `ADD` can also extract compressed files and download files from URLs.
7. What does `-p 8080:80` mean?
    - `-p 8080:80` maps port 8080 on the host machine to port 80 in the container. This allows you to access the service running on port 80 in the container through port 8080 on the host.
8. How do you check how much disk space Docker is using?
    - You can use the `docker system df` command to check how much disk space Docker is using.

---

## Build Your Docker Cheat Sheet

Create `docker-cheatsheet.md` organized by category:
- **Container commands** — run, ps, stop, rm, exec, logs
- **Image commands** — build, pull, push, tag, ls, rm
- **Volume commands** — create, ls, inspect, rm
- **Network commands** — create, ls, inspect, connect
- **Compose commands** — up, down, ps, logs, build
- **Cleanup commands** — prune, system df
- **Dockerfile instructions** — FROM, RUN, COPY, WORKDIR, EXPOSE, CMD, ENTRYPOINT

Keep it short — one line per command, something you'd actually reference on the job.

---