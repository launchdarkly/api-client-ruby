# LaunchDarklyApi::CustomRoleSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The custom role&#39;s&#39; ID |  |
| **key** | **String** | The key of the custom role | [optional] |
| **name** | **String** | The name of the custom role | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomRoleSummary.new(
  _id: 507f1f77bcf86cd799439011,
  key: example-role,
  name: Example role,
  _links: null
)
```

