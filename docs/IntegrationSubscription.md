# LaunchDarklyApi::IntegrationSubscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_links** | [**HierarchicalLinks**](HierarchicalLinks.md) |  | [optional] 
**_id** | [**Id**](Id.md) |  | [optional] 
**kind** | **String** | The type of integration associated with this configuration. | [optional] 
**name** | **String** | The user-defined name associated with this configuration. | [optional] 
**config** | **Object** | A key-value mapping of configuration fields. | [optional] 
**statements** | [**Array&lt;Statement&gt;**](Statement.md) |  | [optional] 
**on** | **BOOLEAN** | Whether or not the integration is currently active. | [optional] 
**tags** | **Array&lt;String&gt;** | An array of tags for this integration configuration. | [optional] 
**_status** | [**IntegrationSubscriptionStatus**](IntegrationSubscriptionStatus.md) |  | [optional] 


