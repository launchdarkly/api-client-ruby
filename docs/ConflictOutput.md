# LaunchDarklyApi::ConflictOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage_id** | **String** | The stage ID |  |
| **message** | **String** | Message about the conflict |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ConflictOutput.new(
  stage_id: 12ab3c4d5ef1a2345bcde67f,
  message: null
)
```

