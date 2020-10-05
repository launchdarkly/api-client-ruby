# LaunchDarklyApi::RelayProxyConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | [**Id**](Id.md) |  | 
**_creator** | [**Member**](Member.md) |  | 
**name** | **String** | A human-friendly name for the relay proxy configuration | 
**policy** | [**Array&lt;Policy&gt;**](Policy.md) |  | 
**full_key** | **String** | Full secret key. Only included if creating or resetting the relay proxy configuration | [optional] 
**display_key** | **String** | The last 4 digits of the unique secret key for this relay proxy configuration | 
**creation_date** | **Integer** | A unix epoch time in milliseconds specifying the creation time of this relay proxy configuration | 
**last_modified** | **Integer** | A unix epoch time in milliseconds specifying the last time this relay proxy configuration was modified | 


