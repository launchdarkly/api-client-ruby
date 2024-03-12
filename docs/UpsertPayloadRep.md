# LaunchDarklyApi::UpsertPayloadRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of default tags for each flag |  |
| **temporary** | **Boolean** | Whether the flag should be temporary by default |  |
| **boolean_defaults** | [**BooleanFlagDefaults**](BooleanFlagDefaults.md) |  |  |
| **default_client_side_availability** | [**DefaultClientSideAvailability**](DefaultClientSideAvailability.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UpsertPayloadRep.new(
  _links: null,
  tags: [&quot;tag-1&quot;,&quot;tag-2&quot;],
  temporary: true,
  boolean_defaults: null,
  default_client_side_availability: null
)
```

