# LaunchDarklyApi::ParentResourceRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **name** | **String** | The name of the parent resource | [optional] |
| **resource** | **String** | The parent&#39;s resource specifier | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ParentResourceRep.new(
  _links: null,
  name: null,
  resource: null
)
```

