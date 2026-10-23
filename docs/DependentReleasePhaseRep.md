# LaunchDarklyApi::DependentReleasePhaseRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The guarded rollout release phase ID |  |
| **flag_key** | **String** | The guarded rollout flag key  |  |
| **flag_name** | **String** | The guarded rollout flag name  |  |
| **flag_purpose** | **String** | The guarded rollout flag purpose | [optional] |
| **environment_key** | **String** | The guarded rollout environment key |  |
| **environment_name** | **String** | The guarded rollout environment name |  |
| **status** | **String** | The guarded rollout status |  |
| **creation_date** | **Integer** |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentReleasePhaseRep.new(
  _id: 885ccadf-181b-4a9a-8414-7ad6f7ba2db0,
  flag_key: my-flag,
  flag_name: My Flag,
  flag_purpose: migration,
  environment_key: production,
  environment_name: Production,
  status: monitoring,
  creation_date: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/internal/projects/my-project/flags/my-flag/environments/production/releases/1b2a3c4d-5e6f-4a7b-8c9d-0e1f2a3b4c5d&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

