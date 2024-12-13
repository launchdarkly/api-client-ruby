# LaunchDarklyApi::Endpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headers** | [**Array&lt;HeaderItems&gt;**](HeaderItems.md) |  | [optional] |
| **hmac_signature** | [**HMACSignature**](HMACSignature.md) |  | [optional] |
| **method** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Endpoint.new(
  headers: null,
  hmac_signature: null,
  method: null,
  url: null
)
```

