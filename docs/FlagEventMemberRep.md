# LaunchDarklyApi::FlagEventMemberRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The member ID |  |
| **email** | **String** | The member email |  |
| **first_name** | **String** | The member first name |  |
| **last_name** | **String** | The member last name |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagEventMemberRep.new(
  id: 65baa44ecc4b5bce113bb4f7,
  email: test@launchdarkly.com,
  first_name: null,
  last_name: null
)
```

