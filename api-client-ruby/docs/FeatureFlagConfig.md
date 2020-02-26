# LaunchDarklyApi::FeatureFlagConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**on** | **BOOLEAN** |  | [optional] 
**archived** | **BOOLEAN** |  | [optional] 
**salt** | **String** |  | [optional] 
**sel** | **String** |  | [optional] 
**last_modified** | **Integer** |  | [optional] 
**version** | **Integer** |  | [optional] 
**targets** | [**Array&lt;Target&gt;**](Target.md) |  | [optional] 
**rules** | [**Array&lt;Rule&gt;**](Rule.md) |  | [optional] 
**fallthrough** | [**Fallthrough**](Fallthrough.md) |  | [optional] 
**off_variation** | **Integer** |  | [optional] 
**prerequisites** | [**Array&lt;Prerequisite&gt;**](Prerequisite.md) |  | [optional] 
**track_events** | **BOOLEAN** | Set to true to send detailed event information for this flag. | [optional] 
**track_events_fallthrough** | **BOOLEAN** | Set to true to send detailed event information when targeting is enabled but no individual targeting rule is matched. | [optional] 


