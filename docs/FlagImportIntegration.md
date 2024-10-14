# LaunchDarklyApi::FlagImportIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**FlagImportIntegrationLinks**](FlagImportIntegrationLinks.md) |  |  |
| **_id** | **String** | The integration ID |  |
| **integration_key** | **String** | The integration key |  |
| **project_key** | **String** | The project key |  |
| **config** | **Hash&lt;String, Object&gt;** |  |  |
| **tags** | **Array&lt;String&gt;** | List of tags for this configuration |  |
| **name** | **String** | Name of the configuration |  |
| **version** | **Integer** | Version of the current configuration |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_status** | [**FlagImportStatus**](FlagImportStatus.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagImportIntegration.new(
  _links: null,
  _id: 12ab3c4d5ef1a2345bcde67f,
  integration_key: split,
  project_key: default,
  config: null,
  tags: [],
  name: Development environment configuration,
  version: 1,
  _access: null,
  _status: null
)
```

