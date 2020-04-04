package 'nano'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntpd' do
  action :install
  ignore_failure true
end

file '/etc/motd' do
  content 'This server is the property of Shoaib'  
  owner 'root'
  group 'root'
  action :create
end
