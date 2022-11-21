# LaunchDarklyApi::MemberDataRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_id** | **String** | The member ID | [optional] |
| **email** | **String** | The member email | [optional] |
| **first_name** | **String** | The member first name | [optional] |
| **last_name** | **String** | The member last name | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MemberDataRep.new(
  _links: null,
  _id: 507f1f77bcf86cd799439011,
  email: bob@loblaw.com,
  first_name: Bob,
  last_name: Loblaw
)
```

