#!/usr/bin/env bash
# Vagrantbox Provison script for out task

# 1. GoLang install
GO_DISTRO="go1.13.linux-amd64.tar.gz"
# update system
sudo apt-get update
sudo apt-get -y upgrade
# enforce wget
sudo apt-get install wget
# wget -nv - here nv to avoid clutter on screen when provisioning  
wget -nv --directory-prefix=/tmp https://dl.google.com/go/${GO_DISTRO}
sudo tar -C /usr/local/ -xvf /tmp/${GO_DISTRO}
