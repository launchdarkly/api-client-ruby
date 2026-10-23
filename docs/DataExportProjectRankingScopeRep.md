# LaunchDarklyApi::DataExportProjectRankingScopeRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | The included usage source. |  |
| **dimension** | **String** | The ranked dimension. |  |
| **from** | **Integer** | Inclusive UTC range start in Unix milliseconds. |  |
| **to** | **Integer** | Exclusive UTC range end in Unix milliseconds. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DataExportProjectRankingScopeRep.new(
  source: null,
  dimension: null,
  from: null,
  to: null
)
```

