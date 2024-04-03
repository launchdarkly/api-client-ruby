# LaunchDarklyApi::ReleasePhase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The phase ID |  |
| **_name** | **String** | The release phase name |  |
| **complete** | **Boolean** | Whether this phase is complete |  |
| **_creation_date** | **Integer** |  |  |
| **_completion_date** | **Integer** |  | [optional] |
| **_completed_by** | [**CompletedBy**](CompletedBy.md) |  | [optional] |
| **_audiences** | [**Array&lt;ReleaseAudience&gt;**](ReleaseAudience.md) | A logical grouping of one or more environments that share attributes for rolling out changes |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleasePhase.new(
  _id: 1234a56b7c89d012345e678f,
  _name: Phase 1 - Testing,
  complete: true,
  _creation_date: null,
  _completion_date: null,
  _completed_by: null,
  _audiences: null
)
```

