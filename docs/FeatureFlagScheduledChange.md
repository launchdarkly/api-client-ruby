# LaunchDarklyApi::FeatureFlagScheduledChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_creation_date** | **Integer** |  |  |
| **_maintainer_id** | **String** | The ID of the scheduled change maintainer |  |
| **_maintainer_service_token_id** | **String** | The ID of the service token that created or updated this scheduled change | [optional] |
| **_version** | **Integer** | Version of the scheduled change |  |
| **execution_date** | **Integer** |  |  |
| **instructions** | **Array&lt;Hash&gt;** |  |  |
| **conflicts** | **Object** | Details on any conflicting scheduled changes | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagScheduledChange.new(
  _id: null,
  _creation_date: null,
  _maintainer_id: 12ab3c45de678910abc12345,
  _maintainer_service_token_id: null,
  _version: 1,
  execution_date: null,
  instructions: null,
  conflicts: null,
  _links: null
)
```

