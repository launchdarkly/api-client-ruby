=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 5.0.2
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::FeatureFlagScheduledChangesConflicts
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagScheduledChangesConflicts' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::FeatureFlagScheduledChangesConflicts.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagScheduledChangesConflicts' do
    it 'should create an instance of FeatureFlagScheduledChangesConflicts' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::FeatureFlagScheduledChangesConflicts)
    end
  end
  describe 'test attribute "instructions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
