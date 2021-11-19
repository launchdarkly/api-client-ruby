# LaunchDarklyApi::ConditionInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_date** | **Integer** |  | [optional] |
| **execute_now** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **notify_member_ids** | **Array&lt;String&gt;** |  | [optional] |
| **kind** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ConditionInputRep.new(
  execution_date: null,
  execute_now: null,
  description: null,
  notify_member_ids: null,
  kind: null
)
```

