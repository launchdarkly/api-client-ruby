# LaunchDarklyApi::DeploymentRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The deployment ID |  |
| **application_key** | **String** | The application key |  |
| **application_version** | **String** | The application version |  |
| **started_at** | **Integer** |  |  |
| **ended_at** | **Integer** |  | [optional] |
| **duration_ms** | **Integer** | The duration of the deployment in milliseconds | [optional] |
| **status** | **String** |  |  |
| **kind** | **String** |  |  |
| **active** | **Boolean** | Whether the deployment is active |  |
| **metadata** | **Hash&lt;String, Object&gt;** | The metadata associated with the deployment | [optional] |
| **archived** | **Boolean** | Whether the deployment is archived |  |
| **environment_key** | **String** | The environment key |  |
| **number_of_contributors** | **Integer** | The number of contributors |  |
| **number_of_pull_requests** | **Integer** | The number of pull requests |  |
| **lines_added** | **Integer** | The number of lines added |  |
| **lines_deleted** | **Integer** | The number of lines deleted |  |
| **lead_time** | **Integer** | The total lead time from first commit to deployment end in milliseconds |  |
| **pull_requests** | [**PullRequestCollectionRep**](PullRequestCollectionRep.md) |  | [optional] |
| **flag_references** | [**FlagReferenceCollectionRep**](FlagReferenceCollectionRep.md) |  | [optional] |
| **lead_time_stages** | [**LeadTimeStagesRep**](LeadTimeStagesRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DeploymentRep.new(
  id: a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11,
  application_key: billing-service,
  application_version: a90a8a2,
  started_at: null,
  ended_at: null,
  duration_ms: 10996000,
  status: null,
  kind: null,
  active: true,
  metadata: {&quot;buildNumber&quot;:&quot;1234&quot;},
  archived: false,
  environment_key: production,
  number_of_contributors: 1,
  number_of_pull_requests: 2,
  lines_added: 100,
  lines_deleted: 50,
  lead_time: 20237000,
  pull_requests: null,
  flag_references: null,
  lead_time_stages: null
)
```

