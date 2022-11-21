# LaunchDarklyApi::Tokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;Token&gt;**](Token.md) | An array of access tokens | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Tokens.new(
  items: null,
  _links: null
)
```

