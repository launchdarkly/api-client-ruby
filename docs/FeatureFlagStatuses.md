# LaunchDarklyApi::FeatureFlagStatuses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **items** | [**Array&lt;FlagStatusRep&gt;**](FlagStatusRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagStatuses.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/flag-statuses/my-project/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  items: null
)
```

