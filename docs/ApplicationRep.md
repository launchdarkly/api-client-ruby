# LaunchDarklyApi::ApplicationRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flags** | [**ApplicationFlagCollectionRep**](ApplicationFlagCollectionRep.md) |  | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **_version** | **Integer** | Version of the application | [optional] |
| **auto_added** | **Boolean** | Whether the application was automatically created because it was included in a context when a LaunchDarkly SDK evaluated a feature flag, or was created through the LaunchDarkly UI or REST API. |  |
| **creation_date** | **Integer** |  | [optional] |
| **description** | **String** | The application description | [optional] |
| **key** | **String** | The unique identifier of this application |  |
| **kind** | **String** | To distinguish the kind of application |  |
| **_maintainer** | [**MaintainerRep**](MaintainerRep.md) |  | [optional] |
| **name** | **String** | The name of the application |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ApplicationRep.new(
  flags: null,
  _access: null,
  _links: null,
  _version: null,
  auto_added: true,
  creation_date: null,
  description: The LaunchDarkly Cafe app,
  key: com.launchdarkly.cafe,
  kind: mobile,
  _maintainer: null,
  name: LaunchDarklyCafe
)
```

