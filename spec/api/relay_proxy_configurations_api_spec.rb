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

# Unit tests for LaunchDarklyApi::RelayProxyConfigurationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RelayProxyConfigurationsApi' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::RelayProxyConfigurationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RelayProxyConfigurationsApi' do
    it 'should create an instance of RelayProxyConfigurationsApi' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::RelayProxyConfigurationsApi)
    end
  end

  # unit tests for delete_relay_proxy_config
  # Delete a relay proxy configuration by ID.
  # @param id The relay proxy configuration ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_relay_proxy_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_relay_proxy_config
  # Get a single relay proxy configuration by ID.
  # @param id The relay proxy configuration ID
  # @param [Hash] opts the optional parameters
  # @return [RelayProxyConfig]
  describe 'get_relay_proxy_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_relay_proxy_configs
  # Returns a list of relay proxy configurations in the account.
  # @param [Hash] opts the optional parameters
  # @return [RelayProxyConfigs]
  describe 'get_relay_proxy_configs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_relay_proxy_config
  # Modify a relay proxy configuration by ID.
  # @param id The relay proxy configuration ID
  # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
  # @param [Hash] opts the optional parameters
  # @return [RelayProxyConfig]
  describe 'patch_relay_proxy_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_relay_auto_config
  # Create a new relay proxy config.
  # @param relay_proxy_config_body Create a new relay proxy configuration
  # @param [Hash] opts the optional parameters
  # @return [RelayProxyConfig]
  describe 'post_relay_auto_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset_relay_proxy_config
  # Reset a relay proxy configuration&#39;s secret key with an optional expiry time for the old key.
  # @param id The relay proxy configuration ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :expiry An expiration time for the old relay proxy configuration key, expressed as a Unix epoch time in milliseconds. By default, the relay proxy configuration will expire immediately
  # @return [RelayProxyConfig]
  describe 'reset_relay_proxy_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
