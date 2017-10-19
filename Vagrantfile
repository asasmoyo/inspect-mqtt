# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.define "server" do |node|
    node.vm.hostname = "server"
    node.vm.network "private_network", ip: "10.11.12.2"
    node.vm.provision "shell", path: "provision-server.sh"
  end

  config.vm.define "client" do |node|
    node.vm.hostname = "client"
    node.vm.network "private_network", ip: "10.11.12.3"
    node.vm.provision "shell", path: "provision-client.sh"
  end
end
