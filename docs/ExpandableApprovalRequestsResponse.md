# LaunchDarklyApi::ExpandableApprovalRequestsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ExpandableApprovalRequestResponse&gt;**](ExpandableApprovalRequestResponse.md) | An array of approval requests |  |
| **total_count** | **Integer** | Total number of approval requests |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandableApprovalRequestsResponse.new(
  items: null,
  total_count: 1,
  _links: null
)
```

