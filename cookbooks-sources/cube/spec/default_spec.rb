require 'chefspec'

describe 'my_new_cookbook::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'my_new_cookbook::default' }
  it 'should do something' do
    true.should == false
  end
end
