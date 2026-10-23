# LaunchDarklyApi::AIConfigTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Integer** | Unix timestamp in milliseconds |  |
| **defaults** | [**AIConfigTargetingDefaults**](AIConfigTargetingDefaults.md) |  | [optional] |
| **environments** | [**Hash&lt;String, AIConfigTargetingEnvironment&gt;**](AIConfigTargetingEnvironment.md) | Targeting for each environment, keyed by environment key |  |
| **experiments** | [**AiConfigsExperimentInfoRep**](AiConfigsExperimentInfoRep.md) |  |  |
| **key** | **String** | The AI Config key |  |
| **name** | **String** | The AI Config name |  |
| **tags** | **Array&lt;String&gt;** | Tags for this resource |  |
| **variations** | [**Array&lt;AIConfigTargetingVariation&gt;**](AIConfigTargetingVariation.md) | The variations of this AI Config |  |
| **_version** | **Integer** | The version number of this resource |  |

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

