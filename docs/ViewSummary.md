# LaunchDarklyApi::ViewSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  | [optional] |
| **key** | **String** | The key of the view. |  |
| **name** | **String** | The human-readable name of the view. |  |
| **resource_summary** | [**ViewResourceSummary**](ViewResourceSummary.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewSummary.new(
  _links: null,
  key: null,
  name: null,
  resource_summary: null
)
```

