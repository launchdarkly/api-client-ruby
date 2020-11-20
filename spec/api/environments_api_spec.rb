=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.9.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for LaunchDarklyApi::EnvironmentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EnvironmentsApi' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::EnvironmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EnvironmentsApi' do
    it 'should create an instance of EnvironmentsApi' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::EnvironmentsApi)
    end
  end

  # unit tests for delete_environment
  # Delete an environment in a specific project.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_environment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_environment
  # Get an environment given a project and key.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @return [Environment]
  describe 'get_environment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_environment
  # Modify an environment by ID.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
  # @param [Hash] opts the optional parameters
  # @return [Environment]
  describe 'patch_environment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_environment
  # Create a new environment in a specified project with a given name, key, and swatch color.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_body New environment.
  # @param [Hash] opts the optional parameters
  # @return [Environment]
  describe 'post_environment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset_environment_mobile_key
  # Reset an environment&#39;s mobile key. The optional expiry for the old key is deprecated for this endpoint, so the old key will always expire immediately.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :expiry The expiry parameter is deprecated for this endpoint, so the old mobile key will always expire immediately. This parameter will be removed in an upcoming major API client version.
  # @return [Environment]
  describe 'reset_environment_mobile_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset_environment_sdk_key
  # Reset an environment&#39;s SDK key with an optional expiry time for the old key.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :expiry An expiration time for the old environment SDK key, expressed as a Unix epoch time in milliseconds. By default, the key will expire immediately.
  # @return [Environment]
  describe 'reset_environment_sdk_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
