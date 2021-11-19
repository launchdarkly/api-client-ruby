# LaunchDarklyApi::ForbiddenErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ForbiddenErrorRep.new(
  code: forbidden,
  message: access to the requested resource was denied
)
```

