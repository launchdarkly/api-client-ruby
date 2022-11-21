# LaunchDarklyApi::ApprovalSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **required** | **Boolean** | If approvals are required for this environment. |  |
| **bypass_approvals_for_pending_changes** | **Boolean** | Whether to skip approvals for pending changes |  |
| **min_num_approvals** | **Integer** | Sets the amount of approvals required before a member can apply a change. The minimum is one and the maximum is five. |  |
| **can_review_own_request** | **Boolean** | Allow someone who makes an approval request to apply their own change. |  |
| **can_apply_declined_changes** | **Boolean** | Allow applying the change as long as at least one person has approved. |  |
| **service_kind** | **String** | Which service to use for managing approvals. |  |
| **service_config** | **Hash&lt;String, Object&gt;** |  |  |
| **required_approval_tags** | **Array&lt;String&gt;** | Require approval only on flags with the provided tags. Otherwise all flags will require approval. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApprovalSettings.new(
  required: true,
  bypass_approvals_for_pending_changes: false,
  min_num_approvals: 1,
  can_review_own_request: false,
  can_apply_declined_changes: true,
  service_kind: launchdarkly,
  service_config: {},
  required_approval_tags: [&quot;require-approval&quot;]
)
```

