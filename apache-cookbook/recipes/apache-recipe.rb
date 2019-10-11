#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package "httpd"
file '/var/www/html/index.html' do
  content 'Hello Full n Final!!Tested again successfully!! Automated chef-client!! Fully automated'
  action :create
end
service 'httpd' do
  action [:enable,:start]
end 
%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
    action :install
  end
end
