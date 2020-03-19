# LaunchDarklyApi::FeatureFlag

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** |  | [optional] 
**name** | **String** | Name of the feature flag. | [optional] 
**description** | **String** | Description of the feature flag. | [optional] 
**kind** | **String** | Whether the feature flag is a boolean flag or multivariate. | [optional] 
**creation_date** | **Float** | A unix epoch time in milliseconds specifying the creation time of this flag. | [optional] 
**include_in_snippet** | **BOOLEAN** |  | [optional] 
**temporary** | **BOOLEAN** | Whether or not this flag is temporary. | [optional] 
**maintainer_id** | **String** | The ID of the member that should maintain this flag. | [optional] 
**tags** | **Array&lt;String&gt;** | An array of tags for this feature flag. | [optional] 
**variations** | [**Array&lt;Variation&gt;**](Variation.md) | The variations for this feature flag. | [optional] 
**goal_ids** | **Array&lt;String&gt;** | An array goals from all environments associated with this feature flag | [optional] 
**_version** | **Integer** |  | [optional] 
**custom_properties** | [**Hash&lt;String, CustomProperty&gt;**](CustomProperty.md) | A mapping of keys to CustomProperty entries. | [optional] 
**_links** | [**Links**](Links.md) |  | [optional] 
**_maintainer** | [**Member**](Member.md) |  | [optional] 
**environments** | [**Hash&lt;String, FeatureFlagConfig&gt;**](FeatureFlagConfig.md) |  | [optional] 
**archived_date** | **Float** | A unix epoch time in milliseconds specifying the archived time of this flag. | [optional] 
**archived** | **BOOLEAN** | Whether or not this flag is archived. | [optional] 
**defaults** | [**Defaults**](Defaults.md) |  | [optional] 


