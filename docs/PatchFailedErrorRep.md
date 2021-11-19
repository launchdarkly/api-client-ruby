# LaunchDarklyApi::PatchFailedErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PatchFailedErrorRep.new(
  code: patch_failed,
  message: could not apply patch
)
```

