# LaunchDarklyApi::ExpiringTargetGetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ExpiringTarget&gt;**](ExpiringTarget.md) | A list of expiring targets |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpiringTargetGetResponse.new(
  items: null,
  _links: null
)
```

