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

# Unit tests for LaunchDarklyApi::FlagConfigScheduledChangesPostBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FlagConfigScheduledChangesPostBody' do
  before do
    # run before each test
    @instance = LaunchDarklyApi::FlagConfigScheduledChangesPostBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlagConfigScheduledChangesPostBody' do
    it 'should create an instance of FlagConfigScheduledChangesPostBody' do
      expect(@instance).to be_instance_of(LaunchDarklyApi::FlagConfigScheduledChangesPostBody)
    end
  end
  describe 'test attribute "comment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "execution_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "instructions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
