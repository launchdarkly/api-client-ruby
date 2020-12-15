# LaunchDarklyApi::Environment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_links** | [**Links**](Links.md) |  | [optional] 
**_id** | [**Id**](Id.md) |  | [optional] 
**key** | **String** | The key for the environment. | [optional] 
**name** | **String** | The name of the environment. | [optional] 
**api_key** | **String** | The SDK key for backend LaunchDarkly SDKs. | [optional] 
**mobile_key** | **String** | The SDK key for mobile LaunchDarkly SDKs. | [optional] 
**color** | **String** | The swatch color for the environment. | [optional] 
**default_ttl** | **Float** | The default TTL. | [optional] 
**secure_mode** | **BOOLEAN** | Determines if this environment is in safe mode. | [optional] 
**default_track_events** | **BOOLEAN** | Set to true to send detailed event information for new flags. | [optional] 
**tags** | **Array&lt;String&gt;** | An array of tags for this environment. | [optional] 
**require_comments** | **BOOLEAN** | Determines if this environment requires comments for flag and segment changes. | [optional] 
**confirm_changes** | **BOOLEAN** | Determines if this environment requires confirmation for flag and segment changes. | [optional] 
**approval_settings** | [**EnvironmentApprovalSettings**](EnvironmentApprovalSettings.md) |  | [optional] 


