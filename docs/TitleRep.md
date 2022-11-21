# LaunchDarklyApi::TitleRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

instance = LaunchDarklyApi::TitleRep.new(
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

