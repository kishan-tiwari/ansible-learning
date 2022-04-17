Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|

  config.vm.box = "generic/ubuntu2004"
  config.vm.provision "shell", path: "bootstrap.sh"
  

  config.vm.define :AnsibleMaster do |cfg|
    cfg.vm.hostname = "master"
    cfg.vm.network "private_network", ip: "172.16.16.100"
    cfg.vm.provider :virtualbox do |v|
        v.name = "AnsibleMaster"
        v.memory  = 2048
        v.cpus    = 1        
      end
    end


  config.vm.define :DB do |cfg|
        cfg.vm.hostname = "db"
        cfg.vm.network "private_network", ip: "172.16.16.101"
        cfg.vm.provider :virtualbox do |v|
            v.name = "DB"
            v.memory  = 2048
            v.cpus    = 1            
        end
    end
  

  config.vm.define :App do |cfg|
        cfg.vm.hostname = "app"
        cfg.vm.network "private_network", ip: "172.16.16.102"
        cfg.vm.provider :virtualbox do |v|
            v.name = "App"
            v.memory  = 2048
            v.cpus    = 1
        end
    end
end