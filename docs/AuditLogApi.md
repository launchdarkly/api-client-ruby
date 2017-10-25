# SwaggerClient::AuditLogApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_audit_log_entries**](AuditLogApi.md#get_audit_log_entries) | **GET** /auditlog | Fetch a list of all audit log entries
[**get_audit_log_entry**](AuditLogApi.md#get_audit_log_entry) | **GET** /auditlog/{resourceId} | Get an audit log entry by ID


# **get_audit_log_entries**
> AuditLogEntries get_audit_log_entries

Fetch a list of all audit log entries

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

begin
  #Fetch a list of all audit log entries
  result = api_instance.get_audit_log_entries
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuditLogApi->get_audit_log_entries: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuditLogEntries**](AuditLogEntries.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_audit_log_entry**
> AuditLogEntry get_audit_log_entry(resource_id, )

Get an audit log entry by ID

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

resource_id = "resource_id_example" # String | The resource ID


begin
  #Get an audit log entry by ID
  result = api_instance.get_audit_log_entry(resource_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuditLogApi->get_audit_log_entry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **String**| The resource ID | 

### Return type

[**AuditLogEntry**](AuditLogEntry.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



