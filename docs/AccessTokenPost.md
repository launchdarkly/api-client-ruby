# LaunchDarklyApi::AccessTokenPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the access token | [optional] |
| **description** | **String** | A description for the access token | [optional] |
| **role** | **String** | Base role for the token | [optional] |
| **custom_role_ids** | **Array&lt;String&gt;** | A list of custom role IDs to use as access limits for the access token | [optional] |
| **inline_role** | [**Array&lt;StatementPost&gt;**](StatementPost.md) | A JSON array of statements represented as JSON objects with three attributes: effect, resources, actions. May be used in place of a role. | [optional] |
| **service_token** | **Boolean** | Whether the token is a service token | [optional] |
| **default_api_version** | **Integer** | The default API version for this token | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AccessTokenPost.new(
  name: null,
  description: null,
  role: null,
  custom_role_ids: null,
  inline_role: null,
  service_token: null,
  default_api_version: null
)
```

