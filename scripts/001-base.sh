#!/bin/sh
set -x # echo all commands

# Copyright (C) 2022 Quirino Gervacio. All Rights Reserved.

echo "Disable swap..."
sudo swapoff -a

echo "Verify MAC address are unique..."
ip link

echo "Make sure that the br_netfilter module is loaded..."
sudo modprobe br_netfilter
lsmod | grep br_netfilter

echo "Update apt package index"
sudo apt-get update
sudo apt-get upgrade -y

echo "IP tables forward accept..."
sudo iptables -P FORWARD ACCEPT
