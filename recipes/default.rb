#
# Cookbook Name:: Chef-Provisioner-Docker-Cookbook
# Recipe:: default
#
# license 'Open source, marcusbeach.co'
#

if node['provisioner']['workstation'] == true
  include_recipe 'Chef-Provisioner-Docker-Cookbook::workstation'
end

if node['provisioner']['dhcp'] == true
  include_recipe 'Chef-Provisioner-Docker-Cookbook::dhcp'
end
