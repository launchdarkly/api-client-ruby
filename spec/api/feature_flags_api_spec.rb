=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.3.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for LaunchDarklyApi::FeatureFlagsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagsApi' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::FeatureFlagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagsApi' do
    it 'should create an instance of FeatureFlagsApi' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::FeatureFlagsApi)
    end
  end

  # unit tests for copy_feature_flag
  # Copies the feature flag configuration from one environment to the same feature flag in another environment.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param feature_flag_copy_body Copy feature flag configurations between environments.
  # @param [Hash] opts the optional parameters
  # @return [FeatureFlag]
  describe 'copy_feature_flag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_feature_flag
  # Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_feature_flag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_expiring_user_targets
  # Get expiring user targets for feature flag
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @return [UserTargetingExpirationForFlags]
  describe 'get_expiring_user_targets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flag
  # Get a single feature flag by key.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :env By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env&#x3D;[\&quot;production\&quot;] will restrict the returned configurations to just your production environment.
  # @return [FeatureFlag]
  describe 'get_feature_flag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flag_status
  # Get the status for a particular feature flag.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @return [FeatureFlagStatus]
  describe 'get_feature_flag_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flag_status_across_environments
  # Get the status for a particular feature flag across environments
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param [Hash] opts the optional parameters
  # @return [FeatureFlagStatusAcrossEnvironments]
  describe 'get_feature_flag_status_across_environments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flag_statuses
  # Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @return [FeatureFlagStatuses]
  describe 'get_feature_flag_statuses test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_flags
  # Get a list of all features in the given project.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :env By default, each feature will include configurations for each environment. You can filter environments with the env query parameter. For example, setting env&#x3D;[\&quot;production\&quot;] will restrict the returned configurations to just your production environment.
  # @option opts [BOOLEAN] :summary By default in api version &gt;&#x3D; 1, flags will _not_ include their list of prerequisites, targets or rules.  Set summary&#x3D;0 to include these fields for each flag returned.
  # @option opts [BOOLEAN] :archived When set to 1, archived flags will be included in the list of flags returned.  By default, archived flags are not included in the list of flags.
  # @option opts [Float] :limit The number of objects to return. Defaults to -1, which returns everything.
  # @option opts [Float] :offset Where to start in the list. This is for use with pagination. For example, an offset of 10 would skip the first 10 items and then return the next limit items.
  # @option opts [String] :filter A comma-separated list of filters. Each filter is of the form field:value.
  # @option opts [String] :sort A comma-separated list of fields to sort by. A field prefixed by a - will be sorted in descending order.
  # @option opts [String] :tag Filter by tag. A tag can be used to group flags across projects.
  # @return [FeatureFlags]
  describe 'get_feature_flags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_expiring_user_targets
  # Update, add, or delete expiring user targets on feature flag
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param semantic_patch_with_comment Requires a Semantic Patch representation of the desired changes to the resource. &#39;https://apidocs.launchdarkly.com/reference#updates-via-semantic-patches&#39;. The addition of comments is also supported.
  # @param [Hash] opts the optional parameters
  # @return [UserTargetingExpirationForFlags]
  describe 'patch_expiring_user_targets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_feature_flag
  # Perform a partial update to a feature.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_key The feature flag&#39;s key. The key identifies the flag in your code.
  # @param patch_comment Requires a JSON Patch representation of the desired changes to the project, and an optional comment. &#39;http://jsonpatch.com/&#39; Feature flag patches also support JSON Merge Patch format. &#39;https://tools.ietf.org/html/rfc7386&#39; The addition of comments is also supported.
  # @param [Hash] opts the optional parameters
  # @return [FeatureFlag]
  describe 'patch_feature_flag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_feature_flag
  # Creates a new feature flag.
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param feature_flag_body Create a new feature flag.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :clone The key of the feature flag to be cloned. The key identifies the flag in your code.  For example, setting clone&#x3D;flagKey will copy the full targeting configuration for all environments (including on/off state) from the original flag to the new flag.
  # @return [FeatureFlag]
  describe 'post_feature_flag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
