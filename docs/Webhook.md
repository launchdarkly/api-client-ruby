# LaunchDarklyApi::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **url** | **String** |  |  |
| **secret** | **String** |  | [optional] |
| **statements** | [**Array&lt;StatementRep&gt;**](StatementRep.md) |  | [optional] |
| **on** | **Boolean** |  |  |
| **tags** | **Array&lt;String&gt;** |  |  |
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
  tags: [],
  _access: null
)
```

