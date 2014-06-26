# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

# Default env properties which can be overridden
# Example overrides:
#   echo "ENV['BASEIMAGE_PATH'] ||= '../../phusion/baseimage-docker'   " >> ~/.vagrant.d/Vagrantfile
#   echo "ENV['BASE_BOX_URL']   ||= 'd\:/dev/vm/vagrant/boxes/phusion/'" >> ~/.vagrant.d/Vagrantfile
BASE_BOX          = ENV['BASE_BOX']          || "phusion/ubuntu-14.04-amd64"


$script = <<SCRIPT
set -ex
wget -q -O - https://get.docker.io/gpg | apt-key add -
echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
apt-get update -qq
apt-get install -q -y --force-yes lxc-docker
usermod -a -G docker vagrant
docker version
su - vagrant -c 'echo alias d=docker >> ~/.bash_aliases'
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = BASE_BOX
  config.ssh.forward_agent = true
  config.vm.provision :shell, :inline => $script
end
