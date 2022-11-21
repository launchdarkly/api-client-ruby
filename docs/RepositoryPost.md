# LaunchDarklyApi::RepositoryPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The repository name |  |
| **source_link** | **String** | A URL to access the repository | [optional] |
| **commit_url_template** | **String** | A template for constructing a valid URL to view the commit | [optional] |
| **hunk_url_template** | **String** | A template for constructing a valid URL to view the hunk | [optional] |
| **type** | **String** | The type of repository. If not specified, the default value is &lt;code&gt;custom&lt;/code&gt;. | [optional] |
| **default_branch** | **String** | The repository&#39;s default branch. If not specified, the default value is &lt;code&gt;main&lt;/code&gt;. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RepositoryPost.new(
  name: LaunchDarkly-Docs,
  source_link: https://github.com/launchdarkly/LaunchDarkly-Docs,
  commit_url_template: https://github.com/launchdarkly/LaunchDarkly-Docs/commit/${sha},
  hunk_url_template: https://github.com/launchdarkly/LaunchDarkly-Docs/blob/${sha}/${filePath}#L${lineNumber},
  type: github,
  default_branch: main
)
```

