# LaunchDarklyApi::AuditLogEventsHookCapabilityConfigRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statements** | [**Array&lt;Statement&gt;**](Statement.md) | The set of resources you wish to subscribe to audit log notifications for. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AuditLogEventsHookCapabilityConfigRep.new(
  statements: null
)
```

