#!/usr/bin/env ruby

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :hostonly, "10.0.3.2"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = [ 'cookbooks' ]
    chef.add_recipe 'minitest-handler'
    chef.add_recipe 'cube'
  end
end
