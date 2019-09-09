FROM ubuntu:18.04
RUN yes | unminimize && \
    apt-get install -y man-db && \
    rm -r /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install -y qemu-system qemu-utils gcc g++ emacs libgtest-dev cmake git zip build-essential python python-setuptools python-dev zip libgtest-dev python-pip
RUN apt-get install -y qemu tmux
RUN apt-get install -y gdb
RUN cd /usr/src/gtest && cmake CMakeLists.txt && make && cp *.a /usr/lib
RUN pip install PyYAML
RUN apt-get install -y valgrind
CMD bash
