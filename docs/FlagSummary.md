# LaunchDarklyApi::FlagSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variations** | [**Hash&lt;String, VariationSummary&gt;**](VariationSummary.md) |  |  |
| **prerequisites** | **Integer** | The number of prerequisites for this flag |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagSummary.new(
  variations: null,
  prerequisites: null
)
```

