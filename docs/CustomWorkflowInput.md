# LaunchDarklyApi::CustomWorkflowInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maintainer_id** | **String** |  | [optional] |
| **name** | **String** | The workflow name |  |
| **description** | **String** | The workflow description | [optional] |
| **stages** | [**Array&lt;StageInput&gt;**](StageInput.md) | A list of the workflow stages | [optional] |
| **template_key** | **String** | The template key | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomWorkflowInput.new(
  maintainer_id: null,
  name: Progressive rollout starting in two days,
  description: Turn flag on for 10% of users each day,
  stages: null,
  template_key: null
)
```

