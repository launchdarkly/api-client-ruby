# LaunchDarklyApi::MultiEnvironmentDependentFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **key** | **String** |  |  |
| **environments** | [**Array&lt;DependentFlagEnvironment&gt;**](DependentFlagEnvironment.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MultiEnvironmentDependentFlag.new(
  name: null,
  key: null,
  environments: null
)
```

