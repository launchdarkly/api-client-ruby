# LaunchDarklyApi::FeatureFlagScheduledChanges

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;FeatureFlagScheduledChange&gt;**](FeatureFlagScheduledChange.md) | Array of scheduled changes |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagScheduledChanges.new(
  items: null,
  _links: null
)
```

