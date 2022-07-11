# LaunchDarklyApi::OauthClientPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of your new LaunchDarkly OAuth 2.0 client. | [optional] |
| **redirect_uri** | **String** | The redirect URI for your new OAuth 2.0 application. This should be an absolute URL conforming with the standard HTTPS protocol. | [optional] |
| **description** | **String** | Description of your OAuth 2.0 client. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::OauthClientPost.new(
  name: null,
  redirect_uri: null,
  description: null
)
```

