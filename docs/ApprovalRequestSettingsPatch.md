# LaunchDarklyApi::ApprovalRequestSettingsPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_apply_approved_changes** | **Boolean** | Automatically apply changes that have been approved by all reviewers. This field is only applicable for approval services other than LaunchDarkly.  | [optional] |
| **bypass_approvals_for_pending_changes** | **Boolean** | Whether to skip approvals for pending changes | [optional] |
| **can_apply_declined_changes** | **Boolean** | Allow applying the change as long as at least one person has approved | [optional] |
| **can_review_own_request** | **Boolean** | Allow someone who makes an approval request to apply their own change | [optional] |
| **environment_key** | **String** |  |  |
| **min_num_approvals** | **Integer** | Sets the amount of approvals required before a member can apply a change. The minimum is one and the maximum is five.  | [optional] |
| **required** | **Boolean** | If approvals are required for this environment | [optional] |
| **required_approval_tags** | **Array&lt;String&gt;** | Require approval only on flags with the provided tags. Otherwise all flags will require approval.  | [optional] |
| **resource_kind** | **String** |  |  |
| **service_config** | **Hash&lt;String, Object&gt;** | Arbitrary service-specific configuration | [optional] |
| **service_kind** | **String** | Which service to use for managing approvals | [optional] |
| **service_kind_configuration_id** | **String** | Optional integration configuration ID of a custom approval integration. This is an Enterprise-only feature.  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApprovalRequestSettingsPatch.new(
  auto_apply_approved_changes: true,
  bypass_approvals_for_pending_changes: false,
  can_apply_declined_changes: true,
  can_review_own_request: false,
  environment_key: null,
  min_num_approvals: 1,
  required: true,
  required_approval_tags: [&quot;require-approval&quot;],
  resource_kind: null,
  service_config: {},
  service_kind: launchdarkly,
  service_kind_configuration_id: 1ef45a85-218f-4428-a8b2-a97e5f56c258
)
```

