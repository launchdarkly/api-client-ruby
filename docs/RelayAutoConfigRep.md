# LaunchDarklyApi::RelayAutoConfigRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_creator** | [**MemberSummaryRep**](MemberSummaryRep.md) |  | [optional] |
| **_access** | [**AccessRep**](AccessRep.md) |  | [optional] |
| **name** | **String** |  |  |
| **policy** | [**Array&lt;StatementRep&gt;**](StatementRep.md) |  |  |
| **full_key** | **String** |  |  |
| **display_key** | **String** |  |  |
| **creation_date** | **Integer** |  |  |
| **last_modified** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RelayAutoConfigRep.new(
  _id: null,
  _creator: null,
  _access: null,
  name: null,
  policy: null,
  full_key: null,
  display_key: null,
  creation_date: null,
  last_modified: null
)
```

