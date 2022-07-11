# LaunchDarklyApi::DestinationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-readable name for your Data Export destination | [optional] |
| **kind** | **String** | The type of Data Export destination | [optional] |
| **config** | **Object** | An object with the configuration parameters required for the destination type | [optional] |
| **on** | **Boolean** | Whether the export is on. Displayed as the integration status in the LaunchDarkly UI. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DestinationPost.new(
  name: example-destination,
  kind: google-pubsub,
  config: {&quot;project&quot;:&quot;test-prod&quot;,&quot;topic&quot;:&quot;ld-pubsub-test-192301&quot;},
  on: true
)
```

