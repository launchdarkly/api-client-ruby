# LaunchDarklyApi::ApprovalConditionOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  |  |
| **notify_member_ids** | **Array&lt;String&gt;** |  |  |
| **all_reviews** | [**Array&lt;ReviewOutput&gt;**](ReviewOutput.md) |  |  |
| **review_status** | **String** |  |  |
| **applied_date** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApprovalConditionOutput.new(
  description: null,
  notify_member_ids: null,
  all_reviews: null,
  review_status: null,
  applied_date: null
)
```

