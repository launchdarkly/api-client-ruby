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
require 'date'

# Unit tests for LaunchDarklyApi::Statement
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Statement' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::Statement.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Statement' do
    it 'should create an instance of Statement' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::Statement)
    end
  end
  describe 'test attribute "resources"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "not_resources"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "actions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "not_actions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "effect"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["allow", "deny"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.effect = value }.not_to raise_error
      # end
    end
  end

end
