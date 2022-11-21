# LaunchDarklyApi::RelayAutoConfigRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_creator** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **name** | **String** | A human-friendly name for the Relay Proxy configuration |  |
| **policy** | [**Array&lt;Statement&gt;**](Statement.md) | A description of what environments and projects the Relay Proxy should include or exclude |  |
| **full_key** | **String** | The Relay Proxy configuration key |  |
| **display_key** | **String** | The last few characters of the Relay Proxy configuration key, displayed in the LaunchDarkly UI |  |
| **creation_date** | **Integer** |  |  |
| **last_modified** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RelayAutoConfigRep.new(
  _id: null,
  _creator: null,
  _access: null,
  name: Relay Proxy Demo Config,
  policy: null,
  full_key: null,
  display_key: 7f30,
  creation_date: null,
  last_modified: null
)
```

