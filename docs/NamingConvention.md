# LaunchDarklyApi::NamingConvention

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_case** | **String** | The casing convention to enforce for new flag keys in this project | [optional] |
| **prefix** | **String** | The prefix to enforce for new flag keys in this project | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::NamingConvention.new(
  _case: kebabCase,
  prefix: enable-
)
```

