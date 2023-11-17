# LaunchDarklyApi::ReleasePipelineCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ReleasePipeline&gt;**](ReleasePipeline.md) | An array of release pipelines |  |
| **total_count** | **Integer** | Total number of release pipelines |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleasePipelineCollection.new(
  items: null,
  total_count: 1
)
```

