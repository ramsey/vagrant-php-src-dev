# vagrant-php-src-dev

Uses Vagrant to provision a basic virtual environment for hacking on the PHP core.

The machine that these scripts creates is a basic environment to use for modifying, building, testing, and contributing to the PHP core. It is not full-featured on purpose. However, it does do some helpful initial system set-up, clones the php-src repository and gets it ready for you to work on, and provides some helpful documentation and scripts for connecting your fork of the php-src repository.

I created this for my own development purposes, but I welcome pull requests and suggestions to turn this into a useful resource for the entire community.

## Getting started

Make sure you have [VirtualBox](https://www.virtualbox.org/) and [Vagrant](http://www.vagrantup.com/) installed. Then, from this project's root directory, run `vagrant up`.

After the virtual machine finishes starting up, shell into the VM with `vagrant ssh`.

From here, read the `README-FIRST` file that's provided in the home directory of the VM.
