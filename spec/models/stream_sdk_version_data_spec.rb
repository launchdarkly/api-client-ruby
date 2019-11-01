=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.20
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::StreamSDKVersionData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StreamSDKVersionData' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::StreamSDKVersionData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StreamSDKVersionData' do
    it 'should create an instance of StreamSDKVersionData' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::StreamSDKVersionData)
    end
  end
  describe 'test attribute "sdk"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "version"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end