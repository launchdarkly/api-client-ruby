# LaunchDarklyApi::CustomRolePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the custom role |  |
| **key** | **String** | The custom role key |  |
| **description** | **String** | Description of custom role | [optional] |
| **policy** | [**Array&lt;StatementPost&gt;**](StatementPost.md) |  |  |
| **base_permissions** | **String** |  | [optional] |
| **resource_category** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomRolePost.new(
  name: Ops team,
  key: role-key-123abc,
  description: An example role for members of the ops team,
  policy: null,
  base_permissions: null,
  resource_category: null
)
```

