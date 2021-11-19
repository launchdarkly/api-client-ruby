# LaunchDarklyApi::CustomWorkflowOutputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_version** | **Integer** |  |  |
| **_conflicts** | [**Array&lt;ConflictOutputRep&gt;**](ConflictOutputRep.md) |  |  |
| **_creation_date** | **Integer** |  |  |
| **_maintainer_id** | **String** |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **stages** | [**Array&lt;StageOutputRep&gt;**](StageOutputRep.md) |  | [optional] |
| **_execution** | [**ExecutionOutputRep**](ExecutionOutputRep.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomWorkflowOutputRep.new(
  _id: null,
  _version: null,
  _conflicts: null,
  _creation_date: null,
  _maintainer_id: null,
  _links: null,
  name: null,
  description: null,
  kind: null,
  stages: null,
  _execution: null
)
```

