# LaunchDarklyApi::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | Links to other resources within the API. Includes the URL and content type of those resources. |  |
| **_id** | **String** | The ID of this webhook |  |
| **name** | **String** | A human-readable name for this webhook | [optional] |
| **url** | **String** | The URL to which LaunchDarkly sends an HTTP POST payload for this webhook |  |
| **secret** | **String** | The secret for this webhook | [optional] |
| **statements** | [**Array&lt;Statement&gt;**](Statement.md) | Represents a Custom role policy, defining a resource kinds filter the webhook responds to. | [optional] |
| **on** | **Boolean** | Whether or not this webhook is enabled |  |
| **tags** | **Array&lt;String&gt;** | List of tags for this webhook |  |
| **_access** | [**Access**](Access.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Webhook.new(
  _links: null,
  _id: 57be1db38b75bf0772d11384,
  name: Example hook,
  url: http://www.example.com,
  secret: frobozz,
  statements: null,
  on: true,
  tags: [&quot;examples&quot;],
  _access: null
)
```

