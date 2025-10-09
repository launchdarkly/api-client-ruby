# LaunchDarklyApi::ViewsAccessRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denied** | [**Array&lt;ViewsAccessDenied&gt;**](ViewsAccessDenied.md) |  |  |
| **allowed** | [**Array&lt;ViewsAccessAllowedRep&gt;**](ViewsAccessAllowedRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewsAccessRep.new(
  denied: null,
  allowed: null
)
```

