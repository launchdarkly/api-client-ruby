=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 3.2.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module LaunchDarklyApi
  class CustomerMetricsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get events usage by event id and the feature flag key.
    # @param env_id The environment id for the flag evaluations in question.
    # @param flag_key The key of the flag we want metrics for.
    # @param [Hash] opts the optional parameters
    # @return [StreamSDKVersion]
    def get_evaluations(env_id, flag_key, opts = {})
      data, _status_code, _headers = get_evaluations_with_http_info(env_id, flag_key, opts)
      data
    end

    # Get events usage by event id and the feature flag key.
    # @param env_id The environment id for the flag evaluations in question.
    # @param flag_key The key of the flag we want metrics for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StreamSDKVersion, Fixnum, Hash)>] StreamSDKVersion data, response status code and response headers
    def get_evaluations_with_http_info(env_id, flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_evaluations ...'
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling CustomerMetricsApi.get_evaluations"
      end
      # verify the required parameter 'flag_key' is set
      if @api_client.config.client_side_validation && flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'flag_key' when calling CustomerMetricsApi.get_evaluations"
      end
      # resource path
      local_var_path = '/usage/evaluations/{envId}/{flagKey}'.sub('{' + 'envId' + '}', env_id.to_s).sub('{' + 'flagKey' + '}', flag_key.to_s)

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
        :return_type => 'StreamSDKVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_evaluations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get events usage by event type.
    # @param type The type of event we would like to track.
    # @param [Hash] opts the optional parameters
    # @return [StreamSDKVersion]
    def get_event(type, opts = {})
      data, _status_code, _headers = get_event_with_http_info(type, opts)
      data
    end

    # Get events usage by event type.
    # @param type The type of event we would like to track.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StreamSDKVersion, Fixnum, Hash)>] StreamSDKVersion data, response status code and response headers
    def get_event_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_event ...'
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling CustomerMetricsApi.get_event"
      end
      # resource path
      local_var_path = '/usage/events/{type}'.sub('{' + 'type' + '}', type.to_s)

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
        :return_type => 'StreamSDKVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get events usage endpoints.
    # @param [Hash] opts the optional parameters
    # @return [Events]
    def get_events(opts = {})
      data, _status_code, _headers = get_events_with_http_info(opts)
      data
    end

    # Get events usage endpoints.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Events, Fixnum, Hash)>] Events data, response status code and response headers
    def get_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_events ...'
      end
      # resource path
      local_var_path = '/usage/events'

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
        :return_type => 'Events')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get monthly active user data.
    # @param [Hash] opts the optional parameters
    # @return [MAU]
    def get_mau(opts = {})
      data, _status_code, _headers = get_mau_with_http_info(opts)
      data
    end

    # Get monthly active user data.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MAU, Fixnum, Hash)>] MAU data, response status code and response headers
    def get_mau_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_mau ...'
      end
      # resource path
      local_var_path = '/usage/mau'

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
        :return_type => 'MAU')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_mau\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get monthly active user data by category.
    # @param [Hash] opts the optional parameters
    # @return [MAUbyCategory]
    def get_mau_by_category(opts = {})
      data, _status_code, _headers = get_mau_by_category_with_http_info(opts)
      data
    end

    # Get monthly active user data by category.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MAUbyCategory, Fixnum, Hash)>] MAUbyCategory data, response status code and response headers
    def get_mau_by_category_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_mau_by_category ...'
      end
      # resource path
      local_var_path = '/usage/mau/bycategory'

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
        :return_type => 'MAUbyCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_mau_by_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a stream endpoint and return timeseries data.
    # @param source The source of where the stream comes from.
    # @param [Hash] opts the optional parameters
    # @return [Stream]
    def get_stream(source, opts = {})
      data, _status_code, _headers = get_stream_with_http_info(source, opts)
      data
    end

    # Get a stream endpoint and return timeseries data.
    # @param source The source of where the stream comes from.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Stream, Fixnum, Hash)>] Stream data, response status code and response headers
    def get_stream_with_http_info(source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_stream ...'
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling CustomerMetricsApi.get_stream"
      end
      # resource path
      local_var_path = '/usage/streams/{source}'.sub('{' + 'source' + '}', source.to_s)

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
        :return_type => 'Stream')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_stream\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a stream timeseries data by source show sdk version metadata.
    # @param source The source of where the stream comes from.
    # @param [Hash] opts the optional parameters
    # @return [StreamBySDK]
    def get_stream_by_sdk(source, opts = {})
      data, _status_code, _headers = get_stream_by_sdk_with_http_info(source, opts)
      data
    end

    # Get a stream timeseries data by source show sdk version metadata.
    # @param source The source of where the stream comes from.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StreamBySDK, Fixnum, Hash)>] StreamBySDK data, response status code and response headers
    def get_stream_by_sdk_with_http_info(source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_stream_by_sdk ...'
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling CustomerMetricsApi.get_stream_by_sdk"
      end
      # resource path
      local_var_path = '/usage/streams/{source}/bysdkversion'.sub('{' + 'source' + '}', source.to_s)

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
        :return_type => 'StreamBySDK')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_stream_by_sdk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a stream timeseries data by source and show all sdk version associated.
    # @param source The source of where the stream comes from.
    # @param [Hash] opts the optional parameters
    # @return [StreamSDKVersion]
    def get_stream_sdk_version(source, opts = {})
      data, _status_code, _headers = get_stream_sdk_version_with_http_info(source, opts)
      data
    end

    # Get a stream timeseries data by source and show all sdk version associated.
    # @param source The source of where the stream comes from.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StreamSDKVersion, Fixnum, Hash)>] StreamSDKVersion data, response status code and response headers
    def get_stream_sdk_version_with_http_info(source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_stream_sdk_version ...'
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling CustomerMetricsApi.get_stream_sdk_version"
      end
      # resource path
      local_var_path = '/usage/streams/{source}/sdkversions'.sub('{' + 'source' + '}', source.to_s)

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
        :return_type => 'StreamSDKVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_stream_sdk_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of all streams.
    # @param [Hash] opts the optional parameters
    # @return [Streams]
    def get_streams(opts = {})
      data, _status_code, _headers = get_streams_with_http_info(opts)
      data
    end

    # Returns a list of all streams.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Streams, Fixnum, Hash)>] Streams data, response status code and response headers
    def get_streams_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_streams ...'
      end
      # resource path
      local_var_path = '/usage/streams'

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
        :return_type => 'Streams')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_streams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns of the usage endpoints available.
    # @param [Hash] opts the optional parameters
    # @return [Usage]
    def get_usage(opts = {})
      data, _status_code, _headers = get_usage_with_http_info(opts)
      data
    end

    # Returns of the usage endpoints available.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Usage, Fixnum, Hash)>] Usage data, response status code and response headers
    def get_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerMetricsApi.get_usage ...'
      end
      # resource path
      local_var_path = '/usage'

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
        :return_type => 'Usage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerMetricsApi#get_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
