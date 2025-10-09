# LaunchDarklyApi::AIConfigTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Integer** | Unix timestamp in milliseconds |  |
| **defaults** | [**AIConfigTargetingDefaults**](AIConfigTargetingDefaults.md) |  | [optional] |
| **environments** | [**Hash&lt;String, AIConfigTargetingEnvironment&gt;**](AIConfigTargetingEnvironment.md) |  |  |
| **experiments** | [**AiConfigsExperimentInfoRep**](AiConfigsExperimentInfoRep.md) |  |  |
| **key** | **String** |  |  |
| **name** | **String** |  |  |
| **tags** | **Array&lt;String&gt;** |  |  |
| **variations** | [**Array&lt;AIConfigTargetingVariation&gt;**](AIConfigTargetingVariation.md) |  |  |
| **_version** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargeting.new(
  created_at: null,
  defaults: null,
  environments: null,
  experiments: null,
  key: null,
  name: null,
  tags: null,
  variations: null,
  _version: null
)
```

