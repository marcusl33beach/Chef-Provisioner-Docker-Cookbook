#
# Cookbook Name:: provisioner
# Recipe:: workstation
#
# Copyright 2015, marcusbeach.co
#
# All rights reserved - Do Not Redistribute
#

require "chef/provisioning/docker_driver"
with_driver "docker"

machine 'workstation' do
  recipe 'chef-dk::default'
  machine_options :docker_options => {
    :base_image => {
      :name => 'ubuntu',
      :repository => 'ubuntu',
      :tag => '14.04'
    },
  :convergence_options => {
    :ssl_verify_mode => 'verify_none'
  }
 }
end