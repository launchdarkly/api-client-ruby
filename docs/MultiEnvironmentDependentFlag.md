# LaunchDarklyApi::MultiEnvironmentDependentFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The flag name | [optional] |
| **key** | **String** | The flag key |  |
| **environments** | [**Array&lt;DependentFlagEnvironment&gt;**](DependentFlagEnvironment.md) | A list of environments in which the dependent flag appears |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MultiEnvironmentDependentFlag.new(
  name: Example dependent flag,
  key: dependent-flag-key-123abc,
  environments: null
)
```

