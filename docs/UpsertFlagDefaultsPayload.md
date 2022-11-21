# LaunchDarklyApi::UpsertFlagDefaultsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** |  |  |
| **temporary** | **Boolean** |  |  |
| **default_client_side_availability** | [**DefaultClientSideAvailability**](DefaultClientSideAvailability.md) |  |  |
| **boolean_defaults** | [**BooleanFlagDefaults**](BooleanFlagDefaults.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UpsertFlagDefaultsPayload.new(
  tags: null,
  temporary: null,
  default_client_side_availability: null,
  boolean_defaults: null
)
```

