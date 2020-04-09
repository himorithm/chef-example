#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

package 'httpd'

template '/var/www/html/index.html' do
    source 'display.erb'
    variables(
        :name => 'Himanshu'
    )
    action :create
end

service 'httpd' do
    action [ :start ]
end
