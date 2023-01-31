# uwcs-linux-docker

A Docker image meant to elimate the need to develop and test CS assignments over a remote SSH connection.
Aims to emulate the student CS Linux server of the Unversity of Waterloo.

Provides access to `valgrind`, `gdb`, `GoogleTest`, among other standard Ubuntu tools.

### Getting Started
After cloning the repository: 
- To build the Docker image, run `make build`.
- To run a container in the current directory, copy the `run_docker.sh` script to your project/assignment directory and execute it there.

You can also create an alias instead of copying the script file.
