# LaunchDarklyApi::Webhooks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | Links to other resources within the API. Includes the URL and content type of those resources. |  |
| **items** | [**Array&lt;Webhook&gt;**](Webhook.md) | An array of webhooks |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Webhooks.new(
  _links: null,
  items: null
)
```

