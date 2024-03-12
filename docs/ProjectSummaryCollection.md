# LaunchDarklyApi::ProjectSummaryCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  |  |
| **items** | [**Array&lt;ProjectSummary&gt;**](ProjectSummary.md) |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ProjectSummaryCollection.new(
  total_count: null,
  items: null,
  _links: null
)
```

