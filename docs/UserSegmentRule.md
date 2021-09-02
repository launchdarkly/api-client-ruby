# LaunchDarklyApi::UserSegmentRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **clauses** | [**Array&lt;Clause&gt;**](Clause.md) |  |  |
| **weight** | **Integer** |  | [optional] |
| **bucket_by** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserSegmentRule.new(
  _id: null,
  clauses: null,
  weight: null,
  bucket_by: null
)
```

