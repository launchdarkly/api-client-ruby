# LaunchDarklyApi::VariationSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | **Integer** |  |  |
| **null_rules** | **Integer** |  |  |
| **targets** | **Integer** |  |  |
| **context_targets** | **Integer** |  | [optional] |
| **is_fallthrough** | **Boolean** |  | [optional] |
| **is_off** | **Boolean** |  | [optional] |
| **rollout** | **Integer** |  | [optional] |
| **bucket_by** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::VariationSummary.new(
  rules: null,
  null_rules: null,
  targets: null,
  context_targets: null,
  is_fallthrough: null,
  is_off: null,
  rollout: null,
  bucket_by: null
)
```

