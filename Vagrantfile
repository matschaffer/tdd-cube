#!/usr/bin/env ruby

Vagrant::Config.run do |config|
  config.vm.define :ubuntu12 do |c|
    c.vm.boot_mode = :gui
    c.vm.box       = "opscode-ubuntu-12.04"
    c.vm.box_url   = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
    c.vm.network :hostonly, "10.0.3.4"
    c.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [ 'cookbooks' ]
      chef.add_recipe 'minitest-handler'
      chef.add_recipe 'cube'
    end
  end

  # config.vm.define :centos6 do |c|
  #   c.vm.boot_mode = :gui
  #   c.vm.box     = "opscode-centos-6.3"
  #   c.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-centos-6.3.box"
  #   c.vm.network :hostonly, "10.0.3.2"
  #   c.vm.provision :chef_solo do |chef|
  #     chef.cookbooks_path = [ 'cookbooks' ]
  #     chef.add_recipe 'minitest-handler'
  #     chef.add_recipe 'cube'
  #   end
  # end
end
