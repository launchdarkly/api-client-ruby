# LaunchDarklyApi::ContextAttributeValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **Object** | A value for a context attribute. |  |
| **weight** | **Integer** | A relative estimate of the number of contexts seen recently that have a matching value for a given attribute. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextAttributeValue.new(
  name: Sandy,
  weight: 35
)
```

