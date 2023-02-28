# LaunchDarklyApi::UpsertFlagDefaultsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** | A list of default tags for each flag |  |
| **temporary** | **Boolean** | Whether the flag should be temporary by default |  |
| **default_client_side_availability** | [**DefaultClientSideAvailability**](DefaultClientSideAvailability.md) |  |  |
| **boolean_defaults** | [**BooleanFlagDefaults**](BooleanFlagDefaults.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UpsertFlagDefaultsPayload.new(
  tags: [&quot;tag-1&quot;,&quot;tag-2&quot;],
  temporary: true,
  default_client_side_availability: null,
  boolean_defaults: null
)
```

