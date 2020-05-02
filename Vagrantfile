# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"

  config.vm.box_check_update = false

  config.vm.boot_timeout = 600

  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false

    vb.cpus = "1"
    vb.memory = "1536"

    vb.customize ["modifyvm", :id, "--audio", "none"]
  end

  config.vm.define "jenkins-master", autostart: true do |inst|

    inst.vm.hostname = "jenkins-master"

    inst.vm.network :forwarded_port, guest: 8080, host: 8181

    inst.vm.provision "ansible_local" do |ansible|
      ansible.compatibility_mode = "2.0"
      ansible.playbook = "provisioning/setup_vagrant.yaml"
    end

    inst.vm.provision :ansible_local do |ansible|
      ansible.compatibility_mode = "2.0"
      ansible.playbook = "provisioning/jenkins-master.yaml"
    end

  end

end
