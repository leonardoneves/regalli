# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.

  # Setup for web server
  config.vm.define "web" do |web|
        web.vm.hostname = "web"
        web.vm.box = "bento/ubuntu-16.04"
        web.vm.network "private_network", type: "dhcp"
        web.vm.network "forwarded_port", guest: 8080, host: 9292
  
  	web.vm.provision :ansible do |ansible|
    		ansible.playbook = "provisioning/playbook.yml"
  	end
  end

  config.vm.provider 'virtualbox' do |vb|
	vb.customize ['modifyvm', :id, '--cableconnected1', 'on']
  end

end
