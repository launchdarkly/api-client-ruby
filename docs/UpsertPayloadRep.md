# LaunchDarklyApi::UpsertPayloadRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  |  |
| **temporary** | **Boolean** |  |  |
| **default_client_side_availability** | [**DefaultClientSideAvailability**](DefaultClientSideAvailability.md) |  |  |
| **boolean_defaults** | [**BooleanFlagDefaults**](BooleanFlagDefaults.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UpsertPayloadRep.new(
  _links: null,
  tags: null,
  temporary: null,
  default_client_side_availability: null,
  boolean_defaults: null
)
```

