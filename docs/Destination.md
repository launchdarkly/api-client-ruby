# LaunchDarklyApi::Destination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of this Data Export destination | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **name** | **String** | A human-readable name for your Data Export destination | [optional] |
| **kind** | **String** | The type of Data Export destination | [optional] |
| **version** | **Float** |  | [optional] |
| **config** | **Object** | An object with the configuration parameters required for the destination type | [optional] |
| **on** | **Boolean** | Whether the export is on, that is, the status of the integration | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Destination.new(
  _id: 610addeadbeefaa86ec9a7d4,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/destinations&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/destinations/my-project/my-environment/610addeadbeefaa86ec9a7d4&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  name: example-destination,
  kind: google-pubsub,
  version: 1,
  config: {&quot;project&quot;:&quot;test-prod&quot;,&quot;topic&quot;:&quot;ld-pubsub-test-192301&quot;},
  on: true,
  _access: null
)
```

