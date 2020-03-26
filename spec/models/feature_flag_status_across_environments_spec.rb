=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.33
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::FeatureFlagStatusAcrossEnvironments
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagStatusAcrossEnvironments' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::FeatureFlagStatusAcrossEnvironments.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagStatusAcrossEnvironments' do
    it 'should create an instance of FeatureFlagStatusAcrossEnvironments' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::FeatureFlagStatusAcrossEnvironments)
    end
  end
  describe 'test attribute "_links"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "environments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
