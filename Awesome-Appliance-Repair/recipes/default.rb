#
# Cookbook Name:: Awesome-Appliance-Repair
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

case node['platform_family']
when 'rhel'

  packages = %w{ unzip }
    packages.each do |p|
      package p
      #action: install
    end
end


ark "Awesome-Appliance-Repair" do
   url 'https://github.com/colincam/Awesome-Appliance-Repair/archive/master.zip'
   #creates 'AAR'
   #path '/var/www/'
   #version '2.2.0'
   #checksum '89ba5fde0c596db388c3bbd265b63007a9cc3df3a8e6d79a46780c1a39408cb5'
   action :install
 end

 remote_file "master.zip" do
 	#path '~'
 	source 'https://github.com/colincam/Awesome-Appliance-Repair/archive/master.zip'
 	action :create_if_missing
 end

#deploy "/var/www/AAR" do


