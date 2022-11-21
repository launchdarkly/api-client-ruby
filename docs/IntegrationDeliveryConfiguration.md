# LaunchDarklyApi::IntegrationDeliveryConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**IntegrationDeliveryConfigurationLinks**](IntegrationDeliveryConfigurationLinks.md) |  |  |
| **_id** | **String** | The integration ID |  |
| **integration_key** | **String** | The integration key |  |
| **project_key** | **String** | The project key |  |
| **environment_key** | **String** | The environment key |  |
| **config** | **Hash&lt;String, Object&gt;** |  |  |
| **on** | **Boolean** | Whether the configuration is turned on |  |
| **tags** | **Array&lt;String&gt;** | List of tags for this configuration |  |
| **name** | **String** | Name of the configuration |  |
| **version** | **Integer** | Version of the current configuration |  |
| **_access** | [**Access**](Access.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IntegrationDeliveryConfiguration.new(
  _links: null,
  _id: 12ab3c4d5ef1a2345bcde67f,
  integration_key: example-integration-key,
  project_key: default,
  environment_key: development,
  config: null,
  on: true,
  tags: [],
  name: Development environment configuration,
  version: 1,
  _access: null
)
```

