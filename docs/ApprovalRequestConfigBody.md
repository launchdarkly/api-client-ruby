# LaunchDarklyApi::ApprovalRequestConfigBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | A name that describes the changes you would like to apply to a feature flag configuration | 
**instructions** | [**SemanticPatchInstruction**](SemanticPatchInstruction.md) |  | 
**notify_member_ids** | **Array&lt;String&gt;** |  | 
**comment** | **String** | comment will be included in audit log item for change. | [optional] 
**execution_date** | **Integer** | Timestamp for when instructions will be executed | [optional] 
**operating_on_id** | **String** | ID of scheduled change to edit or delete | [optional] 


