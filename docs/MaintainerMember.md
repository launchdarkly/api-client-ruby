# LaunchDarklyApi::MaintainerMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The member ID |  |
| **email** | **String** | The member email address |  |
| **first_name** | **String** | The member first name | [optional] |
| **last_name** | **String** | The member last name | [optional] |
| **role** | **String** | The member role |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MaintainerMember.new(
  _id: null,
  email: null,
  first_name: null,
  last_name: null,
  role: null
)
```

