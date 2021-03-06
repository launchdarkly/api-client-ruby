=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 5.3.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LaunchDarklyApi::EnvironmentApprovalSettings
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EnvironmentApprovalSettings' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::EnvironmentApprovalSettings.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EnvironmentApprovalSettings' do
    it 'should create an instance of EnvironmentApprovalSettings' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::EnvironmentApprovalSettings)
    end
  end
  describe 'test attribute "service_kind"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["launchdarkly", "service-now"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.service_kind = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "required"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "can_review_own_request"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "min_num_approvals"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "can_apply_declined_changes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "required_approval_tags"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
