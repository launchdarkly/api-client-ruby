=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 5.1.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module LaunchDarklyApi
  class AccessTokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an access token by ID.
    # @param token_id The access token ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_token(token_id, opts = {})
      delete_token_with_http_info(token_id, opts)
      nil
    end

    # Delete an access token by ID.
    # @param token_id The access token ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_token_with_http_info(token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessTokensApi.delete_token ...'
      end
      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling AccessTokensApi.delete_token"
      end
      # resource path
      local_var_path = '/tokens/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

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
        @api_client.config.logger.debug "API called: AccessTokensApi#delete_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a single access token by ID.
    # @param token_id The access token ID.
    # @param [Hash] opts the optional parameters
    # @return [Token]
    def get_token(token_id, opts = {})
      data, _status_code, _headers = get_token_with_http_info(token_id, opts)
      data
    end

    # Get a single access token by ID.
    # @param token_id The access token ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Token, Fixnum, Hash)>] Token data, response status code and response headers
    def get_token_with_http_info(token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessTokensApi.get_token ...'
      end
      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling AccessTokensApi.get_token"
      end
      # resource path
      local_var_path = '/tokens/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

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
        :return_type => 'Token')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessTokensApi#get_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of tokens in the account.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :show_all If set to true, and the authentication access token has the \&quot;Admin\&quot; role, personal access tokens for all members will be retrieved.
    # @return [Tokens]
    def get_tokens(opts = {})
      data, _status_code, _headers = get_tokens_with_http_info(opts)
      data
    end

    # Returns a list of tokens in the account.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :show_all If set to true, and the authentication access token has the \&quot;Admin\&quot; role, personal access tokens for all members will be retrieved.
    # @return [Array<(Tokens, Fixnum, Hash)>] Tokens data, response status code and response headers
    def get_tokens_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessTokensApi.get_tokens ...'
      end
      # resource path
      local_var_path = '/tokens'

      # query parameters
      query_params = {}
      query_params[:'showAll'] = opts[:'show_all'] if !opts[:'show_all'].nil?

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
        :return_type => 'Tokens')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessTokensApi#get_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modify an access token by ID.
    # @param token_id The access token ID.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Token]
    def patch_token(token_id, patch_delta, opts = {})
      data, _status_code, _headers = patch_token_with_http_info(token_id, patch_delta, opts)
      data
    end

    # Modify an access token by ID.
    # @param token_id The access token ID.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Token, Fixnum, Hash)>] Token data, response status code and response headers
    def patch_token_with_http_info(token_id, patch_delta, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessTokensApi.patch_token ...'
      end
      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling AccessTokensApi.patch_token"
      end
      # verify the required parameter 'patch_delta' is set
      if @api_client.config.client_side_validation && patch_delta.nil?
        fail ArgumentError, "Missing the required parameter 'patch_delta' when calling AccessTokensApi.patch_token"
      end
      # resource path
      local_var_path = '/tokens/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

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
        :return_type => 'Token')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessTokensApi#patch_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new token.
    # @param token_body Create a new access token.
    # @param [Hash] opts the optional parameters
    # @return [Token]
    def post_token(token_body, opts = {})
      data, _status_code, _headers = post_token_with_http_info(token_body, opts)
      data
    end

    # Create a new token.
    # @param token_body Create a new access token.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Token, Fixnum, Hash)>] Token data, response status code and response headers
    def post_token_with_http_info(token_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessTokensApi.post_token ...'
      end
      # verify the required parameter 'token_body' is set
      if @api_client.config.client_side_validation && token_body.nil?
        fail ArgumentError, "Missing the required parameter 'token_body' when calling AccessTokensApi.post_token"
      end
      # resource path
      local_var_path = '/tokens'

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
      post_body = @api_client.object_to_http_body(token_body)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Token')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessTokensApi#post_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Reset an access token's secret key with an optional expiry time for the old key.
    # @param token_id The access token ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expiry An expiration time for the old token key, expressed as a Unix epoch time in milliseconds. By default, the token will expire immediately.
    # @return [Token]
    def reset_token(token_id, opts = {})
      data, _status_code, _headers = reset_token_with_http_info(token_id, opts)
      data
    end

    # Reset an access token&#39;s secret key with an optional expiry time for the old key.
    # @param token_id The access token ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expiry An expiration time for the old token key, expressed as a Unix epoch time in milliseconds. By default, the token will expire immediately.
    # @return [Array<(Token, Fixnum, Hash)>] Token data, response status code and response headers
    def reset_token_with_http_info(token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessTokensApi.reset_token ...'
      end
      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling AccessTokensApi.reset_token"
      end
      # resource path
      local_var_path = '/tokens/{tokenId}/reset'.sub('{' + 'tokenId' + '}', token_id.to_s)

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
        :return_type => 'Token')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessTokensApi#reset_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
