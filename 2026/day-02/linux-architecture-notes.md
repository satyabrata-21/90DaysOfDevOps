# Day 02 – Linux Architecture, Processes, and systemd
Task - Today’s goal is to understand how Linux works under the hood.


# The core components of Linux (kernel, user space, init/systemd)

:) 
- Kernel: The Kernel is core componet of Operating system. think kernel is middleman of hardware and software. (ASKH)
- User space: where user and applicatins run
- init / systemd: The first process started by kernel
  . init - Old system
  . systemd - Morden system

  
# How processes are created and managed?

:)
- A process is running instanse of program.
- user run a command > shell send request to kernel > kernel create a new process > process gets a unique PID

  
# What systemd does and why it matters?

:)
- systemd is:
  . init system
  . service manager
  . process suerviser
- matters:
  . Ensure service stay running
  . improves reliability
  . faster boot time


