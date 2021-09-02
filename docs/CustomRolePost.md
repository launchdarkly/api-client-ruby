# LaunchDarklyApi::CustomRolePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the custom role |  |
| **key** | **String** | The custom role key |  |
| **description** | **String** | Description of custom role | [optional] |
| **policy** | [**Array&lt;StatementPost&gt;**](StatementPost.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomRolePost.new(
  name: null,
  key: null,
  description: null,
  policy: null
)
```

