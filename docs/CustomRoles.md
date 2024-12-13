# LaunchDarklyApi::CustomRoles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **items** | [**Array&lt;CustomRole&gt;**](CustomRole.md) | An array of custom roles |  |
| **total_count** | **Integer** | The total number of custom roles | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomRoles.new(
  _links: null,
  items: null,
  total_count: null
)
```

