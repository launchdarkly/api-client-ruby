=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 2.0.22
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module LaunchDarklyApi
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a webhook by ID.
    # @param resource_id The resource ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(resource_id, opts = {})
      delete_webhook_with_http_info(resource_id, opts)
      nil
    end

    # Delete a webhook by ID.
    # @param resource_id The resource ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(resource_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhook ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling WebhooksApi.delete_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{resourceId}'.sub('{' + 'resourceId' + '}', resource_id.to_s)

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
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a webhook by ID.
    # @param resource_id The resource ID.
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def get_webhook(resource_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(resource_id, opts)
      data
    end

    # Get a webhook by ID.
    # @param resource_id The resource ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def get_webhook_with_http_info(resource_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling WebhooksApi.get_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{resourceId}'.sub('{' + 'resourceId' + '}', resource_id.to_s)

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
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Fetch a list of all webhooks.
    # @param [Hash] opts the optional parameters
    # @return [Webhooks]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # Fetch a list of all webhooks.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhooks, Fixnum, Hash)>] Webhooks data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhooks ...'
      end
      # resource path
      local_var_path = '/webhooks'

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
        :return_type => 'Webhooks')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modify a webhook by ID.
    # @param resource_id The resource ID.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def patch_webhook(resource_id, patch_delta, opts = {})
      data, _status_code, _headers = patch_webhook_with_http_info(resource_id, patch_delta, opts)
      data
    end

    # Modify a webhook by ID.
    # @param resource_id The resource ID.
    # @param patch_delta Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def patch_webhook_with_http_info(resource_id, patch_delta, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.patch_webhook ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling WebhooksApi.patch_webhook"
      end
      # verify the required parameter 'patch_delta' is set
      if @api_client.config.client_side_validation && patch_delta.nil?
        fail ArgumentError, "Missing the required parameter 'patch_delta' when calling WebhooksApi.patch_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{resourceId}'.sub('{' + 'resourceId' + '}', resource_id.to_s)

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
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#patch_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a webhook.
    # @param webhook_body New webhook.
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def post_webhook(webhook_body, opts = {})
      data, _status_code, _headers = post_webhook_with_http_info(webhook_body, opts)
      data
    end

    # Create a webhook.
    # @param webhook_body New webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def post_webhook_with_http_info(webhook_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.post_webhook ...'
      end
      # verify the required parameter 'webhook_body' is set
      if @api_client.config.client_side_validation && webhook_body.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_body' when calling WebhooksApi.post_webhook"
      end
      # resource path
      local_var_path = '/webhooks'

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
      post_body = @api_client.object_to_http_body(webhook_body)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#post_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
