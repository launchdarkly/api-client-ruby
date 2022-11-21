# LaunchDarklyApi::CustomWorkflowOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of the workflow |  |
| **_version** | **Integer** | The version of the workflow |  |
| **_conflicts** | [**Array&lt;ConflictOutput&gt;**](ConflictOutput.md) | Any conflicts that are present in the workflow stages |  |
| **_creation_date** | **Integer** |  |  |
| **_maintainer_id** | **String** | The member ID of the maintainer of the workflow. Defaults to the workflow creator. |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **name** | **String** | The name of the workflow |  |
| **description** | **String** | A brief description of the workflow | [optional] |
| **kind** | **String** | The kind of workflow | [optional] |
| **stages** | [**Array&lt;StageOutput&gt;**](StageOutput.md) | The stages that make up the workflow. Each stage contains conditions and actions. | [optional] |
| **_execution** | [**ExecutionOutput**](ExecutionOutput.md) |  |  |
| **meta** | [**WorkflowTemplateMetadata**](WorkflowTemplateMetadata.md) |  | [optional] |
| **template_key** | **String** | For workflows being created from a workflow template, this value is the template&#39;s key | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomWorkflowOutput.new(
  _id: 12ab3c4d5ef1a2345bcde67f,
  _version: 1,
  _conflicts: null,
  _creation_date: null,
  _maintainer_id: 12ab3c45de678910abc12345,
  _links: null,
  name: Progressive rollout starting in two days,
  description: Turn flag on for 10% of users each day,
  kind: custom,
  stages: null,
  _execution: null,
  meta: null,
  template_key: example-workflow-template
)
```

