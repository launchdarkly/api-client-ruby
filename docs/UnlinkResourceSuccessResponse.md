# LaunchDarklyApi::UnlinkResourceSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success_count** | **Integer** | The number of resources successfully unlinked. |  |
| **failure_count** | **Integer** | The number of resources that failed to unlink. |  |
| **failed_resources** | [**Array&lt;FailedResourceLink&gt;**](FailedResourceLink.md) | Details of resources that failed to unlink. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UnlinkResourceSuccessResponse.new(
  success_count: null,
  failure_count: null,
  failed_resources: null
)
```

