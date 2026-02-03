# LaunchDarklyApi::AIConfigPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **maintainer_id** | **String** |  | [optional] |
| **maintainer_team_key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **evaluation_metric_key** | **String** | Evaluation metric key for this AI Config | [optional] |
| **is_inverted** | **Boolean** | Whether the evaluation metric is inverted, meaning a lower value is better if set as true | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigPatch.new(
  description: null,
  maintainer_id: null,
  maintainer_team_key: null,
  name: null,
  tags: null,
  evaluation_metric_key: null,
  is_inverted: null
)
```

