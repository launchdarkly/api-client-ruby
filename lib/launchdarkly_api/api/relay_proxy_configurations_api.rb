=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.9.2
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module LaunchDarklyApi
  class RelayProxyConfigurationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a relay proxy configuration by ID.
    # @param id The relay proxy configuration ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_relay_proxy_config(id, opts = {})
      delete_relay_proxy_config_with_http_info(id, opts)
      nil
    end

    # Delete a relay proxy configuration by ID.
    # @param id The relay proxy configuration ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_relay_proxy_config_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelayProxyConfigurationsApi.delete_relay_proxy_config ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RelayProxyConfigurationsApi.delete_relay_proxy_config"
      end
      # resource path
      local_var_path = '/account/relay-auto-configs/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: RelayProxyConfigurationsApi#delete_relay_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a single relay proxy configuration by ID.
    # @param id The relay proxy configuration ID
    # @param [Hash] opts the optional parameters
    # @return [RelayProxyConfig]
    def get_relay_proxy_config(id, opts = {})
      data, _status_code, _headers = get_relay_proxy_config_with_http_info(id, opts)
      data
    end

    # Get a single relay proxy configuration by ID.
    # @param id The relay proxy configuration ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(RelayProxyConfig, Fixnum, Hash)>] RelayProxyConfig data, response status code and response headers
    def get_relay_proxy_config_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelayProxyConfigurationsApi.get_relay_proxy_config ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RelayProxyConfigurationsApi.get_relay_proxy_config"
      end
      # resource path
      local_var_path = '/account/relay-auto-configs/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'RelayProxyConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelayProxyConfigurationsApi#get_relay_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of relay proxy configurations in the account.
    # @param [Hash] opts the optional parameters
    # @return [RelayProxyConfigs]
    def get_relay_proxy_configs(opts = {})
      data, _status_code, _headers = get_relay_proxy_configs_with_http_info(opts)
      data
    end

    # Returns a list of relay proxy configurations in the account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RelayProxyConfigs, Fixnum, Hash)>] RelayProxyConfigs data, response status code and response headers
    def get_relay_proxy_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelayProxyConfigurationsApi.get_relay_proxy_configs ...'
      end
      # resource path
      local_var_path = '/account/relay-auto-configs'

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
        :return_type => 'RelayProxyConfigs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelayProxyConfigurationsApi#get_relay_proxy_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modify a relay proxy configuration by ID.
    # @param id The relay proxy configuration ID
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [RelayProxyConfig]
    def patch_relay_proxy_config(id, patch_delta, opts = {})
      data, _status_code, _headers = patch_relay_proxy_config_with_http_info(id, patch_delta, opts)
      data
    end

    # Modify a relay proxy configuration by ID.
    # @param id The relay proxy configuration ID
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(RelayProxyConfig, Fixnum, Hash)>] RelayProxyConfig data, response status code and response headers
    def patch_relay_proxy_config_with_http_info(id, patch_delta, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelayProxyConfigurationsApi.patch_relay_proxy_config ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RelayProxyConfigurationsApi.patch_relay_proxy_config"
      end
      # verify the required parameter 'patch_delta' is set
      if @api_client.config.client_side_validation && patch_delta.nil?
        fail ArgumentError, "Missing the required parameter 'patch_delta' when calling RelayProxyConfigurationsApi.patch_relay_proxy_config"
      end
      # resource path
      local_var_path = '/account/relay-auto-configs/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'RelayProxyConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelayProxyConfigurationsApi#patch_relay_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new relay proxy config.
    # @param relay_proxy_config_body Create a new relay proxy configuration
    # @param [Hash] opts the optional parameters
    # @return [RelayProxyConfig]
    def post_relay_auto_config(relay_proxy_config_body, opts = {})
      data, _status_code, _headers = post_relay_auto_config_with_http_info(relay_proxy_config_body, opts)
      data
    end

    # Create a new relay proxy config.
    # @param relay_proxy_config_body Create a new relay proxy configuration
    # @param [Hash] opts the optional parameters
    # @return [Array<(RelayProxyConfig, Fixnum, Hash)>] RelayProxyConfig data, response status code and response headers
    def post_relay_auto_config_with_http_info(relay_proxy_config_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelayProxyConfigurationsApi.post_relay_auto_config ...'
      end
      # verify the required parameter 'relay_proxy_config_body' is set
      if @api_client.config.client_side_validation && relay_proxy_config_body.nil?
        fail ArgumentError, "Missing the required parameter 'relay_proxy_config_body' when calling RelayProxyConfigurationsApi.post_relay_auto_config"
      end
      # resource path
      local_var_path = '/account/relay-auto-configs'

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
      post_body = @api_client.object_to_http_body(relay_proxy_config_body)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RelayProxyConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelayProxyConfigurationsApi#post_relay_auto_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Reset a relay proxy configuration's secret key with an optional expiry time for the old key.
    # @param id The relay proxy configuration ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expiry An expiration time for the old relay proxy configuration key, expressed as a Unix epoch time in milliseconds. By default, the relay proxy configuration will expire immediately
    # @return [RelayProxyConfig]
    def reset_relay_proxy_config(id, opts = {})
      data, _status_code, _headers = reset_relay_proxy_config_with_http_info(id, opts)
      data
    end

    # Reset a relay proxy configuration&#39;s secret key with an optional expiry time for the old key.
    # @param id The relay proxy configuration ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expiry An expiration time for the old relay proxy configuration key, expressed as a Unix epoch time in milliseconds. By default, the relay proxy configuration will expire immediately
    # @return [Array<(RelayProxyConfig, Fixnum, Hash)>] RelayProxyConfig data, response status code and response headers
    def reset_relay_proxy_config_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelayProxyConfigurationsApi.reset_relay_proxy_config ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RelayProxyConfigurationsApi.reset_relay_proxy_config"
      end
      # resource path
      local_var_path = '/account/relay-auto-configs/{id}/reset'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'RelayProxyConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelayProxyConfigurationsApi#reset_relay_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
