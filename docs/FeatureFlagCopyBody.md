# LaunchDarklyApi::FeatureFlagCopyBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | [**FeatureFlagCopyObject**](FeatureFlagCopyObject.md) |  | [optional] 
**target** | [**FeatureFlagCopyObject**](FeatureFlagCopyObject.md) |  | [optional] 
**comment** | **String** | comment will be included in audit log item for change. | [optional] 
**included_actions** | [**Array&lt;CopyActions&gt;**](CopyActions.md) | Define the parts of the flag configuration that will be copied. | [optional] 
**excluded_actions** | [**Array&lt;CopyActions&gt;**](CopyActions.md) | Define the parts of the flag configuration that will not be copied. | [optional] 


