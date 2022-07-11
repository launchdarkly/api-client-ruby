# LaunchDarklyApi::CreateFlagConfigApprovalRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the approval request | [optional] |
| **description** | **String** | A brief description of the changes you&#39;re requesting |  |
| **instructions** | **Array&lt;Hash&gt;** |  |  |
| **notify_member_ids** | **Array&lt;String&gt;** | An array of member IDs. These members are notified to review the approval request. | [optional] |
| **notify_team_keys** | **Array&lt;String&gt;** | An array of team keys. The members of these teams are notified to review the approval request. | [optional] |
| **execution_date** | **Integer** |  | [optional] |
| **operating_on_id** | **String** | The ID of a scheduled change. Include this if your &lt;code&gt;instructions&lt;/code&gt; include editing or deleting a scheduled change. | [optional] |
| **integration_config** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateFlagConfigApprovalRequestRequest.new(
  comment: optional comment,
  description: Requesting to update targeting,
  instructions: null,
  notify_member_ids: [&quot;1234a56b7c89d012345e678f&quot;],
  notify_team_keys: [&quot;example-reviewer-team&quot;],
  execution_date: null,
  operating_on_id: 6297ed79dee7dc14e1f9a80c,
  integration_config: null
)
```

