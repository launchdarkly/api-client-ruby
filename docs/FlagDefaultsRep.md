# LaunchDarklyApi::FlagDefaultsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of default tags for each flag | [optional] |
| **temporary** | **Boolean** | Whether the flag should be temporary by default | [optional] |
| **default_client_side_availability** | [**ClientSideAvailability**](ClientSideAvailability.md) |  | [optional] |
| **boolean_defaults** | [**BooleanDefaults**](BooleanDefaults.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagDefaultsRep.new(
  _links: null,
  tags: [&quot;tag-1&quot;,&quot;tag-2&quot;],
  temporary: true,
  default_client_side_availability: null,
  boolean_defaults: null
)
```

