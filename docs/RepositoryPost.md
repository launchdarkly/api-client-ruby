# LaunchDarklyApi::RepositoryPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **source_link** | **String** |  | [optional] |
| **commit_url_template** | **String** |  | [optional] |
| **hunk_url_template** | **String** |  | [optional] |
| **type** | **String** | Optionally specify a repository type. The default value is &lt;code&gt;custom&lt;/code&gt; | [optional] |
| **default_branch** | **String** | The default branch, if not specified, is &lt;code&gt;master&lt;/code&gt; | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RepositoryPost.new(
  name: null,
  source_link: null,
  commit_url_template: null,
  hunk_url_template: null,
  type: null,
  default_branch: null
)
```

