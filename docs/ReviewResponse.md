# LaunchDarklyApi::ReviewResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The approval request id |  |
| **kind** | **String** | The type of review action to take. Either \&quot;approve\&quot;, \&quot;decline\&quot; or \&quot;comment\&quot; |  |
| **creation_date** | **Integer** |  | [optional] |
| **comment** | **String** | A comment describing the approval response | [optional] |
| **member_id** | **String** | ID of account member that reviewed request | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReviewResponse.new(
  _id: null,
  kind: null,
  creation_date: null,
  comment: null,
  member_id: null
)
```

