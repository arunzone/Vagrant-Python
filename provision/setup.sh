#!/bin/bash
echo "Installing Python"
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get -y update
sudo apt-get -y install python3.5
