#!/bin/sh
set -x # echo all commands

# Copyright (C) 2022 Quirino Gervacio. All Rights Reserved.

echo "Installing Docker..."
sudo snap install docker
sleep 5s

echo "Running Nexus container..."
sudo docker run -d -p 8081:8081 --name nexus sonatype/nexus3
