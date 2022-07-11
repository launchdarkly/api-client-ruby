# LaunchDarklyApi::CreateCopyFlagConfigApprovalRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the approval request | [optional] |
| **description** | **String** | A brief description of your changes |  |
| **notify_member_ids** | **Array&lt;String&gt;** | An array of member IDs. These members are notified to review the approval request. | [optional] |
| **notify_team_keys** | **Array&lt;String&gt;** | An array of team keys. The members of these teams are notified to review the approval request. | [optional] |
| **source** | [**SourceFlag**](SourceFlag.md) |  |  |
| **included_actions** | **Array&lt;String&gt;** | Optional list of the flag changes to copy from the source environment to the target environment. You may include either &lt;code&gt;includedActions&lt;/code&gt; or &lt;code&gt;excludedActions&lt;/code&gt;, but not both. If neither are included, then all flag changes will be copied. | [optional] |
| **excluded_actions** | **Array&lt;String&gt;** | Optional list of the flag changes NOT to copy from the source environment to the target environment. You may include either &lt;code&gt;includedActions&lt;/code&gt; or &lt;code&gt;excludedActions&lt;/code&gt;, but not both. If neither are included, then all flag changes will be copied. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateCopyFlagConfigApprovalRequestRequest.new(
  comment: optional comment,
  description: copy flag settings to another environment,
  notify_member_ids: [&quot;1234a56b7c89d012345e678f&quot;],
  notify_team_keys: [&quot;example-reviewer-team&quot;],
  source: null,
  included_actions: [&quot;updateOn&quot;],
  excluded_actions: [&quot;updateOn&quot;]
)
```

