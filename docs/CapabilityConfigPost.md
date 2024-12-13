# LaunchDarklyApi::CapabilityConfigPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approvals** | [**ApprovalsCapabilityConfig**](ApprovalsCapabilityConfig.md) |  | [optional] |
| **audit_log_events_hook** | [**AuditLogEventsHookCapabilityConfigPost**](AuditLogEventsHookCapabilityConfigPost.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CapabilityConfigPost.new(
  approvals: null,
  audit_log_events_hook: null
)
```

