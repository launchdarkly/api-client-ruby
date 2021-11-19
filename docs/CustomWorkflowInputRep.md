# LaunchDarklyApi::CustomWorkflowInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maintainer_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **stages** | [**Array&lt;StageInputRep&gt;**](StageInputRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomWorkflowInputRep.new(
  maintainer_id: null,
  name: null,
  description: null,
  stages: null
)
```

