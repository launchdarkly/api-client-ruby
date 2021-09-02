# LaunchDarklyApi::Token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **owner_id** | **String** |  |  |
| **member_id** | **String** |  |  |
| **_member** | [**MemberSummaryRep**](MemberSummaryRep.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **creation_date** | **Integer** |  |  |
| **last_modified** | **Integer** |  |  |
| **custom_role_ids** | **Array&lt;String&gt;** |  | [optional] |
| **inline_role** | [**Array&lt;StatementRep&gt;**](StatementRep.md) |  | [optional] |
| **role** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **service_token** | **Boolean** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **default_api_version** | **Integer** |  | [optional] |
| **last_used** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Token.new(
  _id: null,
  owner_id: null,
  member_id: null,
  _member: null,
  name: null,
  description: null,
  creation_date: null,
  last_modified: null,
  custom_role_ids: null,
  inline_role: null,
  role: reader,
  token: api-deadbeef-dead-beef-dead-beefdeadbeef,
  service_token: null,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/tokens&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/tokens/61095542756dba551110ae21&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  default_api_version: null,
  last_used: null
)
```

