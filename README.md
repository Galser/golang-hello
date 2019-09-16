# Description

GoLang program that prints hello


# Usage

## Requirements (first time run)
As a prerequisite you will need git command-line tools or other way to clone this git repo, if you don't have it, please [find here installation instructions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for various operation systems. In addition you will need some way of creating virtual machines, the providers for this step may vary a lot from architecture to architecture, but one that can be suggested as first time approach is VirtualBox, download teh binaries for your [platform here](https://www.virtualbox.org/wiki/Downloads) and then follow [instructions for installation](https://www.virtualbox.org/manual/ch02.html)

## Instructions

In order to run the code you need to start the VM and provisioned it. The [Vagrantfile](Vagrantfile), supplied with this repo contains all necessary step automated, just follow the short instruction below :

1. Install **Vagrant** , please follow instructions here : [official Vargant installation manual](https://www.vagrantup.com/docs/installation/)
2. Do ``git clone`` of this repo
2. Cd to cloned repo folder 
3. Execute from command line ``vagrant up``



# TODO 

- [ ] Tune provision to include automated run of hello.go for testing purpose
- [ ] Update instructions for create vm - provision it - compile and run the code


# DONE

- [x] Create VM with Vagrant
- [x] Install go programing lang
- [x] Create instructions/usage section - how to create box and install Go
- [x] Configure go environment
- [x] update instructions for the step
- [x] Create sample main.go file
- [x] Compile the code
- [x] Run the code

