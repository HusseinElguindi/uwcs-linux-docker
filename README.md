# uwcs-linux-docker

A Docker image meant to eliminate the need to develop and test CS assignments over a remote SSH connection.
Aims to emulate the student CS Linux server of the University of Waterloo.

Provides access to `valgrind`, `gdb`, `GoogleTest`, among other standard Ubuntu tools.

### Getting Started
After cloning the repository and installing Docker: 
- Build the Docker image using `make build`.
- Run a container in the current directory, copy the `run_docker.sh` script to your project/assignment directory and execute it with `run_docker.sh`.

You can also create an alias instead of copying the script file.

### Syncing To Remote
- Copy the `sync_up.sh` file into your assignment directory.
    - Change the appropriate variables (usually just `WATUSER` and `REMOTEDIR`).
- To sync up to the remote, run `./sync_up.sh`.
