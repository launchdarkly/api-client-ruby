=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.9.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module LaunchDarklyApi
  class EnvironmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an environment in a specific project.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_environment(project_key, environment_key, opts = {})
      delete_environment_with_http_info(project_key, environment_key, opts)
      nil
    end

    # Delete an environment in a specific project.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_environment_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.delete_environment ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.delete_environment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling EnvironmentsApi.delete_environment"
      end
      # resource path
      local_var_path = '/projects/{projectKey}/environments/{environmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

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
        @api_client.config.logger.debug "API called: EnvironmentsApi#delete_environment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an environment given a project and key.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @return [Environment]
    def get_environment(project_key, environment_key, opts = {})
      data, _status_code, _headers = get_environment_with_http_info(project_key, environment_key, opts)
      data
    end

    # Get an environment given a project and key.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Environment, Fixnum, Hash)>] Environment data, response status code and response headers
    def get_environment_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.get_environment ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.get_environment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling EnvironmentsApi.get_environment"
      end
      # resource path
      local_var_path = '/projects/{projectKey}/environments/{environmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

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
        :return_type => 'Environment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#get_environment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modify an environment by ID.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Environment]
    def patch_environment(project_key, environment_key, patch_delta, opts = {})
      data, _status_code, _headers = patch_environment_with_http_info(project_key, environment_key, patch_delta, opts)
      data
    end

    # Modify an environment by ID.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Environment, Fixnum, Hash)>] Environment data, response status code and response headers
    def patch_environment_with_http_info(project_key, environment_key, patch_delta, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.patch_environment ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.patch_environment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling EnvironmentsApi.patch_environment"
      end
      # verify the required parameter 'patch_delta' is set
      if @api_client.config.client_side_validation && patch_delta.nil?
        fail ArgumentError, "Missing the required parameter 'patch_delta' when calling EnvironmentsApi.patch_environment"
      end
      # resource path
      local_var_path = '/projects/{projectKey}/environments/{environmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

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
      post_body = @api_client.object_to_http_body(patch_delta)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Environment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#patch_environment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new environment in a specified project with a given name, key, and swatch color.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_body New environment.
    # @param [Hash] opts the optional parameters
    # @return [Environment]
    def post_environment(project_key, environment_body, opts = {})
      data, _status_code, _headers = post_environment_with_http_info(project_key, environment_body, opts)
      data
    end

    # Create a new environment in a specified project with a given name, key, and swatch color.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_body New environment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Environment, Fixnum, Hash)>] Environment data, response status code and response headers
    def post_environment_with_http_info(project_key, environment_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.post_environment ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.post_environment"
      end
      # verify the required parameter 'environment_body' is set
      if @api_client.config.client_side_validation && environment_body.nil?
        fail ArgumentError, "Missing the required parameter 'environment_body' when calling EnvironmentsApi.post_environment"
      end
      # resource path
      local_var_path = '/projects/{projectKey}/environments'.sub('{' + 'projectKey' + '}', project_key.to_s)

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
      post_body = @api_client.object_to_http_body(environment_body)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Environment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#post_environment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Reset an environment's mobile key. The optional expiry for the old key is deprecated for this endpoint, so the old key will always expire immediately.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expiry The expiry parameter is deprecated for this endpoint, so the old mobile key will always expire immediately. This parameter will be removed in an upcoming major API client version.
    # @return [Environment]
    def reset_environment_mobile_key(project_key, environment_key, opts = {})
      data, _status_code, _headers = reset_environment_mobile_key_with_http_info(project_key, environment_key, opts)
      data
    end

    # Reset an environment&#39;s mobile key. The optional expiry for the old key is deprecated for this endpoint, so the old key will always expire immediately.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expiry The expiry parameter is deprecated for this endpoint, so the old mobile key will always expire immediately. This parameter will be removed in an upcoming major API client version.
    # @return [Array<(Environment, Fixnum, Hash)>] Environment data, response status code and response headers
    def reset_environment_mobile_key_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.reset_environment_mobile_key ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.reset_environment_mobile_key"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling EnvironmentsApi.reset_environment_mobile_key"
      end
      # resource path
      local_var_path = '/projects/{projectKey}/environments/{environmentKey}/mobileKey'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

      # query parameters
      query_params = {}
      query_params[:'expiry'] = opts[:'expiry'] if !opts[:'expiry'].nil?

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Environment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#reset_environment_mobile_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Reset an environment's SDK key with an optional expiry time for the old key.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expiry An expiration time for the old environment SDK key, expressed as a Unix epoch time in milliseconds. By default, the key will expire immediately.
    # @return [Environment]
    def reset_environment_sdk_key(project_key, environment_key, opts = {})
      data, _status_code, _headers = reset_environment_sdk_key_with_http_info(project_key, environment_key, opts)
      data
    end

    # Reset an environment&#39;s SDK key with an optional expiry time for the old key.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expiry An expiration time for the old environment SDK key, expressed as a Unix epoch time in milliseconds. By default, the key will expire immediately.
    # @return [Array<(Environment, Fixnum, Hash)>] Environment data, response status code and response headers
    def reset_environment_sdk_key_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.reset_environment_sdk_key ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling EnvironmentsApi.reset_environment_sdk_key"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling EnvironmentsApi.reset_environment_sdk_key"
      end
      # resource path
      local_var_path = '/projects/{projectKey}/environments/{environmentKey}/apiKey'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

      # query parameters
      query_params = {}
      query_params[:'expiry'] = opts[:'expiry'] if !opts[:'expiry'].nil?

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Environment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#reset_environment_sdk_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
