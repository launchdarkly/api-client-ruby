=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.4.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module LaunchDarklyApi
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a user by ID.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_key The user&#39;s key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user(project_key, environment_key, user_key, opts = {})
      delete_user_with_http_info(project_key, environment_key, user_key, opts)
      nil
    end

    # Delete a user by ID.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_key The user&#39;s key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_user_with_http_info(project_key, environment_key, user_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UsersApi.delete_user"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UsersApi.delete_user"
      end
      # verify the required parameter 'user_key' is set
      if @api_client.config.client_side_validation && user_key.nil?
        fail ArgumentError, "Missing the required parameter 'user_key' when calling UsersApi.delete_user"
      end
      # resource path
      local_var_path = '/users/{projectKey}/{environmentKey}/{userKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s).sub('{' + 'userKey' + '}', user_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Search users in LaunchDarkly based on their last active date, or a search query. It should not be used to enumerate all users in LaunchDarkly-- use the List users API resource.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Search query.
    # @option opts [Integer] :limit Pagination limit.
    # @option opts [Integer] :offset Specifies the first item to return in the collection.
    # @option opts [Integer] :after A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occurred after this timestamp.
    # @return [Users]
    def get_search_users(project_key, environment_key, opts = {})
      data, _status_code, _headers = get_search_users_with_http_info(project_key, environment_key, opts)
      data
    end

    # Search users in LaunchDarkly based on their last active date, or a search query. It should not be used to enumerate all users in LaunchDarkly-- use the List users API resource.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Search query.
    # @option opts [Integer] :limit Pagination limit.
    # @option opts [Integer] :offset Specifies the first item to return in the collection.
    # @option opts [Integer] :after A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occurred after this timestamp.
    # @return [Array<(Users, Fixnum, Hash)>] Users data, response status code and response headers
    def get_search_users_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_search_users ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UsersApi.get_search_users"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UsersApi.get_search_users"
      end
      # resource path
      local_var_path = '/user-search/{projectKey}/{environmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

      # query parameters
      query_params = {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Users')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_search_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a user by key.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_key The user&#39;s key.
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_user(project_key, environment_key, user_key, opts = {})
      data, _status_code, _headers = get_user_with_http_info(project_key, environment_key, user_key, opts)
      data
    end

    # Get a user by key.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_key The user&#39;s key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def get_user_with_http_info(project_key, environment_key, user_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UsersApi.get_user"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UsersApi.get_user"
      end
      # verify the required parameter 'user_key' is set
      if @api_client.config.client_side_validation && user_key.nil?
        fail ArgumentError, "Missing the required parameter 'user_key' when calling UsersApi.get_user"
      end
      # resource path
      local_var_path = '/users/{projectKey}/{environmentKey}/{userKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s).sub('{' + 'userKey' + '}', user_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all users in the environment. Includes the total count of users. In each page, there will be up to 'limit' users returned (default 20). This is useful for exporting all users in the system for further analysis. Paginated collections will include a next link containing a URL with the next set of elements in the collection.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Pagination limit.
    # @option opts [String] :h This parameter is required when following \&quot;next\&quot; links.
    # @option opts [String] :scroll_id This parameter is required when following \&quot;next\&quot; links.
    # @return [Users]
    def get_users(project_key, environment_key, opts = {})
      data, _status_code, _headers = get_users_with_http_info(project_key, environment_key, opts)
      data
    end

    # List all users in the environment. Includes the total count of users. In each page, there will be up to &#39;limit&#39; users returned (default 20). This is useful for exporting all users in the system for further analysis. Paginated collections will include a next link containing a URL with the next set of elements in the collection.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Pagination limit.
    # @option opts [String] :h This parameter is required when following \&quot;next\&quot; links.
    # @option opts [String] :scroll_id This parameter is required when following \&quot;next\&quot; links.
    # @return [Array<(Users, Fixnum, Hash)>] Users data, response status code and response headers
    def get_users_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_users ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UsersApi.get_users"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UsersApi.get_users"
      end
      # resource path
      local_var_path = '/users/{projectKey}/{environmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'h'] = opts[:'h'] if !opts[:'h'].nil?
      query_params[:'scrollId'] = opts[:'scroll_id'] if !opts[:'scroll_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Users')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
