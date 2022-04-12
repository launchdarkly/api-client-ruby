# LaunchDarklyApi::FlagConfigApprovalRequestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_version** | **Integer** |  |  |
| **creation_date** | **Integer** |  |  |
| **service_kind** | **String** |  |  |
| **requestor_id** | **String** |  | [optional] |
| **description** | **String** | A human-friendly name for the approval request | [optional] |
| **review_status** | **String** |  |  |
| **all_reviews** | [**Array&lt;ReviewResponse&gt;**](ReviewResponse.md) |  |  |
| **notify_member_ids** | **Array&lt;String&gt;** | An array of member IDs. These members are notified to review the approval request. |  |
| **applied_date** | **Integer** |  | [optional] |
| **applied_by_member_id** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **instructions** | **Array&lt;Object&gt;** |  |  |
| **conflicts** | [**Array&lt;Conflict&gt;**](Conflict.md) |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **execution_date** | **Integer** |  | [optional] |
| **operating_on_id** | **String** | ID of scheduled change to edit or delete | [optional] |
| **integration_metadata** | [**IntegrationMetadata**](IntegrationMetadata.md) |  | [optional] |
| **source** | [**CopiedFromEnv**](CopiedFromEnv.md) |  | [optional] |
| **custom_workflow_metadata** | [**CustomWorkflowMeta**](CustomWorkflowMeta.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagConfigApprovalRequestResponse.new(
  _id: null,
  _version: null,
  creation_date: null,
  service_kind: null,
  requestor_id: null,
  description: null,
  review_status: null,
  all_reviews: null,
  notify_member_ids: null,
  applied_date: null,
  applied_by_member_id: null,
  status: null,
  instructions: null,
  conflicts: null,
  _links: null,
  execution_date: null,
  operating_on_id: null,
  integration_metadata: null,
  source: null,
  custom_workflow_metadata: null
)
```

