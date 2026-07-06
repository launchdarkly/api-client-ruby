# LaunchDarklyApi::ExpandedExperimentRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key of the experiment |  |
| **name** | **String** | The name of the experiment |  |
| **_access** | [**Access**](Access.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedExperimentRep.new(
  key: experiment-key-123abc,
  name: My Experiment,
  _access: null
)
```

