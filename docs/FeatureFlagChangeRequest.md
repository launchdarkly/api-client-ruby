# LaunchDarklyApi::FeatureFlagChangeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | [**Id**](Id.md) |  | [optional] 
**_version** | **Integer** |  | [optional] 
**creation_date** | **Integer** | A unix epoch time in milliseconds specifying the date the change request was requested | [optional] 
**requestor_id** | **String** | The id of the member that requested the change | [optional] 
**review_status** | [**FeatureFlagChangeRequestReviewStatus**](FeatureFlagChangeRequestReviewStatus.md) |  | [optional] 
**status** | **String** | | Name     | Description | | --------:| ----------- | | pending  | the feature flag change request has not been applied yet | | completed| the feature flag change request has been applied successfully | | failed   | the feature flag change request has been applied but the changes were not applied successfully |  | [optional] 
**applied_by_member_id** | **String** | The id of the member that applied the change request | [optional] 
**applied_date** | **Integer** | A unix epoch time in milliseconds specifying the date the change request was applied | [optional] 
**current_reviews_by_member_id** | [**FeatureFlagChangeRequestReview**](FeatureFlagChangeRequestReview.md) |  | [optional] 
**all_reviews** | [**Array&lt;FeatureFlagChangeRequestReview&gt;**](FeatureFlagChangeRequestReview.md) |  | [optional] 
**notify_member_ids** | **Array&lt;String&gt;** |  | [optional] 
**instructions** | [**SemanticPatchInstruction**](SemanticPatchInstruction.md) |  | [optional] 


