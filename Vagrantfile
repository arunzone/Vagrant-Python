# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "gbarbieru/xenial"

  config.vm.hostname = "bim-service"
  config.vm.network :private_network, ip: "10.0.0.215"
  config.vm.provision "shell", path: "provision/setup.sh"

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :machine
  end

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

end
