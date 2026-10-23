# LaunchDarklyApi::AuthorizedAppDataRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_id** | **String** | The ID of the authorized application | [optional] |
| **is_scim** | **Boolean** | Whether the application is authorized through SCIM | [optional] |
| **name** | **String** | The authorized application name | [optional] |
| **icon_url** | **String** | The icon for this authorized application, if it has one | [optional] |
| **maintainer_name** | **String** | The name of the maintainer for this authorized application | [optional] |
| **is_agent** | **Boolean** | Whether this application acted on behalf of the member in this entry. When true, the member and the application are co-authors of the change rather than the member acting alone. Omitted for applications that act on their own. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AuthorizedAppDataRep.new(
  _links: null,
  _id: null,
  is_scim: null,
  name: null,
  icon_url: null,
  maintainer_name: null,
  is_agent: true
)
```

