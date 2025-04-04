# LaunchDarklyApi::AnnouncementAccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **denied** | [**Array&lt;AnnouncementAccessDenied&gt;**](AnnouncementAccessDenied.md) |  |  |
| **allowed** | [**Array&lt;AnnouncementAccessAllowedRep&gt;**](AnnouncementAccessAllowedRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AnnouncementAccess.new(
  denied: null,
  allowed: null
)
```

