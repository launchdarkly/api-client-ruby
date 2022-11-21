# LaunchDarklyApi::TeamImportsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;MemberImportItem&gt;**](MemberImportItem.md) | An array of details about the members requested to be added to this team | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamImportsRep.new(
  items: null
)
```

