# LaunchDarklyApi::UpdatePhaseStatusInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **audiences** | [**Array&lt;ReleaserAudienceConfigInput&gt;**](ReleaserAudienceConfigInput.md) | Extra configuration for audiences required upon phase initialization. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UpdatePhaseStatusInput.new(
  status: null,
  audiences: null
)
```

