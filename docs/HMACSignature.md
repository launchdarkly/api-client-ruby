# LaunchDarklyApi::HMACSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **header_name** | **String** |  | [optional] |
| **hmac_secret_form_variable_key** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::HMACSignature.new(
  header_name: null,
  hmac_secret_form_variable_key: null
)
```

