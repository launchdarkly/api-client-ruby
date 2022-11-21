# LaunchDarklyApi::IntegrationDeliveryConfigurationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_code** | **Integer** | The status code returned by the validation | [optional] |
| **error** | **String** |  | [optional] |
| **timestamp** | **Integer** |  | [optional] |
| **response_body** | **String** | JSON response to the validation request | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IntegrationDeliveryConfigurationResponse.new(
  status_code: 200,
  error: null,
  timestamp: null,
  response_body: null
)
```

