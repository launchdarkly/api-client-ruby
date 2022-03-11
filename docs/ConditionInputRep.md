# LaunchDarklyApi::ConditionInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_kind** | **String** |  | [optional] |
| **execution_date** | **Integer** |  | [optional] |
| **wait_duration** | **Integer** |  | [optional] |
| **wait_duration_unit** | **String** |  | [optional] |
| **execute_now** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **notify_member_ids** | **Array&lt;String&gt;** |  | [optional] |
| **kind** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ConditionInputRep.new(
  schedule_kind: null,
  execution_date: null,
  wait_duration: null,
  wait_duration_unit: null,
  execute_now: null,
  description: null,
  notify_member_ids: null,
  kind: null
)
```

