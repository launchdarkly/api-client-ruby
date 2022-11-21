# LaunchDarklyApi::AuthorizedAppDataRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_id** | **String** | The ID of the authorized application | [optional] |
| **is_scim** | **Boolean** | Whether the application is authorized through SCIM | [optional] |
| **name** | **String** | The authorized application name | [optional] |
| **maintainer_name** | **String** | The name of the maintainer for this authorized application | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AuthorizedAppDataRep.new(
  _links: null,
  _id: null,
  is_scim: null,
  name: null,
  maintainer_name: null
)
```

