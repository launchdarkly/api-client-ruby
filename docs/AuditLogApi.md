# SwaggerClient::AuditLogApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_audit_log_entries**](AuditLogApi.md#get_audit_log_entries) | **GET** /auditlog | Get a list of all audit log entries. The query parameters allow you to restrict the returned results by date ranges, resource specifiers, or a full-text search query.
[**get_audit_log_entry**](AuditLogApi.md#get_audit_log_entry) | **GET** /auditlog/{resourceId} | Use this endpoint to fetch a single audit log entry by its resouce ID.


# **get_audit_log_entries**
> AuditLogEntries get_audit_log_entries(opts)

Get a list of all audit log entries. The query parameters allow you to restrict the returned results by date ranges, resource specifiers, or a full-text search query.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::AuditLogApi.new

opts = { 
  before: 8.14, # Float | A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have before this timestamp.
  after: 8.14, # Float | A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp.
  q: "q_example", # String | Text to search for. You can search for the full or partial name of the resource involved or fullpartial email address of the member who made the change.
  limit: 8.14, # Float | A limit on the number of audit log entries to be returned, between 1 and 20.
  spec: "spec_example" # String | A resource specifier, allowing you to filter audit log listings by resource.
}

begin
  #Get a list of all audit log entries. The query parameters allow you to restrict the returned results by date ranges, resource specifiers, or a full-text search query.
  result = api_instance.get_audit_log_entries(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuditLogApi->get_audit_log_entries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **Float**| A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have before this timestamp. | [optional] 
 **after** | **Float**| A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp. | [optional] 
 **q** | **String**| Text to search for. You can search for the full or partial name of the resource involved or fullpartial email address of the member who made the change. | [optional] 
 **limit** | **Float**| A limit on the number of audit log entries to be returned, between 1 and 20. | [optional] 
 **spec** | **String**| A resource specifier, allowing you to filter audit log listings by resource. | [optional] 

### Return type

[**AuditLogEntries**](AuditLogEntries.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_audit_log_entry**
> AuditLogEntry get_audit_log_entry(resource_id, )

Use this endpoint to fetch a single audit log entry by its resouce ID.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::AuditLogApi.new

resource_id = "resource_id_example" # String | The resource ID.


begin
  #Use this endpoint to fetch a single audit log entry by its resouce ID.
  result = api_instance.get_audit_log_entry(resource_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuditLogApi->get_audit_log_entry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **String**| The resource ID. | 

### Return type

[**AuditLogEntry**](AuditLogEntry.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



