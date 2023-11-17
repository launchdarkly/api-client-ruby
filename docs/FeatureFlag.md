# LaunchDarklyApi::FeatureFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the feature flag |  |
| **kind** | **String** | Kind of feature flag |  |
| **description** | **String** | Description of the feature flag | [optional] |
| **key** | **String** | A unique key used to reference the flag in your code |  |
| **_version** | **Integer** | Version of the feature flag |  |
| **creation_date** | **Integer** |  |  |
| **include_in_snippet** | **Boolean** | Deprecated, use &lt;code&gt;clientSideAvailability&lt;/code&gt;. Whether this flag should be made available to the client-side JavaScript SDK | [optional] |
| **client_side_availability** | [**ClientSideAvailability**](ClientSideAvailability.md) |  | [optional] |
| **variations** | [**Array&lt;Variation&gt;**](Variation.md) | An array of possible variations for the flag |  |
| **temporary** | **Boolean** | Whether the flag is a temporary flag |  |
| **tags** | **Array&lt;String&gt;** | Tags for the feature flag |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **maintainer_id** | **String** | Associated maintainerId for the feature flag | [optional] |
| **_maintainer** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **maintainer_team_key** | **String** | The key of the associated team that maintains this feature flag | [optional] |
| **_maintainer_team** | [**MaintainerTeam**](MaintainerTeam.md) |  | [optional] |
| **goal_ids** | **Array&lt;String&gt;** | Deprecated, use &lt;code&gt;experiments&lt;/code&gt; instead | [optional] |
| **experiments** | [**ExperimentInfoRep**](ExperimentInfoRep.md) |  |  |
| **custom_properties** | [**Hash&lt;String, CustomProperty&gt;**](CustomProperty.md) |  |  |
| **archived** | **Boolean** | Boolean indicating if the feature flag is archived |  |
| **archived_date** | **Integer** |  | [optional] |
| **defaults** | [**Defaults**](Defaults.md) |  | [optional] |
| **_purpose** | **String** |  | [optional] |
| **migration_settings** | [**FlagMigrationSettingsRep**](FlagMigrationSettingsRep.md) |  | [optional] |
| **environments** | [**Hash&lt;String, FeatureFlagConfig&gt;**](FeatureFlagConfig.md) | Details on the environments for this flag |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlag.new(
  name: My Flag,
  kind: boolean,
  description: This flag controls the example widgets,
  key: flag-key-123abc,
  _version: 1,
  creation_date: null,
  include_in_snippet: true,
  client_side_availability: null,
  variations: [{&quot;_id&quot;:&quot;e432f62b-55f6-49dd-a02f-eb24acf39d05&quot;,&quot;value&quot;:true},{&quot;_id&quot;:&quot;a00bf58d-d252-476c-b915-15a74becacb4&quot;,&quot;value&quot;:false}],
  temporary: true,
  tags: [&quot;example-tag&quot;],
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/flags/my-project&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/flags/my-project/my-flag&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  maintainer_id: 569f183514f4432160000007,
  _maintainer: null,
  maintainer_team_key: team-1,
  _maintainer_team: null,
  goal_ids: [],
  experiments: null,
  custom_properties: null,
  archived: false,
  archived_date: null,
  defaults: null,
  _purpose: null,
  migration_settings: null,
  environments: {&quot;my-environment&quot;:{&quot;_environmentName&quot;:&quot;My Environment&quot;,&quot;_site&quot;:{&quot;href&quot;:&quot;/default/my-environment/features/client-side-flag&quot;,&quot;type&quot;:&quot;text/html&quot;},&quot;_summary&quot;:{&quot;prerequisites&quot;:0,&quot;variations&quot;:{&quot;0&quot;:{&quot;contextTargets&quot;:1,&quot;isFallthrough&quot;:true,&quot;nullRules&quot;:0,&quot;rules&quot;:0,&quot;targets&quot;:1},&quot;1&quot;:{&quot;isOff&quot;:true,&quot;nullRules&quot;:0,&quot;rules&quot;:0,&quot;targets&quot;:0}}},&quot;archived&quot;:false,&quot;contextTargets&quot;:[{&quot;contextKind&quot;:&quot;device&quot;,&quot;values&quot;:[&quot;device-key-123abc&quot;],&quot;variation&quot;:0}],&quot;fallthrough&quot;:{&quot;variation&quot;:0},&quot;lastModified&quot;:1627071171347,&quot;offVariation&quot;:1,&quot;on&quot;:false,&quot;prerequisites&quot;:[],&quot;rules&quot;:[],&quot;salt&quot;:&quot;61eddeadbeef4da1facecafe3a60a397&quot;,&quot;sel&quot;:&quot;810edeadbeef4844facecafe438f2999492&quot;,&quot;targets&quot;:[{&quot;contextKind&quot;:&quot;user&quot;,&quot;values&quot;:[&quot;user-key-123abc&quot;],&quot;variation&quot;:0}],&quot;trackEvents&quot;:false,&quot;trackEventsFallthrough&quot;:false,&quot;version&quot;:1}}
)
```

