# LaunchDarklyApi::FeatureFlagBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the feature flag |  |
| **key** | **String** | A unique key used to reference the flag in your code |  |
| **description** | **String** | Description of the feature flag. Defaults to an empty string. | [optional] |
| **include_in_snippet** | **Boolean** | Deprecated, use &lt;code&gt;clientSideAvailability&lt;/code&gt;. Whether this flag should be made available to the client-side JavaScript SDK. Defaults to &lt;code&gt;false&lt;/code&gt;. | [optional] |
| **client_side_availability** | [**ClientSideAvailabilityPost**](ClientSideAvailabilityPost.md) |  | [optional] |
| **variations** | [**Array&lt;Variation&gt;**](Variation.md) | An array of possible variations for the flag. The variation values must be unique. If omitted, two boolean variations of &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;false&lt;/code&gt; will be used. | [optional] |
| **temporary** | **Boolean** | Whether the flag is a temporary flag. Defaults to &lt;code&gt;true&lt;/code&gt;. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the feature flag. Defaults to an empty array. | [optional] |
| **custom_properties** | [**Hash&lt;String, CustomProperty&gt;**](CustomProperty.md) |  | [optional] |
| **defaults** | [**Defaults**](Defaults.md) |  | [optional] |
| **purpose** | **String** | Purpose of the flag | [optional] |
| **migration_settings** | [**MigrationSettingsPost**](MigrationSettingsPost.md) |  | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this feature flag | [optional] |
| **maintainer_team_key** | **String** | The key of the team that maintains this feature flag | [optional] |
| **initial_prerequisites** | [**Array&lt;FlagPrerequisitePost&gt;**](FlagPrerequisitePost.md) | Initial set of prerequisite flags for all environments | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagBody.new(
  name: My flag,
  key: flag-key-123abc,
  description: This flag controls the example widgets,
  include_in_snippet: null,
  client_side_availability: null,
  variations: [{&quot;value&quot;:true},{&quot;value&quot;:false}],
  temporary: false,
  tags: [&quot;example-tag&quot;],
  custom_properties: null,
  defaults: null,
  purpose: migration,
  migration_settings: null,
  maintainer_id: 12ab3c45de678910fgh12345,
  maintainer_team_key: team-1,
  initial_prerequisites: null
)
```

