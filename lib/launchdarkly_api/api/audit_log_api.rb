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
  class AuditLogApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a list of all audit log entries. The query parameters allow you to restrict the returned results by date ranges, resource specifiers, or a full-text search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :before A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have before this timestamp.
    # @option opts [Integer] :after A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp.
    # @option opts [String] :q Text to search for. You can search for the full or partial name of the resource involved or fullpartial email address of the member who made the change.
    # @option opts [Float] :limit A limit on the number of audit log entries to be returned, between 1 and 20.
    # @option opts [String] :spec A resource specifier, allowing you to filter audit log listings by resource.
    # @return [AuditLogEntries]
    def get_audit_log_entries(opts = {})
      data, _status_code, _headers = get_audit_log_entries_with_http_info(opts)
      data
    end

    # Get a list of all audit log entries. The query parameters allow you to restrict the returned results by date ranges, resource specifiers, or a full-text search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :before A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have before this timestamp.
    # @option opts [Integer] :after A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp.
    # @option opts [String] :q Text to search for. You can search for the full or partial name of the resource involved or fullpartial email address of the member who made the change.
    # @option opts [Float] :limit A limit on the number of audit log entries to be returned, between 1 and 20.
    # @option opts [String] :spec A resource specifier, allowing you to filter audit log listings by resource.
    # @return [Array<(AuditLogEntries, Fixnum, Hash)>] AuditLogEntries data, response status code and response headers
    def get_audit_log_entries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuditLogApi.get_audit_log_entries ...'
      end
      # resource path
      local_var_path = '/auditlog'

      # query parameters
      query_params = {}
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'spec'] = opts[:'spec'] if !opts[:'spec'].nil?

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
        :return_type => 'AuditLogEntries')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditLogApi#get_audit_log_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Use this endpoint to fetch a single audit log entry by its resouce ID.
    # @param resource_id The resource ID.
    # @param [Hash] opts the optional parameters
    # @return [AuditLogEntry]
    def get_audit_log_entry(resource_id, opts = {})
      data, _status_code, _headers = get_audit_log_entry_with_http_info(resource_id, opts)
      data
    end

    # Use this endpoint to fetch a single audit log entry by its resouce ID.
    # @param resource_id The resource ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuditLogEntry, Fixnum, Hash)>] AuditLogEntry data, response status code and response headers
    def get_audit_log_entry_with_http_info(resource_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuditLogApi.get_audit_log_entry ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling AuditLogApi.get_audit_log_entry"
      end
      # resource path
      local_var_path = '/auditlog/{resourceId}'.sub('{' + 'resourceId' + '}', resource_id.to_s)

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
        :return_type => 'AuditLogEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditLogApi#get_audit_log_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
