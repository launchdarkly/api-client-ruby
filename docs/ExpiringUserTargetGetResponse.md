# LaunchDarklyApi::ExpiringUserTargetGetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ExpiringUserTargetItem&gt;**](ExpiringUserTargetItem.md) | An array of expiring user targets |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringUserTargetGetResponse.new(
  items: null,
  _links: null
)
```

