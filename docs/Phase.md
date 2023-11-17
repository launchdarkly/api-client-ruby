# LaunchDarklyApi::Phase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The phase ID |  |
| **audiences** | [**Array&lt;Audience&gt;**](Audience.md) |  |  |
| **name** | **String** | The release phase name |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Phase.new(
  id: 1234a56b7c89d012345e678f,
  audiences: null,
  name: Phase 1 - Testing
)
```

