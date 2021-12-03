# LaunchDarklyApi::FeatureFlagBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the feature flag |  |
| **key** | **String** | A unique key to reference the flag in your code |  |
| **description** | **String** | Description of the feature flag | [optional] |
| **include_in_snippet** | **Boolean** | Deprecated, use clientSideAvailability. Whether or not this flag should be made available to the client-side JavaScript SDK | [optional] |
| **client_side_availability** | [**ClientSideAvailabilityPost**](ClientSideAvailabilityPost.md) |  | [optional] |
| **variations** | [**Array&lt;Variation&gt;**](Variation.md) | An array of possible variations for the flag | [optional] |
| **variation_json_schema** | **Object** |  | [optional] |
| **temporary** | **Boolean** | Whether or not the flag is a temporary flag | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the feature flag | [optional] |
| **custom_properties** | [**Hash&lt;String, CustomProperty&gt;**](CustomProperty.md) |  | [optional] |
| **defaults** | [**Defaults**](Defaults.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagBody.new(
  name: null,
  key: null,
  description: null,
  include_in_snippet: null,
  client_side_availability: null,
  variations: null,
  variation_json_schema: null,
  temporary: null,
  tags: null,
  custom_properties: null,
  defaults: null
)
```

