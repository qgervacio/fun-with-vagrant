#!/bin/sh
set -x # echo all commands

# Copyright (C) 2022 Quirino Gervacio. All Rights Reserved.

echo "Clean-up..."
sudo apt-get autoclean -y
sudo apt-get autoremove -y
