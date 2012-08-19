package 'nodejs'
package 'git'
package 'mongodb'

git node['cube']['root'] do
  repository "https://github.com/square/cube.git"
  reference "master"
  action :sync
end

%w( collector evaluator ).each do |component|
  template "/etc/init/cube-#{component}.conf" do
    source "upstart.conf.erb"
    variables :component => component
  end

  service "cube-#{component}" do
    provider Chef::Provider::Service::Upstart
    supports :status => true, :restart => true
    action [ :enable, :start ]
  end
end
