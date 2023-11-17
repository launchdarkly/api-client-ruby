# LaunchDarklyApi::CreateReleasePipelineInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The release pipeline description | [optional] |
| **key** | **String** | The unique identifier of this release pipeline |  |
| **name** | **String** | The name of the release pipeline |  |
| **phases** | [**Array&lt;CreatePhaseInput&gt;**](CreatePhaseInput.md) | A logical grouping of one or more environments that share attributes for rolling out changes |  |
| **tags** | **Array&lt;String&gt;** | A list of tags for this release pipeline | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateReleasePipelineInput.new(
  description: Standard pipeline to roll out to production,
  key: standard-pipeline,
  name: Standard Pipeline,
  phases: null,
  tags: [&quot;example-tag&quot;]
)
```

