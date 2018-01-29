#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
if node['platform_family'] == 'rhel'
	package = "httpd"
elseif node['platform_family'] == 'debian'
	package = "apache2"
end
package 'webserver' do
	package_name package
	action 'install'
end

service	'httpd' do
	service_name 'httpd'
	action [:start, :enable]
end
