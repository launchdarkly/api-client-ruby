# LaunchDarklyApi::AdaptiveTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **resource_kind** | [**AdaptiveTriggerResourceKind**](AdaptiveTriggerResourceKind.md) |  |  |
| **resource_key** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **trigger_source** | [**ObservabilityAlertSource**](ObservabilityAlertSource.md) |  |  |
| **task** | [**AdaptiveTriggerTask**](AdaptiveTriggerTask.md) |  |  |
| **created_at** | **Integer** |  |  |
| **updated_at** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AdaptiveTrigger.new(
  id: null,
  name: null,
  resource_kind: null,
  resource_key: null,
  enabled: null,
  trigger_source: null,
  task: null,
  created_at: null,
  updated_at: null
)
```

