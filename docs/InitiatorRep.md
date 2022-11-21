# LaunchDarklyApi::InitiatorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the member who initiated the export | [optional] |
| **email** | **String** | The email address of the member who initiated the export | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InitiatorRep.new(
  name: Bob Loblaw,
  email: bob@loblaw.com
)
```

