# LaunchDarklyApi::IntegrationDeliveryConfigurationPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on** | **Boolean** | Default value is false | [optional] |
| **config** | **Hash&lt;String, Object&gt;** |  |  |
| **tags** | **Array&lt;String&gt;** | Tags to associate with integration | [optional] |
| **name** | **String** | Name to identify integration | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IntegrationDeliveryConfigurationPost.new(
  on: null,
  config: null,
  tags: null,
  name: null
)
```

