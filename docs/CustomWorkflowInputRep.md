# LaunchDarklyApi::CustomWorkflowInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maintainer_id** | **String** |  | [optional] |
| **name** | **String** | The workflow name | [optional] |
| **description** | **String** | The workflow description |  |
| **stages** | [**Array&lt;StageInputRep&gt;**](StageInputRep.md) |  | [optional] |
| **template_key** | **String** | The template key | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomWorkflowInputRep.new(
  maintainer_id: null,
  name: Progressive rollout starting in two days,
  description: Turn flag on for 10% of users each day,
  stages: null,
  template_key: null
)
```

