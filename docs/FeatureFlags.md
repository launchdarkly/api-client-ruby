# LaunchDarklyApi::FeatureFlags

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;FeatureFlag&gt;**](FeatureFlag.md) |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **total_count** | **Integer** |  | [optional] |
| **total_count_with_differences** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlags.new(
  items: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/flags/default&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: 1,
  total_count_with_differences: null
)
```

