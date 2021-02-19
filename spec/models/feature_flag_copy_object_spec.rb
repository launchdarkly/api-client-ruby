=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 5.0.1
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::FeatureFlagCopyObject
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagCopyObject' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::FeatureFlagCopyObject.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagCopyObject' do
    it 'should create an instance of FeatureFlagCopyObject' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::FeatureFlagCopyObject)
    end
  end
  describe 'test attribute "key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "current_version"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
