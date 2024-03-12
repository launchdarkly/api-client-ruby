# LaunchDarklyApi::FlagReferenceRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project key |  |
| **flag_key** | **String** | The flag key |  |
| **references_added** | **Integer** | The number of references added |  |
| **references_removed** | **Integer** | The number of references removed |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagReferenceRep.new(
  project_key: default,
  flag_key: enable-new-payment-structure,
  references_added: 2,
  references_removed: 5
)
```

