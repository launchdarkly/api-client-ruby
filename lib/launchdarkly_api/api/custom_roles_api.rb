=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.18
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'uri'

module LaunchDarklyApi
  class CustomRolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a custom role by key.
    # @param custom_role_key The custom role key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_role(custom_role_key, opts = {})
      delete_custom_role_with_http_info(custom_role_key, opts)
      nil
    end

    # Delete a custom role by key.
    # @param custom_role_key The custom role key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_custom_role_with_http_info(custom_role_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomRolesApi.delete_custom_role ...'
      end
      # verify the required parameter 'custom_role_key' is set
      if @api_client.config.client_side_validation && custom_role_key.nil?
        fail ArgumentError, "Missing the required parameter 'custom_role_key' when calling CustomRolesApi.delete_custom_role"
      end
      # resource path
      local_var_path = '/roles/{customRoleKey}'.sub('{' + 'customRoleKey' + '}', custom_role_key.to_s)

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
        @api_client.config.logger.debug "API called: CustomRolesApi#delete_custom_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get one custom role by key.
    # @param custom_role_key The custom role key.
    # @param [Hash] opts the optional parameters
    # @return [CustomRole]
    def get_custom_role(custom_role_key, opts = {})
      data, _status_code, _headers = get_custom_role_with_http_info(custom_role_key, opts)
      data
    end

    # Get one custom role by key.
    # @param custom_role_key The custom role key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomRole, Fixnum, Hash)>] CustomRole data, response status code and response headers
    def get_custom_role_with_http_info(custom_role_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomRolesApi.get_custom_role ...'
      end
      # verify the required parameter 'custom_role_key' is set
      if @api_client.config.client_side_validation && custom_role_key.nil?
        fail ArgumentError, "Missing the required parameter 'custom_role_key' when calling CustomRolesApi.get_custom_role"
      end
      # resource path
      local_var_path = '/roles/{customRoleKey}'.sub('{' + 'customRoleKey' + '}', custom_role_key.to_s)

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
        :return_type => 'CustomRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomRolesApi#get_custom_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return a complete list of custom roles.
    # @param [Hash] opts the optional parameters
    # @return [CustomRoles]
    def get_custom_roles(opts = {})
      data, _status_code, _headers = get_custom_roles_with_http_info(opts)
      data
    end

    # Return a complete list of custom roles.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomRoles, Fixnum, Hash)>] CustomRoles data, response status code and response headers
    def get_custom_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomRolesApi.get_custom_roles ...'
      end
      # resource path
      local_var_path = '/roles'

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
        :return_type => 'CustomRoles')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomRolesApi#get_custom_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modify a custom role by key.
    # @param custom_role_key The custom role key.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [CustomRole]
    def patch_custom_role(custom_role_key, patch_delta, opts = {})
      data, _status_code, _headers = patch_custom_role_with_http_info(custom_role_key, patch_delta, opts)
      data
    end

    # Modify a custom role by key.
    # @param custom_role_key The custom role key.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomRole, Fixnum, Hash)>] CustomRole data, response status code and response headers
    def patch_custom_role_with_http_info(custom_role_key, patch_delta, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomRolesApi.patch_custom_role ...'
      end
      # verify the required parameter 'custom_role_key' is set
      if @api_client.config.client_side_validation && custom_role_key.nil?
        fail ArgumentError, "Missing the required parameter 'custom_role_key' when calling CustomRolesApi.patch_custom_role"
      end
      # verify the required parameter 'patch_delta' is set
      if @api_client.config.client_side_validation && patch_delta.nil?
        fail ArgumentError, "Missing the required parameter 'patch_delta' when calling CustomRolesApi.patch_custom_role"
      end
      # resource path
      local_var_path = '/roles/{customRoleKey}'.sub('{' + 'customRoleKey' + '}', custom_role_key.to_s)

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
        :return_type => 'CustomRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomRolesApi#patch_custom_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new custom role.
    # @param custom_role_body New role or roles to create.
    # @param [Hash] opts the optional parameters
    # @return [CustomRole]
    def post_custom_role(custom_role_body, opts = {})
      data, _status_code, _headers = post_custom_role_with_http_info(custom_role_body, opts)
      data
    end

    # Create a new custom role.
    # @param custom_role_body New role or roles to create.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomRole, Fixnum, Hash)>] CustomRole data, response status code and response headers
    def post_custom_role_with_http_info(custom_role_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomRolesApi.post_custom_role ...'
      end
      # verify the required parameter 'custom_role_body' is set
      if @api_client.config.client_side_validation && custom_role_body.nil?
        fail ArgumentError, "Missing the required parameter 'custom_role_body' when calling CustomRolesApi.post_custom_role"
      end
      # resource path
      local_var_path = '/roles'

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
      post_body = @api_client.object_to_http_body(custom_role_body)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CustomRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomRolesApi#post_custom_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
