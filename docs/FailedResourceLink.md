# LaunchDarklyApi::FailedResourceLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_key** | **String** | The key of the resource that failed to link. |  |
| **environment_id** | **String** | Environment ID of the resource (only present for segments) | [optional] |
| **resource_type** | **String** | The type of the resource that failed to link. |  |
| **error_message** | **String** | The reason why linking this resource failed. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FailedResourceLink.new(
  resource_key: null,
  environment_id: null,
  resource_type: null,
  error_message: null
)
```

