# LaunchDarklyApi::Environments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_count** | **Integer** | The number of environments returned | [optional] |
| **items** | [**Array&lt;Environment&gt;**](Environment.md) | An array of environments |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Environments.new(
  _links: null,
  total_count: 2,
  items: null
)
```

