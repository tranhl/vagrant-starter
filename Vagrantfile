# -*- mode: ruby -*-
# vi: set ft=ruby :

# Edit variables according to configuration needs
vmName = "Vagrant Base"
vmBoxName = "debian/jessie64"
sourcecodePath = "./sourcecode"
vagrantRootPath = "/home/vagrant/sourcecode"
provisioningScriptPath = "./provisioning/bootstrap_base.sh"
vmMemory = "1024"

Vagrant.configure("2") do |config|
    config.vm.box = vmBoxName
    config.ssh.username = "vagrant"

    config.vm.network "private_network", ip: "192.168.10.10"
    config.vm.provider "virtualbox" do |vb|
        vb.memory = vmMemory
        vb.name = vmName
    end

    config.vm.synced_folder sourcecodePath, vagrantRootPath, type: "nfs"
    config.vm.provision :shell, privileged: false, path: provisioningScriptPath
end
