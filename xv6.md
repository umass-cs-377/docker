# Getting Started

1. Clone the xv6-public repository on your local machine:

git clone https://github.com/mit-pdos/xv6-public.git


2. Run the docker container as follows (but replace the volume file paths (where it says /Users/joe/GitHub/xv6-public) with the correct file paths for your local xv6-public repository that you cloned):

docker run --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --privileged -it -v /Users/joe/GitHub/xv6-public:/root/xv6-public mcorner/os377 bash


3. Inside the docker image, download the missing packages:

apt-get install -y qemu tmux


4. Change into the XV6 directory:

cd /mnt/files/xv6-public


5. Compile XV6:

make


Now, pick either of the following options to work with XV6:



# Running XV6:

1. Run XV6 using make:

make qemu-nox


2. Now you can run programs such as ls:

root@a589769832ae:/mnt/files/xv6-public# make qemu-nox
qemu-system-i386 -nographic -drive file=fs.img,index=1,media=disk,format=raw -drive file=xv6.img,index=0,media=disk,format=raw -smp 2 -m 512
xv6...
cpu1: starting 1
cpu0: starting 0
sb: size 1000 nblocks 941 ninodes 200 nlog 30 logstart 2 inodestart 32 bmap start 58
init: starting sh
$ ls
.              1 1 512
..             1 1 512
README         2 2 2327
cat            2 3 13612
echo           2 4 12624
forktest       2 5 8052
grep           2 6 15488
init           2 7 13208
kill           2 8 12676
ln             2 9 12572
ls             2 10 14760
mkdir          2 11 12756
rm             2 12 12732
sh             2 13 23220
stressfs       2 14 13404
usertests      2 15 56336
wc             2 16 14152
zombie         2 17 12396
console        3 18 0


3. To exit XV6, press CTRL+A, and then X (not all three at the same time).



# Debugging XV6 with GDB:


For this, we will be using Tmux, which is a terminal multiplexer. To learn more about it and to learn about the commands and shortcuts you can use in Tmux, you can read this cheatsheet.



1. Open Tmux, which will allow you to have multiple terminals open inside the Docker container (you should see a bar appear at the bottom of your terminal which says something like 0:bash):

tmux


2. Open GDB in XV6:

make qemu-nox-gdb


3. Open a new terminal session inside Tmux (this will keep the session with XV6 running in GDB open and open another session where you can connect to the running GDB session to debug XV6). To do this, press CTRL+". You should now have a split terminal with two sessions that looks something like this:


4. You should now be working inside the second terminal session. Connect to the other GDB session with:

gdb kernel


5. Now you should be inside GDB, where you can do any debugging that you want. You can type c to continue and cause XV6 to start running in your other terminal session.



6. You can switch to the other terminal session to type commands into XV6 like it is running normally by pressing CTRL+B and then o. You can use this combination to switch between the two sessions and work in whichever one you would like. When you are done and want to exit the current session, quit whatever is running (see "running XV6 above for XV6, or press q to quit GDB), and then type exit.
