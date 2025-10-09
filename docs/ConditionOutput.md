# LaunchDarklyApi::ConditionOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **kind** | **String** |  | [optional] |
| **_execution** | [**ExecutionOutput**](ExecutionOutput.md) |  |  |
| **schedule_kind** | **String** |  | [optional] |
| **execution_date** | **Integer** |  | [optional] |
| **wait_duration** | **Integer** |  | [optional] |
| **wait_duration_unit** | **String** |  | [optional] |
| **description** | **String** |  |  |
| **notify_member_ids** | **Array&lt;String&gt;** |  |  |
| **all_reviews** | [**Array&lt;ReviewOutput&gt;**](ReviewOutput.md) |  |  |
| **review_status** | **String** |  |  |
| **applied_date** | **Integer** |  | [optional] |
| **creation_config** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ConditionOutput.new(
  _id: null,
  kind: null,
  _execution: null,
  schedule_kind: null,
  execution_date: null,
  wait_duration: null,
  wait_duration_unit: null,
  description: null,
  notify_member_ids: null,
  all_reviews: null,
  review_status: null,
  applied_date: null,
  creation_config: null
)
```

