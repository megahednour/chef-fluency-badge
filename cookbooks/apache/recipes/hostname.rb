hostname = node['hostname']
file '/etc/hostname'do
	content "Hostname is : #{hostname}"
end
