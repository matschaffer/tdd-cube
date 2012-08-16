require 'net/http'
require 'uri'

describe_recipe 'cube::default' do
  describe 'evaluator' do
    it 'can get types' do
      uri = URI.parse('http://localhost:1081/1.0/types/get')
      Net::HTTP.get_response(uri).code.should == 200
    end
  end

  describe 'collector' do
    it 'can show a dashboard' do
      uri = URI.parse('http://localhost:1080/')
      Net::HTTP.get_response(uri).code.should == 200
    end
  end
end
