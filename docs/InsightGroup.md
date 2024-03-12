# LaunchDarklyApi::InsightGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | [**Environment**](Environment.md) |  | [optional] |
| **scores** | [**InsightGroupScores**](InsightGroupScores.md) |  | [optional] |
| **score_metadata** | [**InsightGroupCollectionScoreMetadata**](InsightGroupCollectionScoreMetadata.md) |  | [optional] |
| **key** | **String** | The insight group key |  |
| **name** | **String** | The insight group name |  |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **application_keys** | **Array&lt;String&gt;** | The application keys | [optional] |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightGroup.new(
  environment: null,
  scores: null,
  score_metadata: null,
  key: default-production-all-apps,
  name: Production - All Apps,
  project_key: default,
  environment_key: production,
  application_keys: [&quot;billing-service&quot;,&quot;inventory-service&quot;],
  created_at: null
)
```

