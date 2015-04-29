# Chef-Provisioner-Docker-Cookbook

### Decription
----------
Chef Cookbook for building Docker containers with Chef Provisioner

### Dependencies 
---------------
In order for this cookbook to work one needs to install the gem from:
```
https://github.com/chef/chef-provisioning-docker
```
You can do so by doing
```bash
gem install chef-provisioning-docker
```

### Attributes Defaults

Turn on Servers as needed.
```Ruby
default['provisioner']['workstation'] = true
default['provisioner']['dhcp'] = false
```
Set the number of servers you need.
``` Ruby
default['provisioner']['workstation_number'] = '1'
default['provisioner']['dhcp_number'] = '1'
```
