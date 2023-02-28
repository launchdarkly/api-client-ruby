# LaunchDarklyApi::CustomWorkflowMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the workflow stage that required this approval request | [optional] |
| **stage** | [**CustomWorkflowStageMeta**](CustomWorkflowStageMeta.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomWorkflowMeta.new(
  name: Example workflow name,
  stage: null
)
```

