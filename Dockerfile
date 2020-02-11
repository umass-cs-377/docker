FROM ubuntu:18.04
RUN yes | unminimize && \
    apt-get install -y man-db && \
    rm -r /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install -y qemu-system qemu-utils gcc g++ emacs libgtest-dev cmake git zip build-essential python3 python3-setuptools python3-dev zip libgtest-dev python3-pip nano vim qemu tmux gdb valgrind man manpages-posix

RUN cd /usr/src/gtest && cmake CMakeLists.txt && make && cp *.a /usr/lib
RUN pip3 install PyYAML

CMD bash
