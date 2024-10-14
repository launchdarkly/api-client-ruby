# LaunchDarklyApi::CreateReleaseInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **release_variation_id** | **String** | The variation id to release to across all phases | [optional] |
| **release_pipeline_key** | **String** | The key of the release pipeline to attach the flag to |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateReleaseInput.new(
  release_variation_id: null,
  release_pipeline_key: null
)
```

