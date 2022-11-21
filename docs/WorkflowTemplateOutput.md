# LaunchDarklyApi::WorkflowTemplateOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_key** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **_creation_date** | **Integer** |  |  |
| **_owner_id** | **String** |  |  |
| **_maintainer_id** | **String** |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **description** | **String** |  | [optional] |
| **stages** | [**Array&lt;StageOutput&gt;**](StageOutput.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::WorkflowTemplateOutput.new(
  _id: null,
  _key: null,
  name: null,
  _creation_date: null,
  _owner_id: null,
  _maintainer_id: null,
  _links: null,
  description: null,
  stages: null
)
```

