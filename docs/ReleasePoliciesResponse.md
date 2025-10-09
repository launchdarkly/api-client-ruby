# LaunchDarklyApi::ReleasePoliciesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ReleasePolicy&gt;**](ReleasePolicy.md) | List of release policies |  |
| **total_count** | **Integer** | Total number of release policies |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleasePoliciesResponse.new(
  items: null,
  total_count: 42
)
```

