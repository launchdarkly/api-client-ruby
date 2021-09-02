# LaunchDarklyApi::CreateCopyFlagConfigApprovalRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | A comment describing the approval request | [optional] |
| **description** | **String** |  | [optional] |
| **notify_member_ids** | **Array&lt;String&gt;** | An array of member IDs. These members are notified to review the approval request. |  |
| **source** | [**SourceFlag**](SourceFlag.md) |  |  |
| **included_actions** | **Array&lt;String&gt;** |  | [optional] |
| **excluded_actions** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateCopyFlagConfigApprovalRequestRequest.new(
  comment: null,
  description: null,
  notify_member_ids: null,
  source: null,
  included_actions: null,
  excluded_actions: null
)
```

