# LaunchDarklyApi::Webhook

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_links** | [**Links**](Links.md) |  | [optional] 
**_id** | [**Id**](Id.md) |  | [optional] 
**url** | **String** | The URL of the remote webhook. | [optional] 
**secret** | **String** | If defined, the webhooks post request will include a X-LD-Signature header whose value will contain an HMAC SHA256 hex digest of the webhook payload, using the secret as the key. | [optional] 
**on** | **BOOLEAN** | Whether this webhook is enabled or not. | [optional] 
**name** | **String** | The name of the webhook. | [optional] 
**statements** | [**Statements**](Statements.md) |  | [optional] 
**tags** | **Array&lt;String&gt;** | Tags assigned to this webhook. | [optional] 


