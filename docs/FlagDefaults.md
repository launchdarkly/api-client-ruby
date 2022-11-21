# LaunchDarklyApi::FlagDefaults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **temporary** | **Boolean** |  | [optional] |
| **default_client_side_availability** | [**ClientSideAvailability**](ClientSideAvailability.md) |  | [optional] |
| **boolean_defaults** | [**BooleanDefaults**](BooleanDefaults.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagDefaults.new(
  tags: null,
  temporary: null,
  default_client_side_availability: null,
  boolean_defaults: null
)
```

