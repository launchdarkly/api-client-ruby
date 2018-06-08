=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.2
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UsersApi)
    end
  end

  # unit tests for delete_user
  # Delete a user by ID.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param user_key The user&#39;s key.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_search_users
  # Search users in LaunchDarkly based on their last active date, or a search query. It should not be used to enumerate all users in LaunchDarkly-- use the List users API resource.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :q Search query.
  # @option opts [Integer] :limit Pagination limit.
  # @option opts [Integer] :offset Specifies the first item to return in the collection.
  # @option opts [Float] :after A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp.
  # @return [Users]
  describe 'get_search_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user
  # Get a user by key.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param user_key The user&#39;s key.
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'get_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users
  # List all users in the environment. Includes the total count of users. In each page, there will be up to &#39;limit&#39; users returned (default 20). This is useful for exporting all users in the system for further analysis. Paginated collections will include a next link containing a URL with the next set of elements in the collection.
  # 
  # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
  # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Pagination limit.
  # @option opts [String] :h This parameter is required when following \&quot;next\&quot; links.
  # @option opts [String] :scroll_id This parameter is required when following \&quot;next\&quot; links.
  # @return [Users]
  describe 'get_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end