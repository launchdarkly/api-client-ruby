# LaunchDarklyApi::OtherApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ips**](OtherApi.md#get_ips) | **GET** /api/v2/public-ip-list | Gets the public IP list |
| [**get_openapi_spec**](OtherApi.md#get_openapi_spec) | **GET** /api/v2/openapi.json | Gets the OpenAPI spec in json |
| [**get_root**](OtherApi.md#get_root) | **GET** /api/v2 | Root resource |
| [**get_versions**](OtherApi.md#get_versions) | **GET** /api/v2/versions | Get version information |


## get_ips

> <IpList> get_ips

Gets the public IP list

Get a list of IP ranges the LaunchDarkly service uses. You can use this list to allow LaunchDarkly through your firewall.<br /><br />This endpoint returns a JSON object with two attributes: `addresses` and `outboundAddresses`. The `addresses` element contains the IP addresses LaunchDarkly's service uses. The `outboundAddresses` element contains the IP addresses outgoing webhook notifications use.<br /><br />We post upcoming changes to this list in advance on our [status page](https://status.launchdarkly.com/).

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

api_instance = LaunchDarklyApi::OtherApi.new

begin
  # Gets the public IP list
  result = api_instance.get_ips
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OtherApi->get_ips: #{e}"
end
```

#### Using the get_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpList>, Integer, Hash)> get_ips_with_http_info

```ruby
begin
  # Gets the public IP list
  data, status_code, headers = api_instance.get_ips_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpList>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OtherApi->get_ips_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IpList**](IpList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_openapi_spec

> get_openapi_spec

Gets the OpenAPI spec in json

The OpenAPI spec endpoint serves the latest version of the OpenAPI specification for LaunchDarkly's API in json format.

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

api_instance = LaunchDarklyApi::OtherApi.new

begin
  # Gets the OpenAPI spec in json
  api_instance.get_openapi_spec
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OtherApi->get_openapi_spec: #{e}"
end
```

#### Using the get_openapi_spec_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_openapi_spec_with_http_info

```ruby
begin
  # Gets the OpenAPI spec in json
  data, status_code, headers = api_instance.get_openapi_spec_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OtherApi->get_openapi_spec_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_root

> <Hash<String, Link>> get_root

Root resource

Issue a `GET` request to the root resource to find all of the resource categories supported by the API

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

api_instance = LaunchDarklyApi::OtherApi.new

begin
  # Root resource
  result = api_instance.get_root
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OtherApi->get_root: #{e}"
end
```

#### Using the get_root_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, Link>>, Integer, Hash)> get_root_with_http_info

```ruby
begin
  # Root resource
  data, status_code, headers = api_instance.get_root_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, Link>>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OtherApi->get_root_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, Link&gt;**](Link.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_versions

> <VersionsRep> get_versions

Get version information

Get the latest API version, the list of valid API versions in ascending order, and the version being used for this request. These are all in the external, date-based format.

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

api_instance = LaunchDarklyApi::OtherApi.new

begin
  # Get version information
  result = api_instance.get_versions
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OtherApi->get_versions: #{e}"
end
```

#### Using the get_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VersionsRep>, Integer, Hash)> get_versions_with_http_info

```ruby
begin
  # Get version information
  data, status_code, headers = api_instance.get_versions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VersionsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling OtherApi->get_versions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**VersionsRep**](VersionsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

