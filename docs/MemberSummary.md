# LaunchDarklyApi::MemberSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_id** | **String** | The member&#39;s ID |  |
| **first_name** | **String** | The member&#39;s first name | [optional] |
| **last_name** | **String** | The member&#39;s last name | [optional] |
| **role** | **String** | The member&#39;s base role. If the member has no additional roles, this role will be in effect. |  |
| **email** | **String** | The member&#39;s email address |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MemberSummary.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/members/569f183514f4432160000007&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _id: 569f183514f4432160000007,
  first_name: Ariel,
  last_name: Flores,
  role: admin,
  email: ariel@acme.com
)
```

