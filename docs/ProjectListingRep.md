# LaunchDarklyApi::ProjectListingRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_id** | **String** | The ID of this project |  |
| **key** | **String** | The key of this project |  |
| **include_in_snippet_by_default** | **Boolean** | Whether or not flags created in this project are made available to the client-side JavaScript SDK by default |  |
| **default_client_side_availability** | [**ClientSideAvailability**](ClientSideAvailability.md) |  | [optional] |
| **name** | **String** | A human-friendly name for the project |  |
| **tags** | **Array&lt;String&gt;** | A list of tags for the project |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ProjectListingRep.new(
  _links: {&quot;environments&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  _id: 57be1db38b75bf0772d11383,
  key: project-key-123abc,
  include_in_snippet_by_default: true,
  default_client_side_availability: null,
  name: My Project,
  tags: [&quot;ops&quot;]
)
```

