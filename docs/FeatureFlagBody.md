# LaunchDarklyApi::FeatureFlagBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the feature flag |  |
| **key** | **String** | A unique key used to reference the flag in your code |  |
| **description** | **String** | Description of the feature flag | [optional] |
| **include_in_snippet** | **Boolean** | Deprecated, use &lt;code&gt;clientSideAvailability&lt;/code&gt;. Whether this flag should be made available to the client-side JavaScript SDK. | [optional] |
| **client_side_availability** | [**ClientSideAvailabilityPost**](ClientSideAvailabilityPost.md) |  | [optional] |
| **variations** | [**Array&lt;Variation&gt;**](Variation.md) | An array of possible variations for the flag. The variation values must be unique. | [optional] |
| **temporary** | **Boolean** | Whether the flag is a temporary flag. Defaults to true. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the feature flag | [optional] |
| **custom_properties** | [**Hash&lt;String, CustomProperty&gt;**](CustomProperty.md) |  | [optional] |
| **defaults** | [**Defaults**](Defaults.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FeatureFlagBody.new(
  name: My flag,
  key: my-flag,
  description: This flag controls the example widgets,
  include_in_snippet: null,
  client_side_availability: null,
  variations: [{&quot;value&quot;:true},{&quot;value&quot;:false}],
  temporary: false,
  tags: [&quot;example-tag&quot;],
  custom_properties: null,
  defaults: null
)
```

