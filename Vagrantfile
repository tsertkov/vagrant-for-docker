vagrant_dir = File.expand_path(File.dirname(__FILE__))

Vagrant.configure("2") do |config|
  config.vm.box = "ailispaw/barge"
  config.vm.synced_folder vagrant_dir, vagrant_dir
  config.vm.network :private_network, type: "dhcp"
  config.vm.network :forwarded_port, guest: 2375, host: 22375, disabled: true

  config.vm.provider :virtualbox do |vb|
    vb.name = File.basename(__dir__)
    vb.memory = "1024"
    vb.cpus = "2"
  end

  config.vm.provision "shell", inline: "/etc/init.d/docker restart latest"
end
