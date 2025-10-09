# LaunchDarklyApi::LinkResourceSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success_count** | **Integer** | The number of resources successfully linked. |  |
| **failure_count** | **Integer** | The number of resources that failed to link. |  |
| **linked_resources** | [**ViewLinkedResources**](ViewLinkedResources.md) |  | [optional] |
| **failed_resources** | [**Array&lt;FailedResourceLink&gt;**](FailedResourceLink.md) | Details of resources that failed to link. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LinkResourceSuccessResponse.new(
  success_count: null,
  failure_count: null,
  linked_resources: null,
  failed_resources: null
)
```

