# LaunchDarklyApi::ViewLinkedResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ParentAndSelfLinks**](ParentAndSelfLinks.md) |  |  |
| **resource_key** | **String** | Key of the resource (flag, segment, AI config or metric) |  |
| **environment_id** | **String** | Environment ID of the resource (only present for segments) | [optional] |
| **environment_key** | **String** | Environment Key of the resource (only present for segments) | [optional] |
| **resource_type** | **String** |  |  |
| **linked_at** | **Integer** |  |  |
| **resource_details** | [**ViewLinkedResourceDetails**](ViewLinkedResourceDetails.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewLinkedResource.new(
  _links: null,
  resource_key: null,
  environment_id: null,
  environment_key: null,
  resource_type: null,
  linked_at: null,
  resource_details: null
)
```

