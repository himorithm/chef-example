#Setup workstation cook book

package 'neovim'
package 'vim-enhanced'
package 'git'
package 'ntp'
package 'tree'
package 'tmux'
package 'fish'

service 'ntpd' do
    action [ :enable, :start ]
end

template '/etc/motd' do
    source 'motd.erb'
    variables(
        :name => 'Himanshu'
    )
    action :create
end
