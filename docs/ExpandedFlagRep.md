# LaunchDarklyApi::ExpandedFlagRep

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
| **maintainer_id** | **String** | The ID of the member who maintains the flag | [optional] |
| **_maintainer** | [**MemberSummary**](MemberSummary.md) |  | [optional] |
| **custom_properties** | [**Hash&lt;String, CustomProperty&gt;**](CustomProperty.md) |  |  |
| **archived** | **Boolean** | Boolean indicating if the feature flag is archived |  |
| **archived_date** | **Integer** |  | [optional] |
| **defaults** | [**Defaults**](Defaults.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExpandedFlagRep.new(
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
  custom_properties: null,
  archived: false,
  archived_date: null,
  defaults: null
)
```

