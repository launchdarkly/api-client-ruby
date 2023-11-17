# LaunchDarklyApi::ReviewResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The approval request ID |  |
| **kind** | **String** | The type of review action to take |  |
| **creation_date** | **Integer** |  | [optional] |
| **comment** | **String** | A comment describing the approval response | [optional] |
| **member_id** | **String** | ID of account member that reviewed request | [optional] |
| **service_token_id** | **String** | ID of account service token that reviewed request | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReviewResponse.new(
  _id: 12ab3c45de678910abc12345,
  kind: approve,
  creation_date: null,
  comment: Approved!,
  member_id: 12ab3c45de678910abc12345,
  service_token_id: 12ab3c45de678910abc12345
)
```

