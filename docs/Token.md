# LaunchDarklyApi::Token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **owner_id** | **String** |  |  |
| **member_id** | **String** |  |  |
| **_member** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **name** | **String** | A human-friendly name for the access token | [optional] |
| **description** | **String** | A description for the access token | [optional] |
| **creation_date** | **Integer** |  |  |
| **last_modified** | **Integer** |  |  |
| **custom_role_ids** | **Array&lt;String&gt;** | A list of custom role IDs to use as access limits for the access token | [optional] |
| **inline_role** | [**Array&lt;Statement&gt;**](Statement.md) | An array of policy statements, with three attributes: effect, resources, actions. May be used in place of a built-in or custom role. | [optional] |
| **role** | **String** | Built-in role for the token | [optional] |
| **token** | **String** | Last four characters of the token value | [optional] |
| **service_token** | **Boolean** | Whether this is a service token or a personal token | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **default_api_version** | **Integer** | The default API version for this token | [optional] |
| **last_used** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Token.new(
  _id: null,
  owner_id: null,
  member_id: null,
  _member: null,
  name: Example reader token,
  description: A reader token used in testing and examples,
  creation_date: null,
  last_modified: null,
  custom_role_ids: [],
  inline_role: [],
  role: reader,
  token: 1234,
  service_token: false,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/tokens&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/tokens/61095542756dba551110ae21&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  default_api_version: 20220603,
  last_used: null
)
```

