# LaunchDarklyApi::InsightsRepositoryCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | Total number of repositories |  |
| **items** | [**Array&lt;InsightsRepository&gt;**](InsightsRepository.md) | List of repositories |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsRepositoryCollection.new(
  total_count: 1,
  items: null,
  _links: null
)
```

