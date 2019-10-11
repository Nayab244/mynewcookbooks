#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/myfile' do
  content 'Hello Dear Students!! GGGood morning!!'
  action :create
end
execute "run a script" do
  command <<-EOH
  mkdir /saidir
  touch /saifile
  EOH
end
user "raj"
user "sai"
package "mysql"
file "/newfile50"
group "devops" do
  action :create
  members 'raj'
  append true
end
package "httpd"
file '/var/www/html/index.html' do
  content 'success test-recipe contents are fine!!'
  action :create
end
service 'httpd' do
  action [:enable,:start]
end
