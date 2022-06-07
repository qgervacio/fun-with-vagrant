#!/bin/sh
set -x # echo all commands

# Copyright (C) 2022 Quirino Gervacio. All Rights Reserved.

echo "Installing microk8s..."
sudo snap install microk8s --classic --channel=1.22/stable
sudo microk8s enable dns
