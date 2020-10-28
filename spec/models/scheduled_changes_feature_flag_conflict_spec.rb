=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.8.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::ScheduledChangesFeatureFlagConflict
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ScheduledChangesFeatureFlagConflict' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::ScheduledChangesFeatureFlagConflict.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ScheduledChangesFeatureFlagConflict' do
    it 'should create an instance of ScheduledChangesFeatureFlagConflict' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::ScheduledChangesFeatureFlagConflict)
    end
  end
  describe 'test attribute "_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end