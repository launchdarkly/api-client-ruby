# LaunchDarklyApi::InvalidRequestErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InvalidRequestErrorRep.new(
  code: invalid_request,
  message: invalid request body
)
```

