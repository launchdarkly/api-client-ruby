# LaunchDarklyApi::InsightsRepositoryProjectCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | Total number of repository project associations |  |
| **items** | [**Array&lt;InsightsRepositoryProject&gt;**](InsightsRepositoryProject.md) | List of repository project associations |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsRepositoryProjectCollection.new(
  total_count: 1,
  items: null,
  _links: null
)
```

