# LaunchDarklyApi::FileRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** | The imported file name, including the extension | [optional] |
| **status** | **String** | The imported file status | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FileRep.new(
  filename: bigsegimport.csv,
  status: complete
)
```

