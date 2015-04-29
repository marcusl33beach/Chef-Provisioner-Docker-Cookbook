#
# Cookbook Name:: Chef-Provisioner-Docker-Cookbook
# Recipe:: default
#
# Copyright 2015, marcusbeach.co
#
# All rights reserved - Do Not Redistribute
#

if node['provisioner']['workstation'] == true
  include_recipe 'Chef-Provisioner-Docker-Cookbook::workstation'
end

if node['provisioner']['dhcp'] == true
  include_recipe 'Chef-Provisioner-Docker-Cookbook::dhcp'
end
