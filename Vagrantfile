# -*- mode: ruby -*-
# vi: set ft=ruby :

# Edit variables according to configuration needs
vmName = "Vagrant Base"
vmBoxName = "debian/jessie64"
sourcecodePath = "./project"
vagrantRootPath = "/home/vagrant/project"
provisioningScriptPath = "./provisioning/bootstrap_base.sh"
vmPrivateNetworkAddress = "192.168.10.10"
vmMemory = "1024"

Vagrant.configure("2") do |config|
    config.vm.box = vmBoxName
    config.ssh.username = "vagrant"

    config.vm.network "private_network", ip: vmPrivateNetworkAddress
    config.vm.provider "virtualbox" do |vb|
        vb.memory = vmMemory
        vb.name = vmName
    end

    config.vm.synced_folder sourcecodePath, vagrantRootPath, type: "nfs", mount_options: ['rw', 'vers=3', 'tcp', 'fsc' ,'actimeo=1']
    config.vm.provision :shell, privileged: false, path: provisioningScriptPath
end
