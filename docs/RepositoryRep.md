# LaunchDarklyApi::RepositoryRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The repository name |  |
| **source_link** | **String** | A URL to access the repository | [optional] |
| **commit_url_template** | **String** | A template for constructing a valid URL to view the commit | [optional] |
| **hunk_url_template** | **String** | A template for constructing a valid URL to view the hunk | [optional] |
| **type** | **String** | The type of repository |  |
| **default_branch** | **String** | The repository&#39;s default branch |  |
| **enabled** | **Boolean** | Whether or not a repository is enabled for code reference scanning |  |
| **version** | **Integer** | The version of the repository&#39;s saved information |  |
| **branches** | [**Array&lt;BranchRep&gt;**](BranchRep.md) | An array of the repository&#39;s branches that have been scanned for code references | [optional] |
| **_links** | **Hash&lt;String, Object&gt;** |  |  |
| **_access** | [**Access**](Access.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RepositoryRep.new(
  name: LaunchDarkly-Docs,
  source_link: https://github.com/launchdarkly/LaunchDarkly-Docs,
  commit_url_template: https://github.com/launchdarkly/LaunchDarkly-Docs/commit/${sha},
  hunk_url_template: https://github.com/launchdarkly/LaunchDarkly-Docs/blob/${sha}/${filePath}#L${lineNumber},
  type: github,
  default_branch: main,
  enabled: true,
  version: 3,
  branches: null,
  _links: null,
  _access: null
)
```

