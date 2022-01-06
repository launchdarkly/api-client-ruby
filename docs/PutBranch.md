# LaunchDarklyApi::PutBranch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The branch name |  |
| **head** | **String** | An ID representing the branch HEAD. For example, a commit SHA. |  |
| **update_sequence_id** | **Integer** | An optional ID used to prevent older data from overwriting newer data. If no sequence ID is included, the newly submitted data will always be saved. | [optional] |
| **sync_time** | **Integer** |  |  |
| **references** | [**Array&lt;ReferenceRep&gt;**](ReferenceRep.md) | An array of flag references found on the branch | [optional] |
| **commit_time** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PutBranch.new(
  name: main,
  head: a94a8fe5ccb19ba61c4c0873d391e987982fbbd3,
  update_sequence_id: 25,
  sync_time: null,
  references: null,
  commit_time: null
)
```

