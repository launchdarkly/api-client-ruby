# LaunchDarklyApi::Token

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_links** | [**Links**](Links.md) |  | [optional] 
**_id** | [**Id**](Id.md) |  | [optional] 
**owner_id** | [**Id**](Id.md) |  | [optional] 
**member_id** | [**Id**](Id.md) |  | [optional] 
**_member** | [**Member**](Member.md) |  | [optional] 
**creation_date** | **Integer** | A unix epoch time in milliseconds specifying the creation time of this access token. | [optional] 
**last_modified** | **Integer** | A unix epoch time in milliseconds specifying the last time this access token was modified. | [optional] 
**last_used** | **Integer** | A unix epoch time in milliseconds specifying the last time this access token was used to authorize access to the LaunchDarkly REST API. | [optional] 
**token** | **String** | The last 4 digits of the unique secret key for this access token. If creating or resetting the token, this will be the full token secret. | [optional] 
**name** | **String** | A human-friendly name for the access token | [optional] 
**role** | **String** | The name of a built-in role for the token | [optional] 
**custom_role_ids** | **Array&lt;String&gt;** | A list of custom role IDs to use as access limits for the access token | [optional] 
**inline_role** | [**Array&lt;Statement&gt;**](Statement.md) |  | [optional] 
**service_token** | **BOOLEAN** | Whether the token will be a service token https://docs.launchdarkly.com/home/account-security/api-access-tokens#service-tokens | [optional] 
**default_api_version** | **Integer** | The default API version for this token | [optional] 


