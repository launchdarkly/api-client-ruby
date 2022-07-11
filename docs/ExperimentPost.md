# LaunchDarklyApi::ExperimentPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **maintainer_id** | **String** |  |  |
| **key** | **String** |  |  |
| **iteration** | [**IterationInput**](IterationInput.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentPost.new(
  name: null,
  description: null,
  maintainer_id: null,
  key: null,
  iteration: null
)
```

