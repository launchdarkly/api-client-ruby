# LaunchDarklyApi::MemberSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_id** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **role** | **String** |  |  |
| **email** | **String** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MemberSummary.new(
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/members/569f183514f4432160000007&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _id: 569f183514f4432160000007,
  first_name: An,
  last_name: Example,
  role: owner,
  email: a.example@example.com
)
```

