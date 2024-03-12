# LaunchDarklyApi::FlagReferenceCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The total number of flag references |  |
| **items** | [**Array&lt;FlagReferenceRep&gt;**](FlagReferenceRep.md) | A list of flag references |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagReferenceCollectionRep.new(
  total_count: 25,
  items: null
)
```

