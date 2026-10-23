# LaunchDarklyApi::CallerIdentityRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **environment_id** | **String** |  | [optional] |
| **project_id** | **String** |  | [optional] |
| **environment_name** | **String** |  | [optional] |
| **project_name** | **String** |  | [optional] |
| **auth_kind** | **String** |  | [optional] |
| **token_kind** | **String** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **client_name** | **String** | The registered name of the OAuth client the access token was issued to. Only present for OAuth access tokens, and omitted when the client&#39;s name can&#39;t be resolved. | [optional] |
| **audience** | **Array&lt;String&gt;** | The resources (RFC 8707) the OAuth access token was issued for. Only present for OAuth access tokens issued for a specific resource. | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **token_name** | **String** |  | [optional] |
| **token_id** | **String** |  | [optional] |
| **member_id** | **String** |  | [optional] |
| **service_token** | **Boolean** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CallerIdentityRep.new(
  account_id: null,
  environment_id: null,
  project_id: null,
  environment_name: null,
  project_name: null,
  auth_kind: null,
  token_kind: null,
  client_id: null,
  client_name: null,
  audience: null,
  expires_at: null,
  token_name: null,
  token_id: null,
  member_id: null,
  service_token: null,
  scopes: null
)
```

