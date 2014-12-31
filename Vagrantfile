# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
    config.vm.box = "docker_base"
    config.vm.box_url = "https://download.leftxs.org/vagrant/docker-base.box"
    #config.vm.box_url = "https://download.leftxs.org/vagrant/debian_docker_base.box"
    config.vm.box_download_insecure = true

    config.vm.network "private_network", ip: "192.168.50.5"
    config.vm.hostname = "docker-dev"

    config.vm.provider "virtualbox" do |vb|
        #vb.customize ["modifyvm", :id, "--memory", "1024"]
        vb.customize ["modifyvm", :id, "--name", "docker.local" ]
    end

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/playbook.yml"
    end
end
