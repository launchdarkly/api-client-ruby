# LaunchDarklyApi::InsightsFlagEventsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_flag_events**](InsightsFlagEventsBetaApi.md#get_flag_events) | **GET** /api/v2/engineering-insights/flag-events | List flag events |


## get_flag_events

> <FlagEventCollectionRep> get_flag_events(project_key, environment_key, opts)

List flag events

Get a list of flag events  ### Expanding the flag event collection response  LaunchDarkly supports expanding the flag event collection response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `experiments` includes details on all of the experiments run on each flag  For example, use `?expand=experiments` to include the `experiments` field in the response. By default, this field is **not** included in the response. 

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

api_instance = LaunchDarklyApi::InsightsFlagEventsBetaApi.new
project_key = 'project_key_example' # String | The project key
environment_key = 'environment_key_example' # String | The environment key
opts = {
  application_key: 'application_key_example', # String | Comma separated list of application keys
  query: 'query_example', # String | Filter events by flag key
  impact_size: 'impact_size_example', # String | Filter events by impact size. A small impact created a less than 20% change in the proportion of end users receiving one or more flag variations. A medium impact created between a 20%-80% change. A large impact created a more than 80% change. Options: `none`, `small`, `medium`, `large`
  has_experiments: true, # Boolean | Filter events to those associated with an experiment (`true`) or without an experiment (`false`)
  global: 'global_example', # String | Filter to include or exclude global events. Default value is `include`. Options: `include`, `exclude`
  expand: 'expand_example', # String | Expand properties in response. Options: `experiments`
  limit: 789, # Integer | The number of deployments to return. Default is 20. Maximum allowed is 100.
  from: 789, # Integer | Unix timestamp in milliseconds. Default value is 7 days ago.
  to: 789, # Integer | Unix timestamp in milliseconds. Default value is now.
  after: 'after_example', # String | Identifier used for pagination
  before: 'before_example' # String | Identifier used for pagination
}

begin
  # List flag events
  result = api_instance.get_flag_events(project_key, environment_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsFlagEventsBetaApi->get_flag_events: #{e}"
end
```

#### Using the get_flag_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlagEventCollectionRep>, Integer, Hash)> get_flag_events_with_http_info(project_key, environment_key, opts)

```ruby
begin
  # List flag events
  data, status_code, headers = api_instance.get_flag_events_with_http_info(project_key, environment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlagEventCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsFlagEventsBetaApi->get_flag_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **application_key** | **String** | Comma separated list of application keys | [optional] |
| **query** | **String** | Filter events by flag key | [optional] |
| **impact_size** | **String** | Filter events by impact size. A small impact created a less than 20% change in the proportion of end users receiving one or more flag variations. A medium impact created between a 20%-80% change. A large impact created a more than 80% change. Options: &#x60;none&#x60;, &#x60;small&#x60;, &#x60;medium&#x60;, &#x60;large&#x60; | [optional] |
| **has_experiments** | **Boolean** | Filter events to those associated with an experiment (&#x60;true&#x60;) or without an experiment (&#x60;false&#x60;) | [optional] |
| **global** | **String** | Filter to include or exclude global events. Default value is &#x60;include&#x60;. Options: &#x60;include&#x60;, &#x60;exclude&#x60; | [optional] |
| **expand** | **String** | Expand properties in response. Options: &#x60;experiments&#x60; | [optional] |
| **limit** | **Integer** | The number of deployments to return. Default is 20. Maximum allowed is 100. | [optional] |
| **from** | **Integer** | Unix timestamp in milliseconds. Default value is 7 days ago. | [optional] |
| **to** | **Integer** | Unix timestamp in milliseconds. Default value is now. | [optional] |
| **after** | **String** | Identifier used for pagination | [optional] |
| **before** | **String** | Identifier used for pagination | [optional] |

### Return type

[**FlagEventCollectionRep**](FlagEventCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

