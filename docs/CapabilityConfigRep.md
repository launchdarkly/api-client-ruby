# LaunchDarklyApi::CapabilityConfigRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approvals** | [**ApprovalsCapabilityConfig**](ApprovalsCapabilityConfig.md) |  | [optional] |
| **audit_log_events_hook** | [**AuditLogEventsHookCapabilityConfigRep**](AuditLogEventsHookCapabilityConfigRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CapabilityConfigRep.new(
  approvals: null,
  audit_log_events_hook: null
)
```

