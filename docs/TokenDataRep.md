# LaunchDarklyApi::TokenDataRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_id** | **String** |  | [optional] |
| **name** | **String** | The name of the token | [optional] |
| **ending** | **String** | The last few characters of the token | [optional] |
| **service_token** | **Boolean** | Whether this is a service token | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TokenDataRep.new(
  _links: null,
  _id: null,
  name: DevOps token,
  ending: 2345,
  service_token: false
)
```

