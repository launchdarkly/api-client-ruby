# LaunchDarklyApi::DependentMeasuredRolloutRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The guarded rollout measured rollout Id |  |
| **flag_key** | **String** | The guarded rollout flag key  |  |
| **flag_name** | **String** | The guarded rollout flag name  |  |
| **environment_key** | **String** | The guarded rollout environment key |  |
| **environment_name** | **String** | The guarded rollout environment name |  |
| **status** | **String** | The guarded rollout status |  |
| **creation_date** | **Integer** |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentMeasuredRolloutRep.new(
  _id: 885ccadf-181b-4a9a-8414-7ad6f7ba2db0,
  flag_key: my-flag,
  flag_name: My Flag,
  environment_key: production,
  environment_name: Production,
  status: monitoring,
  creation_date: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/flags/my-flag/environments/production/measured-rollouts/885ccadf-181b-4a9a-8414-7ad6f7ba2db0&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

