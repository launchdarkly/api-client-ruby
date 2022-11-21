# LaunchDarklyApi::FeatureFlags

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;FeatureFlag&gt;**](FeatureFlag.md) | An array of feature flags |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **total_count** | **Integer** | The total number of flags | [optional] |
| **total_count_with_differences** | **Integer** | The number of flags that have differences between environments. Only shown when query parameter &lt;code&gt;compare&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlags.new(
  items: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/flags/default&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: 1,
  total_count_with_differences: 0
)
```

