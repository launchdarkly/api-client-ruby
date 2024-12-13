# LaunchDarklyApi::IntegrationConfigurationCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;IntegrationConfigurationsRep&gt;**](IntegrationConfigurationsRep.md) | An array of integration configurations |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IntegrationConfigurationCollectionRep.new(
  items: null,
  _links: null
)
```

