=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.2
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::FeatureFlagStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagStatus' do
  before do
    # run before each test
    @instance = SwaggerClient::FeatureFlagStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagStatus' do
    it 'should create an instance of FeatureFlagStatus' do
      expect(@instance).to be_instance_of(SwaggerClient::FeatureFlagStatus)
    end
  end
  describe 'test attribute "_links"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["new", "active", "inactive", "launched"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.name = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "last_requested"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "default"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
