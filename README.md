# Docker setup

First install Docker Community Edition:

* [Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac)

* [Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)

* [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

# Run container

If you have never used Docker before, there are many tutorials and videos online that will give you a quick introduction.  We are just using Docker to give you a consistent development environment to work in.  It is also the same environment used to grade your projects.  This ensures everything will work the same for us as it does for you.

The biggest gotcha is that when you run a Docker container from an image, it is *ephemeral*.  Nothing you do in the container will live past you exiting the container (which is as easy as hitting control-D).

To save your work, you must mount a disk on your local machine into docker, such as this (substitute where you keep your files):

  docker run -it -v /Users/mcorner/umass:/mnt/files mcorner/os377 bash

You can then edit your code on your machine (or using emacs etc inside of Docker).

# Run xv6
In a container:

  git clone git://github.com/mit-pdos/xv6-public.git
  cd xv6-public
  make qemu-nox

To exit qemu Ctrl-A x

# Build from Dockerfile

If you want to build from the original Dockerfile:

  docker build . -t mcorner/os377:latest

  docker push mcorner/os377
