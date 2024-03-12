# LaunchDarklyApi::FlagEventRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The flag event ID |  |
| **project_id** | **String** | The project ID |  |
| **project_key** | **String** | The project key |  |
| **environment_id** | **String** | The environment ID | [optional] |
| **environment_key** | **String** | The environment key | [optional] |
| **flag_key** | **String** | The flag key |  |
| **event_type** | **String** |  |  |
| **event_time** | **Integer** |  |  |
| **description** | **String** | The event description |  |
| **audit_log_entry_id** | **String** | The audit log entry ID | [optional] |
| **member** | [**FlagEventMemberRep**](FlagEventMemberRep.md) |  | [optional] |
| **actions** | **Array&lt;String&gt;** | The resource actions | [optional] |
| **impact** | [**FlagEventImpactRep**](FlagEventImpactRep.md) |  |  |
| **experiments** | [**FlagEventExperimentCollection**](FlagEventExperimentCollection.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagEventRep.new(
  id: e3b2b0e0-9e9b-4c9a-8e9a-0e0e0e0e0e0e,
  project_id: 65baa44ecc4b5bce113bb4f7,
  project_key: default,
  environment_id: 65baa44ecc4b5bce113bb4f7,
  environment_key: production,
  flag_key: enable-new-payment-method,
  event_type: null,
  event_time: null,
  description: Targeting rule enabled,
  audit_log_entry_id: e3b2b0e0-9e9b-4c9a-8e9a-0e0e0e0e0e0e,
  member: null,
  actions: null,
  impact: null,
  experiments: null
)
```

