# LaunchDarklyApi::TokenDataRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **ending** | **String** |  | [optional] |
| **service_token** | **Boolean** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TokenDataRep.new(
  _links: null,
  _id: null,
  name: null,
  ending: null,
  service_token: null
)
```

