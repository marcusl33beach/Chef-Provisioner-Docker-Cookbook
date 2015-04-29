#
# Cookbook Name:: Chef-Provisioner-Docker-Cookbook
# Recipe:: dhcp
#
# license 'Open source, marcusbeach.co'
#

require "chef/provisioning/docker_driver"
with_driver "docker"

machine_batch do
  1.upto(node['provisioner']['dhcp_number']) do |i|
    machine "dhcp#{i}" do
      recipe 'dhcp::default'
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
  end
end
