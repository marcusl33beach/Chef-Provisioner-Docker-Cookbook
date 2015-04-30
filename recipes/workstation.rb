#
# Cookbook Name:: Chef-Provisioner-Docker-Cookbook
# Recipe:: workstation
#
# license 'Open source, marcusbeach.co'
#

require "chef/provisioning/docker_driver"
with_driver "docker"

machine 'Workstation' do
    recipe 'chef-df::default'

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
