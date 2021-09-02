# LaunchDarklyApi::WebhookPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-readable name for your webhook | [optional] |
| **url** | **String** | The URL of the remote webhook |  |
| **secret** | **String** | If sign is true, and the secret attribute is omitted, LaunchDarkly automatically generates a secret for you. | [optional] |
| **statements** | [**Array&lt;StatementPost&gt;**](StatementPost.md) |  | [optional] |
| **sign** | **Boolean** | If sign is false, the webhook does not include a signature header, and the secret can be omitted. |  |
| **on** | **Boolean** | Whether or not this webhook is enabled. |  |
| **tags** | **Array&lt;String&gt;** | List of tags for this webhook | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::WebhookPost.new(
  name: Example hook,
  url: http://www.example.com,
  secret: frobozz,
  statements: null,
  sign: true,
  on: true,
  tags: []
)
```

