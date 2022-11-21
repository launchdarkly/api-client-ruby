# LaunchDarklyApi::TeamCustomRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key of the custom role | [optional] |
| **name** | **String** | The name of the custom role | [optional] |
| **projects** | [**TeamProjects**](TeamProjects.md) |  | [optional] |
| **applied_on** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamCustomRole.new(
  key: example-role,
  name: Example role,
  projects: null,
  applied_on: null
)
```

