Managers=1
Workers=1

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  (1..Managers).each do |m_id|
    config.vm.define "manager#{m_id}" do |m|
      m.vm.hostname = "manager#{m_id}"
      m.vm.network "private_network", ip: "192.168.56.#{m_id+1}"
      config.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 2
      end
    end
  end
  (1..Workers).each do |w_id|
      config.vm.define "worker#{w_id}" do |w|
        w.vm.hostname = "worker#{w_id}"
        w.vm.network "private_network", ip: "192.168.56.#{4+w_id}"
        config.vm.provider "virtualbox" do |v|
          v.memory = 1024
          v.cpus = 2
        end
      end
    end
end
