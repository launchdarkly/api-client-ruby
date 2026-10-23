# LaunchDarklyApi::AIConfigTargetingPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | A comment describing the change | [optional] |
| **environment_key** | **String** | The environment key |  |
| **instructions** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | The semantic patch instructions to apply |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargetingPatch.new(
  comment: null,
  environment_key: null,
  instructions: null
)
```

