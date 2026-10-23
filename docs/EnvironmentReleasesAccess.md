# LaunchDarklyApi::EnvironmentReleasesAccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denied** | [**Array&lt;EnvironmentReleasesAccessDenied&gt;**](EnvironmentReleasesAccessDenied.md) |  |  |
| **allowed** | [**Array&lt;EnvironmentReleasesAccessAllowedRep&gt;**](EnvironmentReleasesAccessAllowedRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::EnvironmentReleasesAccess.new(
  denied: null,
  allowed: null
)
```

