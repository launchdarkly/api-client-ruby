# LaunchDarklyApi::CustomWorkflowStageMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | The zero-based index of the workflow stage | [optional] |
| **name** | **String** | The name of the workflow stage | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomWorkflowStageMeta.new(
  index: 0,
  name: Stage 1
)
```

