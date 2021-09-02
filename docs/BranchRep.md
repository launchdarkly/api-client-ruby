# LaunchDarklyApi::BranchRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **head** | **String** |  | [optional] |
| **update_sequence_id** | **Integer** |  | [optional] |
| **sync_time** | **Integer** |  | [optional] |
| **references** | [**Array&lt;ReferenceRep&gt;**](ReferenceRep.md) |  | [optional] |
| **_links** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BranchRep.new(
  name: null,
  head: null,
  update_sequence_id: null,
  sync_time: null,
  references: null,
  _links: null
)
```

