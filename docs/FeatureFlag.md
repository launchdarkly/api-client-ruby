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
**custom_properties** | [**CustomProperties**](CustomProperties.md) |  | [optional] 
**_links** | [**Links**](Links.md) |  | [optional] 
**_maintainer** | [**Member**](Member.md) |  | [optional] 
**environments** | [**Hash&lt;String, FeatureFlagConfig&gt;**](FeatureFlagConfig.md) |  | [optional] 


