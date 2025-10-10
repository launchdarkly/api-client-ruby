# LaunchDarklyApi::InsightsPullRequestsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_pull_requests**](InsightsPullRequestsBetaApi.md#get_pull_requests) | **GET** /api/v2/engineering-insights/pull-requests | List pull requests |


## get_pull_requests

> <PullRequestCollectionRep> get_pull_requests(project_key, opts)

List pull requests

Get a list of pull requests  ### Expanding the pull request collection response  LaunchDarkly supports expanding the pull request collection response to include additional fields.  To expand the response, append the `expand` query parameter and include the following:  * `deployments` includes details on all of the deployments associated with each pull request * `flagReferences` includes details on all of the references to flags in each pull request * `leadTime` includes details about the lead time of the pull request for each stage  For example, use `?expand=deployments` to include the `deployments` field in the response. By default, this field is **not** included in the response. 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::InsightsPullRequestsBetaApi.new
project_key = 'project_key_example' # String | The project key
opts = {
  environment_key: 'environment_key_example', # String | Required if you are using the <code>sort</code> parameter's <code>leadTime</code> option to sort pull requests.
  application_key: 'application_key_example', # String | Filter the results to pull requests deployed to a comma separated list of applications
  status: 'status_example', # String | Filter results to pull requests with the given status. Options: `open`, `merged`, `closed`, `deployed`.
  query: 'query_example', # String | Filter list of pull requests by title or author
  limit: 789, # Integer | The number of pull requests to return. Default is 20. Maximum allowed is 100.
  expand: 'expand_example', # String | Expand properties in response. Options: `deployments`, `flagReferences`, `leadTime`.
  sort: 'sort_example', # String | Sort results. Requires the `environmentKey` to be set. Options: `leadTime` (asc) and `-leadTime` (desc). When query option is excluded, default sort is by created or merged date.
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Unix timestamp in milliseconds. Default value is 7 days ago.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Unix timestamp in milliseconds. Default value is now.
  after: 'after_example', # String | Identifier used for pagination
  before: 'before_example' # String | Identifier used for pagination
}

begin
  # List pull requests
  result = api_instance.get_pull_requests(project_key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsPullRequestsBetaApi->get_pull_requests: #{e}"
end
```

#### Using the get_pull_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullRequestCollectionRep>, Integer, Hash)> get_pull_requests_with_http_info(project_key, opts)

```ruby
begin
  # List pull requests
  data, status_code, headers = api_instance.get_pull_requests_with_http_info(project_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullRequestCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling InsightsPullRequestsBetaApi->get_pull_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | Required if you are using the &lt;code&gt;sort&lt;/code&gt; parameter&#39;s &lt;code&gt;leadTime&lt;/code&gt; option to sort pull requests. | [optional] |
| **application_key** | **String** | Filter the results to pull requests deployed to a comma separated list of applications | [optional] |
| **status** | **String** | Filter results to pull requests with the given status. Options: &#x60;open&#x60;, &#x60;merged&#x60;, &#x60;closed&#x60;, &#x60;deployed&#x60;. | [optional] |
| **query** | **String** | Filter list of pull requests by title or author | [optional] |
| **limit** | **Integer** | The number of pull requests to return. Default is 20. Maximum allowed is 100. | [optional] |
| **expand** | **String** | Expand properties in response. Options: &#x60;deployments&#x60;, &#x60;flagReferences&#x60;, &#x60;leadTime&#x60;. | [optional] |
| **sort** | **String** | Sort results. Requires the &#x60;environmentKey&#x60; to be set. Options: &#x60;leadTime&#x60; (asc) and &#x60;-leadTime&#x60; (desc). When query option is excluded, default sort is by created or merged date. | [optional] |
| **from** | **Time** | Unix timestamp in milliseconds. Default value is 7 days ago. | [optional] |
| **to** | **Time** | Unix timestamp in milliseconds. Default value is now. | [optional] |
| **after** | **String** | Identifier used for pagination | [optional] |
| **before** | **String** | Identifier used for pagination | [optional] |

### Return type

[**PullRequestCollectionRep**](PullRequestCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

