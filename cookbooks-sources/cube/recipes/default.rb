package 'nodejs'
package 'git'
package 'mongodb'

git "/opt/cube" do
  repository "https://github.com/square/cube.git"
  reference "master"
  action :sync
end

service 'cube-collector' do
  action [ :enable, :start ]
end

service 'cube-evaluator' do
  action [ :enable, :start ]
end
