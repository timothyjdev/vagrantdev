# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
HOST_IP = "192.168.50.4"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-i386-virtualbox-puppet.box"
  config.vm.box = "puppetlabs/centos-65-i386-virtualbox-puppet"
  config.vm.hostname = "web.server.local"
  config.vm.network "private_network", ip: HOST_IP

  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"    
    puppet.manifest_file = "site.pp"
  end

end
