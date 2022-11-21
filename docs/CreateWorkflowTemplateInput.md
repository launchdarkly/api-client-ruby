# LaunchDarklyApi::CreateWorkflowTemplateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **workflow_id** | **String** |  | [optional] |
| **stages** | [**Array&lt;StageInput&gt;**](StageInput.md) |  | [optional] |
| **project_key** | **String** |  | [optional] |
| **environment_key** | **String** |  | [optional] |
| **flag_key** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateWorkflowTemplateInput.new(
  key: null,
  name: null,
  description: null,
  workflow_id: null,
  stages: null,
  project_key: null,
  environment_key: null,
  flag_key: null
)
```

