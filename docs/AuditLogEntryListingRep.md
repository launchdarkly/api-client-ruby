# LaunchDarklyApi::AuditLogEntryListingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_id** | **String** |  |  |
| **_account_id** | **String** |  |  |
| **date** | **Integer** |  |  |
| **accesses** | [**Array&lt;ResourceAccess&gt;**](ResourceAccess.md) |  |  |
| **kind** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **short_description** | **String** |  |  |
| **comment** | **String** |  | [optional] |
| **subject** | [**SubjectDataRep**](SubjectDataRep.md) |  | [optional] |
| **member** | [**MemberDataRep**](MemberDataRep.md) |  | [optional] |
| **token** | [**TokenDataRep**](TokenDataRep.md) |  | [optional] |
| **app** | [**AuthorizedAppDataRep**](AuthorizedAppDataRep.md) |  | [optional] |
| **title_verb** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **target** | [**TargetResourceRep**](TargetResourceRep.md) |  | [optional] |
| **parent** | [**ParentResourceRep**](ParentResourceRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AuditLogEntryListingRep.new(
  _links: null,
  _id: null,
  _account_id: null,
  date: null,
  accesses: null,
  kind: null,
  name: null,
  description: null,
  short_description: null,
  comment: null,
  subject: null,
  member: null,
  token: null,
  app: null,
  title_verb: null,
  title: null,
  target: null,
  parent: null
)
```

