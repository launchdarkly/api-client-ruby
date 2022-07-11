# LaunchDarklyApi::IntegrationDeliveryConfigurationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on** | **Boolean** | Whether the delivery configuration is active. Default value is false. | [optional] |
| **config** | **Hash&lt;String, Object&gt;** |  |  |
| **tags** | **Array&lt;String&gt;** | Tags to associate with the integration | [optional] |
| **name** | **String** | Name to identify the integration | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IntegrationDeliveryConfigurationPost.new(
  on: false,
  config: null,
  tags: [&quot;example-tag&quot;],
  name: Sample integration
)
```

