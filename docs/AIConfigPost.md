# LaunchDarklyApi::AIConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A description of the AI Config | [optional][default to &#39;&#39;] |
| **key** | **String** | A unique key for the AI Config |  |
| **maintainer_id** | **String** | The ID of the member who maintains this resource | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this resource | [optional] |
| **mode** | **String** | The AI Config mode | [optional][default to &#39;completion&#39;] |
| **name** | **String** | A human-readable name for the AI Config |  |
| **tags** | **Array&lt;String&gt;** | Tags for this resource | [optional] |
| **view_keys** | **Array&lt;String&gt;** | Keys of the views to add the AI Config to | [optional] |
| **default_variation** | [**AIConfigVariationPost**](AIConfigVariationPost.md) |  | [optional] |
| **evaluation_metric_key** | **String** | Evaluation metric key for this config | [optional] |
| **is_inverted** | **Boolean** | Whether the evaluation metric is inverted, meaning a lower value is better if set as true | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigPost.new(
  description: null,
  key: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  mode: null,
  name: null,
  tags: null,
  view_keys: null,
  default_variation: null,
  evaluation_metric_key: null,
  is_inverted: null
)
```

