# Vagrant Box MediaTemple Grid
*A [Vagrant Box](https://app.vagrantup.com/darlanrod/boxes/mediatemple-grid) that mimics the [MediaTemple Shared Grid server](http://bit.ly/2ClGXLh)*

## How to use
### Requirements:
1.  [VirtualBox](https://www.virtualbox.org) installed
1.  [Vagrant](https://www.vagrantup.com) installed

### Command line:
```
$ vagrant init darlanrod/mediatemple-grid
$ vagrant up
```
### ... or Vagrant file:
```
Vagrant.configure("2") do |config|
  config.vm.box = "darlanrod/mediatemple-grid"
end
```

## Technical specifications
Item | Mediatemple | Box
---- | ----------- | ---
Debian | 7 | 8
PHP | 7.0.2 | 7.0.32
Perl | 5.14.2 | 5.20.2
Python | 2.7.3 | 2.7.9
Python3 | 3.2.4 | 3.4.2
Apache | 2.2.22 | 2.4.10
MySQL | 5.6.2 | 5.6.41
Git | 1.7.10 | 2.1.4
SVN | 1.6.17 | 1.8.10

*The PHPMyAdmin has been added to make database management easier.*

## Users and passwords
*   System user and password: `vagrant`
*   MySQL and PHPMyAdmin user and password: `root`

> 👋  All help to improve is welcome! [Learn how you can collaborate](CONTRIBUTING.md).
