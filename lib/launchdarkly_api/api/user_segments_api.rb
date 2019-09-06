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
  class UserSegmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a user segment.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_segment_key The user segment&#39;s key. The key identifies the user segment in your code.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user_segment(project_key, environment_key, user_segment_key, opts = {})
      delete_user_segment_with_http_info(project_key, environment_key, user_segment_key, opts)
      nil
    end

    # Delete a user segment.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_segment_key The user segment&#39;s key. The key identifies the user segment in your code.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_user_segment_with_http_info(project_key, environment_key, user_segment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSegmentsApi.delete_user_segment ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UserSegmentsApi.delete_user_segment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UserSegmentsApi.delete_user_segment"
      end
      # verify the required parameter 'user_segment_key' is set
      if @api_client.config.client_side_validation && user_segment_key.nil?
        fail ArgumentError, "Missing the required parameter 'user_segment_key' when calling UserSegmentsApi.delete_user_segment"
      end
      # resource path
      local_var_path = '/segments/{projectKey}/{environmentKey}/{userSegmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s).sub('{' + 'userSegmentKey' + '}', user_segment_key.to_s)

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
        @api_client.config.logger.debug "API called: UserSegmentsApi#delete_user_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a single user segment by key.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_segment_key The user segment&#39;s key. The key identifies the user segment in your code.
    # @param [Hash] opts the optional parameters
    # @return [UserSegment]
    def get_user_segment(project_key, environment_key, user_segment_key, opts = {})
      data, _status_code, _headers = get_user_segment_with_http_info(project_key, environment_key, user_segment_key, opts)
      data
    end

    # Get a single user segment by key.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_segment_key The user segment&#39;s key. The key identifies the user segment in your code.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegment, Fixnum, Hash)>] UserSegment data, response status code and response headers
    def get_user_segment_with_http_info(project_key, environment_key, user_segment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSegmentsApi.get_user_segment ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UserSegmentsApi.get_user_segment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UserSegmentsApi.get_user_segment"
      end
      # verify the required parameter 'user_segment_key' is set
      if @api_client.config.client_side_validation && user_segment_key.nil?
        fail ArgumentError, "Missing the required parameter 'user_segment_key' when calling UserSegmentsApi.get_user_segment"
      end
      # resource path
      local_var_path = '/segments/{projectKey}/{environmentKey}/{userSegmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s).sub('{' + 'userSegmentKey' + '}', user_segment_key.to_s)

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
        :return_type => 'UserSegment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSegmentsApi#get_user_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of all user segments in the given project.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag Filter by tag. A tag can be used to group flags across projects.
    # @return [UserSegments]
    def get_user_segments(project_key, environment_key, opts = {})
      data, _status_code, _headers = get_user_segments_with_http_info(project_key, environment_key, opts)
      data
    end

    # Get a list of all user segments in the given project.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag Filter by tag. A tag can be used to group flags across projects.
    # @return [Array<(UserSegments, Fixnum, Hash)>] UserSegments data, response status code and response headers
    def get_user_segments_with_http_info(project_key, environment_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSegmentsApi.get_user_segments ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UserSegmentsApi.get_user_segments"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UserSegmentsApi.get_user_segments"
      end
      # resource path
      local_var_path = '/segments/{projectKey}/{environmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

      # query parameters
      query_params = {}
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?

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
        :return_type => 'UserSegments')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSegmentsApi#get_user_segments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Perform a partial update to a user segment.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_segment_key The user segment&#39;s key. The key identifies the user segment in your code.
    # @param patch_only Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; Feature flag patches also support JSON Merge Patch format. &#39;https://tools.ietf.org/html/rfc7386&#39; The addition of comments is also supported.
    # @param [Hash] opts the optional parameters
    # @return [UserSegment]
    def patch_user_segment(project_key, environment_key, user_segment_key, patch_only, opts = {})
      data, _status_code, _headers = patch_user_segment_with_http_info(project_key, environment_key, user_segment_key, patch_only, opts)
      data
    end

    # Perform a partial update to a user segment.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_segment_key The user segment&#39;s key. The key identifies the user segment in your code.
    # @param patch_only Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; Feature flag patches also support JSON Merge Patch format. &#39;https://tools.ietf.org/html/rfc7386&#39; The addition of comments is also supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegment, Fixnum, Hash)>] UserSegment data, response status code and response headers
    def patch_user_segment_with_http_info(project_key, environment_key, user_segment_key, patch_only, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSegmentsApi.patch_user_segment ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UserSegmentsApi.patch_user_segment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UserSegmentsApi.patch_user_segment"
      end
      # verify the required parameter 'user_segment_key' is set
      if @api_client.config.client_side_validation && user_segment_key.nil?
        fail ArgumentError, "Missing the required parameter 'user_segment_key' when calling UserSegmentsApi.patch_user_segment"
      end
      # verify the required parameter 'patch_only' is set
      if @api_client.config.client_side_validation && patch_only.nil?
        fail ArgumentError, "Missing the required parameter 'patch_only' when calling UserSegmentsApi.patch_user_segment"
      end
      # resource path
      local_var_path = '/segments/{projectKey}/{environmentKey}/{userSegmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s).sub('{' + 'userSegmentKey' + '}', user_segment_key.to_s)

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
      post_body = @api_client.object_to_http_body(patch_only)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserSegment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSegmentsApi#patch_user_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a new user segment.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_segment_body Create a new user segment.
    # @param [Hash] opts the optional parameters
    # @return [UserSegment]
    def post_user_segment(project_key, environment_key, user_segment_body, opts = {})
      data, _status_code, _headers = post_user_segment_with_http_info(project_key, environment_key, user_segment_body, opts)
      data
    end

    # Creates a new user segment.
    # @param project_key The project key, used to tie the flags together under one project so they can be managed together.
    # @param environment_key The environment key, used to tie together flag configuration and users under one environment so they can be managed together.
    # @param user_segment_body Create a new user segment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegment, Fixnum, Hash)>] UserSegment data, response status code and response headers
    def post_user_segment_with_http_info(project_key, environment_key, user_segment_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserSegmentsApi.post_user_segment ...'
      end
      # verify the required parameter 'project_key' is set
      if @api_client.config.client_side_validation && project_key.nil?
        fail ArgumentError, "Missing the required parameter 'project_key' when calling UserSegmentsApi.post_user_segment"
      end
      # verify the required parameter 'environment_key' is set
      if @api_client.config.client_side_validation && environment_key.nil?
        fail ArgumentError, "Missing the required parameter 'environment_key' when calling UserSegmentsApi.post_user_segment"
      end
      # verify the required parameter 'user_segment_body' is set
      if @api_client.config.client_side_validation && user_segment_body.nil?
        fail ArgumentError, "Missing the required parameter 'user_segment_body' when calling UserSegmentsApi.post_user_segment"
      end
      # resource path
      local_var_path = '/segments/{projectKey}/{environmentKey}'.sub('{' + 'projectKey' + '}', project_key.to_s).sub('{' + 'environmentKey' + '}', environment_key.to_s)

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
      post_body = @api_client.object_to_http_body(user_segment_body)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserSegment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSegmentsApi#post_user_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
