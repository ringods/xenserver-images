# Vagrant images of XenServer

[![Build Status](https://img.shields.io/travis/ringods/xenserver-images.svg)][travis]

Bento is a project that encapsulates [Packer](https://www.packer.io/) templates for building [Vagrant](https://www.vagrantup.com/) base boxes. A subset of templates are built and published to the [bento org](https://app.vagrantup.com/bento) on Vagrant Cloud. The boxes also serve as default boxes for [kitchen-vagrant](https://github.com/test-kitchen/kitchen-vagrant/).

### Using Public Boxes

Adding a xenserver box to Vagrant

```
$ vagrant box add ringods/xenserver-6.2
```

Using a xenserver box in a Vagrantfile

```
Vagrant.configure("2") do |config|
  config.vm.box = "ringods/xenserver-6.2"
end
```

### Building Boxes

#### Requirements

- [Packer](https://www.packer.io/)
- At least one of the following virtualization providers:
  - [VirtualBox](https://www.virtualbox.org)
  - [VMware Fusion](https://www.vmware.com/products/fusion.html)
  - [VMware Workstation](https://www.vmware.com/products/workstation.html)

#### Using `packer`

To build a Xenserver 6.2 box for only the VirtualBox provider

```
$ cd xenserver
$ packer build -only=virtualbox-iso xenserver-6.2-amd64.json
```

If the build is successful, ready to import box files will be in the `builds` directory at the root of the repository.

## Bugs and Issues

Please use GitHub issues to report bugs, features, or other problems.

## License & Authors

The setup of this project is inspired by the [Bento][bento] project from Chef. A big thanks to
the Chef team for such an easy setup.

[travis]: https://travis-ci.org/ringods/xenserver-images
[bento]: https://github.com/chef/bento
