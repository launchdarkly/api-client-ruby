# LaunchDarklyApi::Integration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_id** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **config** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **statements** | [**Array&lt;StatementRep&gt;**](StatementRep.md) |  | [optional] |
| **on** | **Boolean** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_status** | [**IntegrationSubscriptionStatusRep**](IntegrationSubscriptionStatusRep.md) |  | [optional] |
| **url** | **String** |  | [optional] |
| **api_key** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Integration.new(
  _links: null,
  _id: null,
  kind: null,
  name: null,
  config: null,
  statements: null,
  on: null,
  tags: null,
  _access: null,
  _status: null,
  url: null,
  api_key: null
)
```

