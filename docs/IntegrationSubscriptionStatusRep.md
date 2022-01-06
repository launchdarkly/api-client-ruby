# LaunchDarklyApi::IntegrationSubscriptionStatusRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success_count** | **Integer** |  | [optional] |
| **last_success** | **Integer** |  | [optional] |
| **last_error** | **Integer** |  | [optional] |
| **error_count** | **Integer** |  | [optional] |
| **errors** | [**Array&lt;IntegrationStatusRep&gt;**](IntegrationStatusRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IntegrationSubscriptionStatusRep.new(
  success_count: null,
  last_success: null,
  last_error: null,
  error_count: null,
  errors: null
)
```

