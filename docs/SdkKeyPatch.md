# LaunchDarklyApi::SdkKeyPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | (Optional)The human-readable name of the SDK key. | [optional] |
| **description** | **String** | (Optional) The description of the SDK key. | [optional] |
| **expiry** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SdkKeyPatch.new(
  name: null,
  description: null,
  expiry: null
)
```

