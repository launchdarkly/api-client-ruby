# LaunchDarklyApi::PullRequestRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The pull request internal ID |  |
| **external_id** | **String** | The pull request number |  |
| **title** | **String** | The pull request title |  |
| **status** | **String** | The pull request status |  |
| **author** | **String** | The pull request author |  |
| **create_time** | **Integer** |  |  |
| **merge_time** | **Integer** |  | [optional] |
| **merge_commit_key** | **String** | The pull request merge commit key | [optional] |
| **base_commit_key** | **String** | The pull request base commit key |  |
| **head_commit_key** | **String** | The pull request head commit key |  |
| **files_changed** | **Integer** | The number of files changed |  |
| **lines_added** | **Integer** | The number of lines added |  |
| **lines_deleted** | **Integer** | The number of lines deleted |  |
| **url** | **String** | The pull request URL |  |
| **deployments** | [**DeploymentCollectionRep**](DeploymentCollectionRep.md) |  | [optional] |
| **flag_references** | [**FlagReferenceCollectionRep**](FlagReferenceCollectionRep.md) |  | [optional] |
| **lead_time** | [**PullRequestLeadTimeRep**](PullRequestLeadTimeRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PullRequestRep.new(
  id: a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11,
  external_id: 1234,
  title: Enable new payment structure,
  status: merged,
  author: jane.doe,
  create_time: null,
  merge_time: null,
  merge_commit_key: a90a8a2,
  base_commit_key: a90a8a2,
  head_commit_key: a90a8a2,
  files_changed: 2,
  lines_added: 100,
  lines_deleted: 50,
  url: https://github.com/launchdarkly/LaunchDarkly-Docs/pull/406,
  deployments: null,
  flag_references: null,
  lead_time: null
)
```

