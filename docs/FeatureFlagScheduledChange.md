# LaunchDarklyApi::FeatureFlagScheduledChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_creation_date** | **Integer** |  |  |
| **_maintainer_id** | **String** |  |  |
| **_version** | **Integer** |  |  |
| **execution_date** | **Integer** |  |  |
| **instructions** | **Array&lt;Object&gt;** |  |  |
| **conflicts** | **Object** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagScheduledChange.new(
  _id: null,
  _creation_date: null,
  _maintainer_id: null,
  _version: null,
  execution_date: null,
  instructions: null,
  conflicts: null,
  _links: null
)
```

