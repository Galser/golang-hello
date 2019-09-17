# Description

This repository contains GoLang program that prints hello. To run this program we are using *virtual machine* (VM) managed by [Vagrant](https://www.vagrantup.com/) -  tool for building and managing virtual machine environments in a single workflow. Short introduction for Vagrant can be found [here](https://www.vagrantup.com/intro/index.html). This repository provides appropriate instructions and files to provision your own VM and run inside it the sample **"hello"** program. 

*Code had been tested under MacOs Mojave 10.14.6 and Ubuntu 18.04.3 LTS (Bionic Beaver)*


# Usage

## Requirements (first-time run)

1. To download the content of this repository you will need **git command-line tools or Git UI Client**. To install official command-line Git tools please [find here instructions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for various operation systems. 
2. In addition, as we want to run our code inside VM you will need some way of running virtualization, the providers for this step may vary a lot from architecture to architecture, but one that can be recommended as first time approach is **VirtualBox**, download the binaries for your [platform here](https://www.virtualbox.org/wiki/Downloads) and then follow [instructions for installation](https://www.virtualbox.org/manual/ch02.html)
3. As the last-step, we need **Vagrant** - to build and manage VM. To install **Vagrant** , please follow instructions here : [official Vargant installation manual](https://www.vagrantup.com/docs/installation/)

Two prerequisites above

## Instructions

In order to run the code, you need to create the VM and provision it. The [Vagrantfile](Vagrantfile), supplied with this repo contains all necessary step automated, just follow the short instruction below :

1. You need to download the copy of the code, so - run in terminal ``git clone https://github.com/Galser/golang-hello.git`` ; in case you are using other Git Client - please follow appropriate instruction and download(clone)) [this repo](https://github.com/Galser/golang-hello.git). 
2. Locate folder that now should contain the copy of repository and open it. To do this in UNIX Terminal type ``cd location_to_the_folder_with_repo_copy`` 
3. To create and provision virtual machine with Vagrant - execute from command line ``vagrant up``
4. Now wait, Vagrant will download the operation system image, do all the steps, and when the machine is started and provision successfully finished, you should see as the last two lines: 
```
    default: Compile and build were successful, executing our program : 
    default: hello
```
5. At this point, you can try to run the program yourself, VM already up and running , so you can use SSH client to connect to it. For example for Linux and MacOS - execute from command-line : ``vagrant ssh``
6. Now you are in the VM's shell, to run the program just execute  ``hello``, you should see response **hello**
7. While still inside virtual machine, you may be curious about the code.  It is available inside the vm in this location  ``/vagrant/hello.go``
8. When you've done with the tests and don't need VM shell anymore - you should exit the SSH session - by executing in command line ``exit``
9. To completely destroy the VM and free up all your system resource (CPU, memory) you will need to give to vagrant instruction to do so, execute from command line ``vagrant destroy``. Next you should see the question on a new line :
``` default: Are you sure you want to destroy the 'default' VM? [y/N]  ```
Answer 'y' from keyboard, and you are good to go


# NOTES

*The code in releases currently is Linux 64Bit ELF executable.*
For example this binary :  [0.0.1](https://github.com/Galser/golang-hello/releases/download/0.0.1/hello) 


# TODO

- [ ] - Clarify README even more

# DONE

- [x] Create VM with Vagrant
- [x] Install go programming lang
- [x] Create instructions/usage section - how to create the box and install Go
- [x] Configure go environment
- [x] update instructions for the step
- [x] Create a sample main.go file
- [x] Compile the code
- [x] Run the code
- [x] Tune provision to include the automated run of hello.go for testing purpose
- [X] Update instructions for creating VM - provision it - compile and run the code
- [x] travis test that check for hello (travis run green build)
  - [x] create test
  - [x] make travis provision config for test
- [x] travis setup release
- [x] run release and do visual check for uploaded release, screenshot below :
    ![Screenshot with release binary](github-release-screenshot.png)


Thank You! 
