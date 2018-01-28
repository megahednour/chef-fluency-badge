#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'apache' do
	package_name 'httpd'
	action 'install'
end

service	'httpd' do
	service_name 'httpd'
	action [:start, :enable]
end

file 'default www' do
	path '/var/www/html/index.html'
	content 'Hello World'
end
