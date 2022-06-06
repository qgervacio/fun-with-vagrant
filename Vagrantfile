# Copyright (C) 2022 Quirino Gervacio. All Rights Reserved.

# -*- mode: ruby -*-
# vi: set ft=ruby :

# only 1 instance per vm
Vagrant.configure("2") do |config|
  create(config, "kube",      "192.168.57.1", 2, 4096, 1)
  create(config, "bitbucket", "192.168.57.2", 2, 2048, 1)
  create(config, "nexus",     "192.168.57.3", 2, 2048, 1)
end

def create(config, name, ip, cpu, mem, count)
  (0...count).each do |i|
    n = "#{name}#{i}"
    config.vm.define n do |node|
      node.vm.box = "ubuntu/impish64"
      node.vm.hostname = n

      node.vm.network "private_network",
        ip: "#{ip}#{i}"

      node.vm.provider "virtualbox" do |spec|
        spec.cpus   = cpu
        spec.memory = mem
      end

      node.vm.provision "shell", path: "scripts/001-base.sh"
      node.vm.provision "shell", path: "scripts/002-#{name}.sh"
      node.vm.provision "shell", path: "scripts/003-final.sh"
    end
  end
end
