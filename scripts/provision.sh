#!/usr/bin/env bash
# Vagrantbox Provison script for out task
# Warning : non-priviliged provision! for "vagrant" user

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

# 2. Configure GO Environment
# - for one-time executio
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
# - make Go home
mkdir -p $HOME/go
# - profile configuration, Bash is default in Ubuntu Bionic Beaver
echo '# -> GoLang environment env var definitions :' >> ~/.bash_profile
echo  'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo  'export GOPATH=$HOME/go' >> ~/.bash_profile
echo  'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile 
echo '# ^- end of GoLang environment env vars definition block. ' >> ~/.bash_profile

# 3. Build code, vagrant-specific
go build /vagrant/hello.go
ret_code=$?

# 4. Run it or print error
if [ $ret_code -ne 0 ]; then
    echo "Error while building hello.go"
    echo "Please review go compiler output above"
else
    echo "Compile and build were successful, executing our program : "
    ./hello
fi
