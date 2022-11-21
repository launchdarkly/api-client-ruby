# LaunchDarklyApi::FlagDefaultsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **temporary** | **Boolean** |  | [optional] |
| **default_client_side_availability** | [**ClientSideAvailability**](ClientSideAvailability.md) |  | [optional] |
| **boolean_defaults** | [**BooleanDefaults**](BooleanDefaults.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagDefaultsRep.new(
  _links: null,
  tags: null,
  temporary: null,
  default_client_side_availability: null,
  boolean_defaults: null
)
```

