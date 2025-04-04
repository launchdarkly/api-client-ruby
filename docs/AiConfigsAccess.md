# LaunchDarklyApi::AiConfigsAccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denied** | [**Array&lt;AiConfigsAccessDenied&gt;**](AiConfigsAccessDenied.md) |  |  |
| **allowed** | [**Array&lt;AiConfigsAccessAllowedRep&gt;**](AiConfigsAccessAllowedRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AiConfigsAccess.new(
  denied: null,
  allowed: null
)
```

