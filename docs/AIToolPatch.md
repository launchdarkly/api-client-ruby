# LaunchDarklyApi::AIToolPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maintainer_id** | **String** |  | [optional] |
| **maintainer_team_key** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **schema** | **Object** | JSON Schema defining the tool&#39;s parameters for LLM consumption | [optional] |
| **custom_parameters** | **Object** | Custom metadata and configuration for application-level use (not sent to LLM) | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIToolPatch.new(
  maintainer_id: 507f1f77bcf86cd799439011,
  maintainer_team_key: example-team-key,
  description: null,
  schema: null,
  custom_parameters: null
)
```

