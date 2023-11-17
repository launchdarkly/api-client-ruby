# LaunchDarklyApi::CreateApplicationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The application description | [optional] |
| **key** | **String** | The unique identifier of this application |  |
| **kind** | **String** | To distinguish the kind of application |  |
| **maintainer** | [**MaintainerInput**](MaintainerInput.md) |  | [optional] |
| **name** | **String** | The name of the application |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateApplicationInput.new(
  description: The LaunchDarkly Cafe app,
  key: com.launchdarkly.cafe,
  kind: mobile,
  maintainer: null,
  name: LaunchDarklyCafe
)
```

