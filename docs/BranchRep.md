# LaunchDarklyApi::BranchRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The branch name |  |
| **head** | **String** | An ID representing the branch HEAD. For example, a commit SHA. |  |
| **update_sequence_id** | **Integer** | An optional ID used to prevent older data from overwriting newer data | [optional] |
| **sync_time** | **Integer** |  |  |
| **references** | [**Array&lt;ReferenceRep&gt;**](ReferenceRep.md) | An array of flag references found on the branch | [optional] |
| **_links** | **Hash&lt;String, Object&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BranchRep.new(
  name: main,
  head: a94a8fe5ccb19ba61c4c0873d391e987982fbbd3,
  update_sequence_id: 25,
  sync_time: null,
  references: null,
  _links: null
)
```

