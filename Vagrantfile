Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: <<-SHELL
      apt-get update -y
      echo "10.0.0.10  master-node" >> /etc/hosts
      echo "10.0.0.11  worker-node01" >> /etc/hosts
      echo "10.0.0.12  worker-node02" >> /etc/hosts
  SHELL

  config.vm.provision "shell", path: "C:/Users/Mykola/KubeadmVagrant-automation/scripts/common-all-nodes.sh"
  
  config.vm.define "master" do |master|
    master.vm.provision "shell", path: "C:/Users/Mykola/KubeadmVagrant-automation/scripts/master-node.sh"
    master.vm.box = "bento/ubuntu-22.04"
    master.vm.hostname = "master-node"
    master.vm.network "private_network", ip: "10.0.0.10"
    master.vm.provider "virtualbox" do |vb|
        vb.memory = 4048
        vb.cpus = 2
    end
  end

  (1..2).each do |i|

  config.vm.define "node0#{i}" do |node|
    node.vm.provision "shell", path: "C:/Users/Mykola/KubeadmVagrant-automation/scripts/worker_join.sh"
    node.vm.box = "bento/ubuntu-22.04"
    node.vm.hostname = "worker-node0#{i}"
    node.vm.network "private_network", ip: "10.0.0.1#{i}"
    node.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 1
    end
  end
  
  end
end