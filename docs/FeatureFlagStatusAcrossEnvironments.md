# LaunchDarklyApi::FeatureFlagStatusAcrossEnvironments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environments** | [**Hash&lt;String, FeatureFlagStatus&gt;**](FeatureFlagStatus.md) | Flag status for environment. | [optional] |
| **key** | **String** | feature flag key | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagStatusAcrossEnvironments.new(
  environments: {&quot;production&quot;:{&quot;lastRequested&quot;:&quot;2020-02-05T18:17:01.514Z&quot;,&quot;name&quot;:&quot;inactive&quot;}},
  key: my-flag,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/flag-status&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/flag-status/my-project/my-flag&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

