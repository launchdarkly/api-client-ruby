# LaunchDarklyApi::Rule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **variation** | **Integer** |  | [optional] |
| **rollout** | [**Rollout**](Rollout.md) |  | [optional] |
| **clauses** | [**Array&lt;Clause&gt;**](Clause.md) |  |  |
| **track_events** | **Boolean** |  |  |
| **description** | **String** |  | [optional] |
| **ref** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Rule.new(
  _id: null,
  variation: null,
  rollout: null,
  clauses: null,
  track_events: null,
  description: null,
  ref: null
)
```

