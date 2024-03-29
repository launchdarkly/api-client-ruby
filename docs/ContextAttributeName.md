# LaunchDarklyApi::ContextAttributeName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A context attribute&#39;s name. |  |
| **weight** | **Integer** | A relative estimate of the number of contexts seen recently that have an attribute with the associated name. |  |
| **redacted** | **Boolean** | Whether or not the attribute has one or more redacted values. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextAttributeName.new(
  name: /firstName,
  weight: 2225,
  redacted: false
)
```

