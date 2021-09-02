# LaunchDarklyApi::Destination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **version** | **Float** |  | [optional] |
| **config** | **Object** |  | [optional] |
| **on** | **Boolean** |  | [optional] |
| **_access** | [**AccessRep**](AccessRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Destination.new(
  _id: 610addeadbeefaa86ec9a7d4,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/destinations&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/destinations/my-project/my-environment/610addeadbeefaa86ec9a7d4&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  name: null,
  kind: google-pubsub,
  version: 1,
  config: {&quot;project&quot;:&quot;test-prod&quot;,&quot;topic&quot;:&quot;ld-pubsub-test-192301&quot;},
  on: null,
  _access: null
)
```

