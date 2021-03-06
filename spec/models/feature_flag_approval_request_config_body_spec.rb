=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 4.0.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::FeatureFlagApprovalRequestConfigBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagApprovalRequestConfigBody' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::FeatureFlagApprovalRequestConfigBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagApprovalRequestConfigBody' do
    it 'should create an instance of FeatureFlagApprovalRequestConfigBody' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::FeatureFlagApprovalRequestConfigBody)
    end
  end
  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "instructions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "notify_member_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "comment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
