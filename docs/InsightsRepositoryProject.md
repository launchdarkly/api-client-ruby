# LaunchDarklyApi::InsightsRepositoryProject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository_key** | **String** | The repository key |  |
| **project_key** | **String** | The project key |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsRepositoryProject.new(
  repository_key: launchdarkly/LaunchDarkly-Docs,
  project_key: default
)
```

