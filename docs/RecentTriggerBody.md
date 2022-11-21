# LaunchDarklyApi::RecentTriggerBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** |  | [optional] |
| **json_body** | **Hash&lt;String, Object&gt;** | The marshalled JSON request body for the incoming trigger webhook. If this is empty or contains invalid JSON, the timestamp is recorded but this field will be empty. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RecentTriggerBody.new(
  timestamp: null,
  json_body: null
)
```

