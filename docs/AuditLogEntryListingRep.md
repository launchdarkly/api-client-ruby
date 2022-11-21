# LaunchDarklyApi::AuditLogEntryListingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_id** | **String** | The ID of the audit log entry |  |
| **_account_id** | **String** | The ID of the account to which this audit log entry belongs |  |
| **date** | **Integer** |  |  |
| **accesses** | [**Array&lt;ResourceAccess&gt;**](ResourceAccess.md) | Details on the actions performed and resources acted on in this audit log entry |  |
| **kind** | **String** |  |  |
| **name** | **String** | The name of the resource this audit log entry refers to |  |
| **description** | **String** | Description of the change recorded in the audit log entry |  |
| **short_description** | **String** | Shorter version of the change recorded in the audit log entry |  |
| **comment** | **String** | Optional comment for the audit log entry | [optional] |
| **subject** | [**SubjectDataRep**](SubjectDataRep.md) |  | [optional] |
| **member** | [**MemberDataRep**](MemberDataRep.md) |  | [optional] |
| **token** | [**TokenDataRep**](TokenDataRep.md) |  | [optional] |
| **app** | [**AuthorizedAppDataRep**](AuthorizedAppDataRep.md) |  | [optional] |
| **title_verb** | **String** | The action and resource recorded in this audit log entry | [optional] |
| **title** | **String** | A description of what occurred, in the format &lt;code&gt;member&lt;/code&gt; &lt;code&gt;titleVerb&lt;/code&gt; &lt;code&gt;target&lt;/code&gt; | [optional] |
| **target** | [**TargetResourceRep**](TargetResourceRep.md) |  | [optional] |
| **parent** | [**ParentResourceRep**](ParentResourceRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AuditLogEntryListingRep.new(
  _links: null,
  _id: 1234a56b7c89d012345e678f,
  _account_id: 1234a56b7c89d012345e678f,
  date: null,
  accesses: null,
  kind: null,
  name: Example feature flag,
  description: Example, turning on the flag for testing,
  short_description: Example, turning on the flag,
  comment: This is an automated test,
  subject: null,
  member: null,
  token: null,
  app: null,
  title_verb: turned on the flag,
  title: null,
  target: null,
  parent: null
)
```

