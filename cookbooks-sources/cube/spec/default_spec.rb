require 'chefspec'

describe 'cube::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'cube::default' }

  it 'should install nodejs' do
    chef_run.should install_package 'nodejs'
  end

  it 'should install git' do
    chef_run.should install_package 'git'
  end

  it 'should install mongo' do
    chef_run.should install_package 'mongodb'
  end

  it 'should generate the cube service templates' do
    chef_run.should create_file_with_content '/etc/init/cube-collector.conf', 'collector.js'
    chef_run.should create_file_with_content '/etc/init/cube-evaluator.conf', 'evaluator.js'
  end

  it 'should start cube services' do
    chef_run.should start_service 'cube-collector'
    chef_run.should start_service 'cube-evaluator'
  end
end
