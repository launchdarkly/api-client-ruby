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

# Unit tests for LaunchDarklyApi::ApprovalRequestReviewConfigBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApprovalRequestReviewConfigBody' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::ApprovalRequestReviewConfigBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApprovalRequestReviewConfigBody' do
    it 'should create an instance of ApprovalRequestReviewConfigBody' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::ApprovalRequestReviewConfigBody)
    end
  end
  describe 'test attribute "kind"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["approve", "decline", "comment"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.kind = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "comment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
