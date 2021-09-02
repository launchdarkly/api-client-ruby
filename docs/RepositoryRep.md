# LaunchDarklyApi::RepositoryRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **source_link** | **String** |  | [optional] |
| **commit_url_template** | **String** |  | [optional] |
| **hunk_url_template** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **default_branch** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **version** | **Integer** |  |  |
| **branches** | [**Array&lt;BranchRep&gt;**](BranchRep.md) |  | [optional] |
| **_links** | **Hash&lt;String, Object&gt;** |  |  |
| **_access** | [**AccessRep**](AccessRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RepositoryRep.new(
  name: null,
  source_link: null,
  commit_url_template: null,
  hunk_url_template: null,
  type: null,
  default_branch: null,
  enabled: null,
  version: null,
  branches: null,
  _links: null,
  _access: null
)
```

