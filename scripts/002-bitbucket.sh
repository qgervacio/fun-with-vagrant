#!/bin/sh
set -x # echo all commands

# Copyright (C) 2022 Quirino Gervacio. All Rights Reserved.

echo "Installing Docker..."
sudo snap install docker
sleep 5s

echo "Running Bitbucket container..."
sudo docker run -d \
  -p 7990:7990 \
  -p 7999:7999 \
  --name bitbucket \
  -v /home/ubuntu/bitbucket:/var/atlassian/application-data/bitbucket \
  atlassian/bitbucket
