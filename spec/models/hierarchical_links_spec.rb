=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.9.2
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::HierarchicalLinks
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'HierarchicalLinks' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::HierarchicalLinks.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HierarchicalLinks' do
    it 'should create an instance of HierarchicalLinks' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::HierarchicalLinks)
    end
  end
  describe 'test attribute "parent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "_self"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
