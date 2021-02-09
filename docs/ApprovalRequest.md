# LaunchDarklyApi::ApprovalRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | [**Id**](Id.md) |  | [optional] 
**_version** | **Integer** |  | [optional] 
**creation_date** | **Integer** | A unix epoch time in milliseconds specifying the date the approval request was requested | [optional] 
**requestor_id** | **String** | The id of the member that requested the change | [optional] 
**review_status** | [**ApprovalRequestReviewStatus**](ApprovalRequestReviewStatus.md) |  | [optional] 
**status** | **String** | | Name     | Description | | --------:| ----------- | | pending  | the approval request has not been applied yet | | completed| the approval request has been applied successfully | | failed   | the approval request has been applied but the changes were not applied successfully |  | [optional] 
**applied_by_member_id** | **String** | The id of the member that applied the approval request | [optional] 
**applied_date** | **Integer** | A unix epoch time in milliseconds specifying the date the approval request was applied | [optional] 
**all_reviews** | [**Array&lt;ApprovalRequestReview&gt;**](ApprovalRequestReview.md) |  | [optional] 
**notify_member_ids** | **Array&lt;String&gt;** |  | [optional] 
**instructions** | [**SemanticPatchInstruction**](SemanticPatchInstruction.md) |  | [optional] 


