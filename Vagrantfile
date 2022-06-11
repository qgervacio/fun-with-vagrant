# Copyright (C) 2022 Quirino Gervacio. All Rights Reserved.

# -*- mode: ruby -*-
# vi: set ft=ruby :

# only 1 instance per vm
Vagrant.configure("2") do |config|
  create(config, "kube",      "argo-dev",  "192.168.57.1", 3, 3072, 1)
  create(config, "kube",      "app-dev",   "192.168.57.2", 2, 2048, 1)
  create(config, "bitbucket", "bitbucket", "192.168.57.8", 3, 3072, 1)
  create(config, "nexus",     "nexus",     "192.168.57.9", 3, 3072, 1)
end

def create(config, script, name, ip, cpu, mem, count)
  (0...count).each do |i|
    n = "#{name}-#{i}"

    config.vm.define n do |node|
      node.vm.box = "ubuntu/impish64"
      node.vm.hostname = n

      node.vm.network "private_network",
        ip: "#{ip}#{i}"

      node.vm.provider "virtualbox" do |spec|
        spec.name   = n
        spec.cpus   = cpu
        spec.memory = mem
      end

      node.vm.provision "shell", path: "scripts/001-base.sh"
      node.vm.provision "shell", path: "scripts/002-#{script}.sh"
      node.vm.provision "shell", path: "scripts/003-final.sh"
    end
  end
end
