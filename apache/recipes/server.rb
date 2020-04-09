#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

package 'httpd'

file '/var/www/html/index.html' do
    content "<h1> Hello World </h1>
    <h2>Hostname #{node['hostname']} </h2>
    <h2>IpAddress #{node['ipaddress']} </h2>"
end

service 'httpd' do
    action [ :start ]
end
