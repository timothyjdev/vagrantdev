# vagrantdev

This is a project to spin up CentOS-65-i386 in Vagrant for a consistent development environment.

Disclaimer: This project may work on Windows but it was developed on Ubuntu 14.04.


## Install this software on your host

Git, VirtualBox, Vagrant

* sudo apt-get install git
* sudo apt-get install virtualbox
* sudo apt-get install vagrant
* sudo apt-get install virtual-dkms

## Run Project

```
git clone https://github.com/timothyjdev/vagrantdev.git
cd vagrantdev
vagrant up
```

Open browser and navigate to http://192.168.50.4


## Install this software on your host

rspec-puppet, puppet, rake

* sudo gem install rspec-puppet
* sudo gem install puppet
* sudo apt-get install rake

## Unit Test Project

```
cd vagrantdev/modules/apache
rake spec
```
