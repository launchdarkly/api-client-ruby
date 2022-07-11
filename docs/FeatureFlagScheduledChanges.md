# LaunchDarklyApi::FeatureFlagScheduledChanges

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;FeatureFlagScheduledChange&gt;**](FeatureFlagScheduledChange.md) | Array of scheduled changes |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | Links to other resources within the API. Includes the URL and content type of those resources. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagScheduledChanges.new(
  items: null,
  _links: null
)
```

