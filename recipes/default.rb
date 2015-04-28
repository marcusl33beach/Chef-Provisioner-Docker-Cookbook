#
# Cookbook Name:: provisioner
# Recipe:: default
#
# Copyright 2015, marcusbeach.co
#
# All rights reserved - Do Not Redistribute
#

if node['provisioner']['workstation'] = true
  include_recipe 'provisioner::workstation'
end

if node['provisioner']['dhcp'] = true
  include_recipe 'provisioner::dhcp'
end
