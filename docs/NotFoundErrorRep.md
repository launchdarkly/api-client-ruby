# LaunchDarklyApi::NotFoundErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::NotFoundErrorRep.new(
  code: not_found,
  message: resource not found
)
```

