# LaunchDarklyApi::FlagConfigApprovalRequestsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;FlagConfigApprovalRequestResponse&gt;**](FlagConfigApprovalRequestResponse.md) | An array of approval requests |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagConfigApprovalRequestsResponse.new(
  items: null,
  _links: null
)
```

