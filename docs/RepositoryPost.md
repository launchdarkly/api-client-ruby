# LaunchDarklyApi::RepositoryPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **source_link** | **String** |  | [optional] |
| **commit_url_template** | **String** | A template for constructing a valid URL to view the commit | [optional] |
| **hunk_url_template** | **String** | A template for constructing a valid URL to view the hunk | [optional] |
| **type** | **String** | Optionally specify a repository type. The default value is &lt;code&gt;custom&lt;/code&gt; | [optional] |
| **default_branch** | **String** | The default branch, if not specified, is &lt;code&gt;master&lt;/code&gt; | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RepositoryPost.new(
  name: LaunchDarkly-Docs,
  source_link: https://github.com/launchdarkly/LaunchDarkly-Docs,
  commit_url_template: /commit/${sha},
  hunk_url_template: /blob/${sha}/${filePath}#L${lineNumber},
  type: github,
  default_branch: main
)
```

