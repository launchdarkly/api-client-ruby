# LaunchDarklyApi::UserSegment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | Unique identifier for the user segment. | 
**name** | **String** | Name of the user segment. | 
**description** | **String** | Description of the user segment. | [optional] 
**tags** | **Array&lt;String&gt;** | An array of tags for this user segment. | [optional] 
**creation_date** | **Integer** | A unix epoch time in milliseconds specifying the creation time of this flag. | 
**included** | **Array&lt;String&gt;** | An array of user keys that are included in this segment. | [optional] 
**excluded** | **Array&lt;String&gt;** | An array of user keys that should not be included in this segment, unless they are also listed in \&quot;included\&quot;. | [optional] 
**rules** | [**Array&lt;UserSegmentRule&gt;**](UserSegmentRule.md) | An array of rules that can cause a user to be included in this segment. | [optional] 
**version** | **Integer** |  | [optional] 
**_links** | [**Links**](Links.md) |  | [optional] 
**_flags** | [**Array&lt;FlagListItem&gt;**](FlagListItem.md) |  | [optional] 


