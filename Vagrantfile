Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.define "manager" do |m|
    m.vm.hostname = "manager"
    m.vm.network "private_network", ip: "192.168.56.2"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 2
    end
  end
  
  config.vm.define "worker1" do |w1|
    w1.vm.hostname = "worker1"
    w1.vm.network "private_network", ip: "192.168.56.5"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 2
    end
  end
  
  config.vm.define "worker2" do |w2|
    w2.vm.hostname = "worker2"
    w2.vm.network "private_network", ip: "192.168.56.6"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 2
    end
  end

  config.vm.define "worker3" do |w3|
    w3.vm.hostname = "worker3"
    w3.vm.network "private_network", ip: "192.168.56.7"

    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 2
    end
  end
end
