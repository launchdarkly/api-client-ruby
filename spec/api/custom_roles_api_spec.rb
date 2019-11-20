=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.24
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for LaunchDarklyApi::CustomRolesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomRolesApi' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::CustomRolesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomRolesApi' do
    it 'should create an instance of CustomRolesApi' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::CustomRolesApi)
    end
  end

  # unit tests for delete_custom_role
  # Delete a custom role by key.
  # @param custom_role_key The custom role key.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_custom_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_custom_role
  # Get one custom role by key.
  # @param custom_role_key The custom role key.
  # @param [Hash] opts the optional parameters
  # @return [CustomRole]
  describe 'get_custom_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_custom_roles
  # Return a complete list of custom roles.
  # @param [Hash] opts the optional parameters
  # @return [CustomRoles]
  describe 'get_custom_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_custom_role
  # Modify a custom role by key.
  # @param custom_role_key The custom role key.
  # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
  # @param [Hash] opts the optional parameters
  # @return [CustomRole]
  describe 'patch_custom_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_custom_role
  # Create a new custom role.
  # @param custom_role_body New role or roles to create.
  # @param [Hash] opts the optional parameters
  # @return [CustomRole]
  describe 'post_custom_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
