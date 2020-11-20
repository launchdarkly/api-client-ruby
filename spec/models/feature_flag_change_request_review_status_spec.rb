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
require 'date'

# Unit tests for LaunchDarklyApi::FeatureFlagChangeRequestReviewStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeatureFlagChangeRequestReviewStatus' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::FeatureFlagChangeRequestReviewStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureFlagChangeRequestReviewStatus' do
    it 'should create an instance of FeatureFlagChangeRequestReviewStatus' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::FeatureFlagChangeRequestReviewStatus)
    end
  end
end
