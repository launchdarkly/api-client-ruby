# LaunchDarklyApi::CreateAdaptiveTriggerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **resource_kind** | [**AdaptiveTriggerResourceKind**](AdaptiveTriggerResourceKind.md) |  |  |
| **resource_key** | **String** |  |  |
| **trigger_source** | [**ObservabilityAlertSource**](ObservabilityAlertSource.md) |  |  |
| **task** | [**AdaptiveTriggerTask**](AdaptiveTriggerTask.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateAdaptiveTriggerRequest.new(
  name: null,
  resource_kind: null,
  resource_key: null,
  trigger_source: null,
  task: null
)
```

