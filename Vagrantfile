# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

###############################################################################
# Globals
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 443, host: 8443

  config.vm.synced_folder "shared", "/tmp/shared"

###############################################################################
# Puppet
  config.vm.synced_folder "puppet/modules", "/tmp/vagrant-puppet/puppet/modules"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.options = ["--modulepath", "/tmp/vagrant-puppet/puppet/modules"]
    puppet.manifest_file  = "site.pp"
  end

###############################################################################
# Servers
  config.vm.define "server1" do |server|
    server.vm.hostname = "server1"
    server.vm.network :private_network, ip: "192.168.33.10"
  end

end
