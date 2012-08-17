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

  it 'should start the cube-collector service' do
    chef_run.should start_service 'cube-collector'
  end

  it 'should start the cube-evaluator service' do
    chef_run.should start_service 'cube-evaluator'
  end
end
