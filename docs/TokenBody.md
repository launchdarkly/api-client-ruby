# LaunchDarklyApi::TokenBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | A human-friendly name for the access token | [optional] 
**role** | **String** | The name of a built-in role for the token | [optional] 
**custom_role_ids** | **Array&lt;String&gt;** | A list of custom role IDs to use as access limits for the access token | [optional] 
**inline_role** | [**Array&lt;Statement&gt;**](Statement.md) |  | [optional] 
**service_token** | **BOOLEAN** | Whether the token will be a service token https://docs.launchdarkly.com/home/account-security/api-access-tokens#service-tokens | [optional] 
**default_api_version** | **Integer** | The default API version for this token | [optional] 


