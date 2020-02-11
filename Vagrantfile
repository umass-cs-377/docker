Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
   vb.gui = false
  end
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install -y qemu-system qemu-utils gcc g++ emacs libgtest-dev cmake git zip build-essential python3 python3-setuptools python3-dev zip libgtest-dev python3-pip qemu tmux gdb vim nano valgrind
    cd /usr/src/gtest && cmake CMakeLists.txt && make && cp *.a /usr/lib
    pip3 install PyYAML
  SHELL
  config.vm.synced_folder "./", "/home/vagrant/shared"
end
