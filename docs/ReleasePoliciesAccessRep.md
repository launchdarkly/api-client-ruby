# LaunchDarklyApi::ReleasePoliciesAccessRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denied** | [**Array&lt;ReleasePoliciesAccessDenied&gt;**](ReleasePoliciesAccessDenied.md) |  |  |
| **allowed** | [**Array&lt;ReleasePoliciesAccessAllowedRep&gt;**](ReleasePoliciesAccessAllowedRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleasePoliciesAccessRep.new(
  denied: null,
  allowed: null
)
```

