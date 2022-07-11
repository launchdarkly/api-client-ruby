# LaunchDarklyApi::WorkflowTemplateParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **path** | **String** | The path of the property to parameterize, relative to its parent condition or instruction | [optional] |
| **default** | [**ParameterDefault**](ParameterDefault.md) |  | [optional] |
| **valid** | **Boolean** | Whether the default value is valid for the target flag and environment | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::WorkflowTemplateParameter.new(
  _id: null,
  path: null,
  default: null,
  valid: null
)
```

