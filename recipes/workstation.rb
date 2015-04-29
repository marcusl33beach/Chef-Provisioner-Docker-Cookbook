#
# Cookbook Name:: Chef-Provisioner-Docker-Cookbook
# Recipe:: workstation
#
# Copyright 2015, marcusbeach.co
#
# All rights reserved - Do Not Redistribute
#

require "chef/provisioning/docker_driver"
with_driver "docker"

machine_image 'workstation' do
  recipe 'chef-dk::default'

  machine_options :docker_option =>
  :base_image => {
     :name => 'ubuntu',
     :repository => 'ubuntu',
     :tag => '14.04'
 }
}
end
machine_batch do
  1.upto(node['provisioner']['workstation_number']) do |i|
    machine "workstation#{i}" do
      from_image 'workstation'
      machine_options :docker_options => {
        :convergence_options => {
          :ssl_verify_mode => 'verify_none'
        }
      }
    end
  end
end
