# LaunchDarklyApi::ExecutionOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the execution of this workflow stage |  |
| **stop_date** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExecutionOutput.new(
  status: completed,
  stop_date: null
)
```

