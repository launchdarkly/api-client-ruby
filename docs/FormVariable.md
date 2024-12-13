# LaunchDarklyApi::FormVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **placeholder** | **String** |  | [optional] |
| **is_optional** | **Boolean** |  | [optional] |
| **default_value** | **Object** |  | [optional] |
| **allowed_values** | **Array&lt;String&gt;** |  | [optional] |
| **dynamic_options** | [**DynamicOptions**](DynamicOptions.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FormVariable.new(
  key: null,
  name: null,
  type: null,
  description: null,
  placeholder: null,
  is_optional: null,
  default_value: null,
  allowed_values: null,
  dynamic_options: null
)
```

