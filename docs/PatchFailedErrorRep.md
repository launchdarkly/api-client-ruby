# LaunchDarklyApi::PatchFailedErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specific error code encountered | [optional] |
| **message** | **String** | Description of the error | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchFailedErrorRep.new(
  code: patch_failed,
  message: Unprocessable entity. Could not apply patch.
)
```

