# LaunchDarklyApi::InsightGroupCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The total number of insight groups |  |
| **items** | [**Array&lt;InsightGroup&gt;**](InsightGroup.md) | A list of insight groups |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **metadata** | [**InsightGroupCollectionMetadata**](InsightGroupCollectionMetadata.md) |  | [optional] |
| **score_metadata** | [**InsightGroupCollectionScoreMetadata**](InsightGroupCollectionScoreMetadata.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightGroupCollection.new(
  total_count: 15,
  items: null,
  _links: null,
  metadata: null,
  score_metadata: null
)
```

