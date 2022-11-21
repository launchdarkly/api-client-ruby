# LaunchDarklyApi::TriggerWorkflowCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;TriggerWorkflowRep&gt;**](TriggerWorkflowRep.md) | An array of flag triggers | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TriggerWorkflowCollectionRep.new(
  items: null,
  _links: null
)
```

