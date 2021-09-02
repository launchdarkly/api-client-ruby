# LaunchDarklyApi::ProjectListingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_id** | **String** |  |  |
| **key** | **String** |  |  |
| **include_in_snippet_by_default** | **Boolean** |  |  |
| **default_client_side_availability** | [**ClientSideAvailability**](ClientSideAvailability.md) |  | [optional] |
| **name** | **String** |  |  |
| **tags** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ProjectListingRep.new(
  _links: {&quot;environments&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _id: 57be1db38b75bf0772d11383,
  key: my-project,
  include_in_snippet_by_default: true,
  default_client_side_availability: null,
  name: My Project,
  tags: [&quot;ops&quot;]
)
```

