# LaunchDarklyApi::ExpandableApprovalRequestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of this approval request |  |
| **_version** | **Integer** | Version of the approval request |  |
| **creation_date** | **Integer** |  |  |
| **service_kind** | **String** |  |  |
| **requestor_id** | **String** | The ID of the member who requested the approval | [optional] |
| **description** | **String** | A human-friendly name for the approval request | [optional] |
| **review_status** | **String** | Current status of the review of this approval request |  |
| **all_reviews** | [**Array&lt;ReviewResponse&gt;**](ReviewResponse.md) | An array of individual reviews of this approval request |  |
| **notify_member_ids** | **Array&lt;String&gt;** | An array of member IDs. These members are notified to review the approval request. |  |
| **applied_date** | **Integer** |  | [optional] |
| **applied_by_member_id** | **String** | The member ID of the member who applied the approval request | [optional] |
| **applied_by_service_token_id** | **String** | The service token ID of the service token which applied the approval request | [optional] |
| **status** | **String** | Current status of the approval request |  |
| **instructions** | **Array&lt;Hash&gt;** |  |  |
| **conflicts** | [**Array&lt;Conflict&gt;**](Conflict.md) | Details on any conflicting approval requests |  |
| **_links** | **Hash&lt;String, Object&gt;** | The location and content type of related resources |  |
| **execution_date** | **Integer** |  | [optional] |
| **operating_on_id** | **String** | ID of scheduled change to edit or delete | [optional] |
| **integration_metadata** | [**IntegrationMetadata**](IntegrationMetadata.md) |  | [optional] |
| **source** | [**CopiedFromEnv**](CopiedFromEnv.md) |  | [optional] |
| **custom_workflow_metadata** | [**CustomWorkflowMeta**](CustomWorkflowMeta.md) |  | [optional] |
| **resource_id** | **String** | String representation of a resource | [optional] |
| **approval_settings** | [**ApprovalSettings**](ApprovalSettings.md) |  | [optional] |
| **project** | [**Project**](Project.md) |  | [optional] |
| **environments** | [**Array&lt;Environment&gt;**](Environment.md) | List of environments the approval impacts | [optional] |
| **flag** | [**ExpandedFlagRep**](ExpandedFlagRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandableApprovalRequestResponse.new(
  _id: 12ab3c45de678910abc12345,
  _version: 1,
  creation_date: null,
  service_kind: null,
  requestor_id: 12ab3c45de678910abc12345,
  description: example: request approval from someone,
  review_status: pending,
  all_reviews: null,
  notify_member_ids: [&quot;1234a56b7c89d012345e678f&quot;],
  applied_date: null,
  applied_by_member_id: 1234a56b7c89d012345e678f,
  applied_by_service_token_id: 1234a56b7c89d012345e678f,
  status: pending,
  instructions: null,
  conflicts: null,
  _links: null,
  execution_date: null,
  operating_on_id: 12ab3c45de678910abc12345,
  integration_metadata: null,
  source: null,
  custom_workflow_metadata: null,
  resource_id: null,
  approval_settings: null,
  project: null,
  environments: null,
  flag: null
)
```

