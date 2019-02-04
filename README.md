# Docker setup

First install Docker Community Edition:

* [Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac)

* [Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)

* [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Windows

* You must have Windows 10 Pro or Education (not Home).  Using the UMAss MS Imagine program you can upgrade.

* Also, you need to allow sharing for Windows Volumes:
[Sharing](https://blogs.msdn.microsoft.com/stevelasker/2016/06/14/configuring-docker-for-windows-volumes/)

# Run container

If you have never used Docker before, there are many tutorials and videos online that will give you a quick introduction.  We are just using Docker to give you a consistent development environment to work in.  It is also the same environment used to grade your projects.  This ensures everything will work the same for us as it does for you.

The biggest gotcha is that when you run a Docker container from an image, it is *ephemeral*.  Nothing you do in the container will live past you exiting the container (which is as easy as hitting control-D).

To save your work, you must mount a disk on your local machine into docker, such as this (substitute where you keep your files):
```
docker run -it -v /Users/SOMEDIRECTORYWITHYOURFILES:/mnt/files mcorner/os377:latest bash
```

You can then edit your code on your machine (or using emacs etc inside of Docker).
