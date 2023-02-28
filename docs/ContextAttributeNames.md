# LaunchDarklyApi::ContextAttributeNames

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The kind associated with this collection of context attribute names. |  |
| **names** | [**Array&lt;ContextAttributeName&gt;**](ContextAttributeName.md) | A collection of context attribute names. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextAttributeNames.new(
  kind: user,
  names: null
)
```

