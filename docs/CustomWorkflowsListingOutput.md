# LaunchDarklyApi::CustomWorkflowsListingOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;CustomWorkflowOutput&gt;**](CustomWorkflowOutput.md) | An array of workflows |  |
| **total_count** | **Integer** | Total number of workflows |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomWorkflowsListingOutput.new(
  items: null,
  total_count: 1,
  _links: null
)
```

