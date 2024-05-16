# LaunchDarklyApi::AuditLogApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_audit_log_entries**](AuditLogApi.md#get_audit_log_entries) | **GET** /api/v2/auditlog | List audit log entries |
| [**get_audit_log_entry**](AuditLogApi.md#get_audit_log_entry) | **GET** /api/v2/auditlog/{id} | Get audit log entry |


## get_audit_log_entries

> <AuditLogEntryListingRepCollection> get_audit_log_entries(opts)

List audit log entries

Get a list of all audit log entries. The query parameters let you restrict the results that return by date ranges, resource specifiers, or a full-text search query.  LaunchDarkly uses a resource specifier syntax to name resources or collections of resources. To learn more, read [About the resource specifier syntax](https://docs.launchdarkly.com/home/account/role-resources#about-the-resource-specifier-syntax). 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::AuditLogApi.new
opts = {
  before: 789, # Integer | A timestamp filter, expressed as a Unix epoch time in milliseconds.  All entries this returns occurred before the timestamp.
  after: 789, # Integer | A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries this returns occurred after the timestamp.
  q: 'q_example', # String | Text to search for. You can search for the full or partial name of the resource.
  limit: 789, # Integer | A limit on the number of audit log entries that return. Set between 1 and 20. The default is 10.
  spec: 'spec_example' # String | A resource specifier that lets you filter audit log listings by resource
}

begin
  # List audit log entries
  result = api_instance.get_audit_log_entries(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AuditLogApi->get_audit_log_entries: #{e}"
end
```

#### Using the get_audit_log_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditLogEntryListingRepCollection>, Integer, Hash)> get_audit_log_entries_with_http_info(opts)

```ruby
begin
  # List audit log entries
  data, status_code, headers = api_instance.get_audit_log_entries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditLogEntryListingRepCollection>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AuditLogApi->get_audit_log_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **before** | **Integer** | A timestamp filter, expressed as a Unix epoch time in milliseconds.  All entries this returns occurred before the timestamp. | [optional] |
| **after** | **Integer** | A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries this returns occurred after the timestamp. | [optional] |
| **q** | **String** | Text to search for. You can search for the full or partial name of the resource. | [optional] |
| **limit** | **Integer** | A limit on the number of audit log entries that return. Set between 1 and 20. The default is 10. | [optional] |
| **spec** | **String** | A resource specifier that lets you filter audit log listings by resource | [optional] |

### Return type

[**AuditLogEntryListingRepCollection**](AuditLogEntryListingRepCollection.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_audit_log_entry

> <AuditLogEntryRep> get_audit_log_entry(id)

Get audit log entry

Fetch a detailed audit log entry representation. The detailed representation includes several fields that are not present in the summary representation, including:  - `delta`: the JSON patch body that was used in the request to update the entity - `previousVersion`: a JSON representation of the previous version of the entity - `currentVersion`: a JSON representation of the current version of the entity 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::AuditLogApi.new
id = 'id_example' # String | The ID of the audit log entry

begin
  # Get audit log entry
  result = api_instance.get_audit_log_entry(id)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AuditLogApi->get_audit_log_entry: #{e}"
end
```

#### Using the get_audit_log_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditLogEntryRep>, Integer, Hash)> get_audit_log_entry_with_http_info(id)

```ruby
begin
  # Get audit log entry
  data, status_code, headers = api_instance.get_audit_log_entry_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditLogEntryRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling AuditLogApi->get_audit_log_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the audit log entry |  |

### Return type

[**AuditLogEntryRep**](AuditLogEntryRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

