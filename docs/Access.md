# LaunchDarklyApi::Access

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denied** | [**Array&lt;AccessDenied&gt;**](AccessDenied.md) |  |  |
| **allowed** | [**Array&lt;AccessAllowedRep&gt;**](AccessAllowedRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Access.new(
  denied: null,
  allowed: null
)
```

