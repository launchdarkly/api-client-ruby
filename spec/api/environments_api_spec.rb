=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::EnvironmentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EnvironmentsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EnvironmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EnvironmentsApi' do
    it 'should create an instance of EnvironmentsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EnvironmentsApi)
    end
  end

  # unit tests for delete_environment
  # Delete an environment by ID
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_environment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_environment
  # Get an environment by key.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key
  # @param [Hash] opts the optional parameters
  # @return [Environment]
  describe 'get_environment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_environment
  # Modify an environment by ID
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key
  # @param patch_delta http://jsonpatch.com/
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'patch_environment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_environment
  # Create an environment
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_body New environment
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_environment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
