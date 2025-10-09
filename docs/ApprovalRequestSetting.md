# LaunchDarklyApi::ApprovalRequestSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **required** | **Boolean** | If approvals are required for this environment |  |
| **bypass_approvals_for_pending_changes** | **Boolean** | Whether to skip approvals for pending changes |  |
| **min_num_approvals** | **Integer** | Sets the amount of approvals required before a member can apply a change. The minimum is one and the maximum is five.  |  |
| **can_review_own_request** | **Boolean** | Allow someone who makes an approval request to apply their own change |  |
| **can_apply_declined_changes** | **Boolean** | Allow applying the change as long as at least one person has approved |  |
| **auto_apply_approved_changes** | **Boolean** | Automatically apply changes that have been approved by all reviewers. This field is only applicable for approval services other than LaunchDarkly.  | [optional] |
| **service_kind** | **String** | Which service to use for managing approvals |  |
| **service_config** | **Hash&lt;String, Object&gt;** | Arbitrary service-specific configuration |  |
| **required_approval_tags** | **Array&lt;String&gt;** | Require approval only on flags with the provided tags. Otherwise all flags will require approval.  |  |
| **service_kind_configuration_id** | **String** | Optional integration configuration ID of a custom approval integration. This is an Enterprise-only feature.  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApprovalRequestSetting.new(
  required: true,
  bypass_approvals_for_pending_changes: false,
  min_num_approvals: 1,
  can_review_own_request: false,
  can_apply_declined_changes: true,
  auto_apply_approved_changes: true,
  service_kind: launchdarkly,
  service_config: {},
  required_approval_tags: [&quot;require-approval&quot;],
  service_kind_configuration_id: 1ef45a85-218f-4428-a8b2-a97e5f56c258
)
```

