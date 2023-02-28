# LaunchDarklyApi::ContextAttributeValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The kind associated with this collection of context attribute values. |  |
| **values** | [**Array&lt;ContextAttributeValue&gt;**](ContextAttributeValue.md) | A collection of context attribute values. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextAttributeValues.new(
  kind: user,
  values: null
)
```

