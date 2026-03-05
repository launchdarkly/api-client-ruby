# LaunchDarklyApi::ViewLinkRequestFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter string to match resources for linking. Uses the same syntax as list endpoints: flags use comma-separated field:value filters, segments use queryfilter syntax.  Supported filters by resource type: - flags: query, tags, maintainerId, maintainerTeamKey, type, status, state, staleState, sdkAvailability, targeting, hasExperiment, hasDataExport, evaluated, creationDate, contextKindTargeted, contextKindsEvaluated, filterEnv, segmentTargeted, codeReferences.min, codeReferences.max, excludeSettings, releasePipeline, applicationEvaluated, purpose, guardedRollout, view, key, name, archived, followerId - segments (queryfilter): query, tags, keys, excludedKeys, unbounded, external, view, type Some filters are only available when the corresponding feature is enabled on your account.  |  |
| **environment_id** | **String** | Required when using filter for segment resources. Specifies which environment to query for segments matching the filter. Ignored for flag resources (flags are global across environments).  | [optional] |
| **comment** | **String** | Optional comment for the link/unlink operation | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ViewLinkRequestFilter.new(
  filter: maintainerId:507f1f77bcf86cd799439011,tags:backend+beta,
  environment_id: null,
  comment: null
)
```

