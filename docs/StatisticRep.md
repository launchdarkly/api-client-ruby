# LaunchDarklyApi::StatisticRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The repository name |  |
| **type** | **String** | The type of repository |  |
| **source_link** | **String** | A URL to access the repository |  |
| **default_branch** | **String** | The repository&#39;s default branch |  |
| **enabled** | **Boolean** | Whether or not a repository is enabled for code reference scanning |  |
| **version** | **Integer** | The version of the repository&#39;s saved information |  |
| **hunk_count** | **Integer** | The number of code reference hunks in which the flag appears in this repository |  |
| **file_count** | **Integer** | The number of files in which the flag appears in this repository |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StatisticRep.new(
  name: LaunchDarkly-Docs,
  type: github,
  source_link: https://github.com/launchdarkly/LaunchDarkly-Docs,
  default_branch: main,
  enabled: true,
  version: 3,
  hunk_count: null,
  file_count: null,
  _links: null
)
```

