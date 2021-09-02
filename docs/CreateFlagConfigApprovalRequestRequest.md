# LaunchDarklyApi::CreateFlagConfigApprovalRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | A comment describing the approval request | [optional] |
| **description** | **String** | A human-friendly name for the approval request |  |
| **instructions** | **Array&lt;Hash&gt;** |  |  |
| **notify_member_ids** | **Array&lt;String&gt;** | An array of member IDs. These members are notified to review the approval request |  |
| **execution_date** | **Integer** |  | [optional] |
| **operating_on_id** | **String** | ID of scheduled change to edit or delete | [optional] |
| **integration_config** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateFlagConfigApprovalRequestRequest.new(
  comment: null,
  description: null,
  instructions: null,
  notify_member_ids: null,
  execution_date: null,
  operating_on_id: null,
  integration_config: null
)
```

