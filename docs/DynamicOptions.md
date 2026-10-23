# LaunchDarklyApi::DynamicOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_unknown_value** | **Boolean** |  | [optional] |
| **endpoint** | [**Endpoint**](Endpoint.md) |  | [optional] |
| **filters** | [**Array&lt;DynamicOptionFiltersItems&gt;**](DynamicOptionFiltersItems.md) |  | [optional] |
| **parser** | [**DynamicOptionsParser**](DynamicOptionsParser.md) |  | [optional] |
| **source** | [**DynamicOptionsSource**](DynamicOptionsSource.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DynamicOptions.new(
  allow_unknown_value: null,
  endpoint: null,
  filters: null,
  parser: null,
  source: null
)
```

