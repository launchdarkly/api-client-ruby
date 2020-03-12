=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.31
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::CustomPropertyValues
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomPropertyValues' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::CustomPropertyValues.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomPropertyValues' do
    it 'should create an instance of CustomPropertyValues' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::CustomPropertyValues)
    end
  end
end
