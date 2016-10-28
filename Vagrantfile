# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

_config = YAML.load(File.open(File.join(File.dirname(__FILE__), "vagrant.yml"), File::RDONLY).read)
CONF = _config


Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"

  # config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: CONF["ipaddress"]
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = CONF["ram"]
    vb.cpus = CONF["cpus"]
  end

  config.vm.provision "shell", inline: <<-SHELL
    # sed -i "s,httpredir.debian.org,ftp.at.debian.org,g" /etc/apt/sources.list
    apt-get update && apt-get install -y apt-transport-https ca-certificates
    apt-get install -y linux-headers-`uname -r` dkms
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
    apt-get update
    apt-cache policy docker-engine
    sudo apt-get install -y docker-engine
    sudo service docker start
  SHELL
end
