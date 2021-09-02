# LaunchDarklyApi::TitleRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

instance = LaunchDarklyApi::TitleRep.new(
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

