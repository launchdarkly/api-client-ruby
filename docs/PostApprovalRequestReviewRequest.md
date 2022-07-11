# LaunchDarklyApi::PostApprovalRequestReviewRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The type of review for this approval request | [optional] |
| **comment** | **String** | Optional comment about the approval request | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PostApprovalRequestReviewRequest.new(
  kind: approve,
  comment: Looks good, thanks for updating
)
```

