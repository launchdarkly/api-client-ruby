# LaunchDarklyApi::InsightsRepository

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The repository ID |  |
| **version** | **Integer** | The repository version |  |
| **key** | **String** | The repository key |  |
| **type** | **String** | The repository type |  |
| **url** | **String** | The repository URL |  |
| **main_branch** | **String** | The repository main branch |  |
| **projects** | [**ProjectSummaryCollection**](ProjectSummaryCollection.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsRepository.new(
  _id: 5f9a9b1a-5b9a-4b9a-9a9a-9a9a9a9a9a9a,
  version: 1,
  key: launchdarkly/LaunchDarkly-Docs,
  type: github,
  url: https://github.com/launchdarkly/LaunchDarkly-Docs,
  main_branch: main,
  projects: null
)
```

