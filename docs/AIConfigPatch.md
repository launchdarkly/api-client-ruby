# LaunchDarklyApi::AIConfigPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_variation_key** | **String** | Key of the variation this config serves by default | [optional] |
| **description** | **String** | A description of the AI Config | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this resource | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this resource | [optional] |
| **name** | **String** | A human-readable name for the AI Config | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for this resource | [optional] |
| **evaluation_metric_key** | **String** | Evaluation metric key for this config | [optional] |
| **is_inverted** | **Boolean** | Whether the evaluation metric is inverted, meaning a lower value is better if set as true | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigPatch.new(
  default_variation_key: null,
  description: null,
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  name: null,
  tags: null,
  evaluation_metric_key: null,
  is_inverted: null
)
```

