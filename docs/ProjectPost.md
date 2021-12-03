# LaunchDarklyApi::ProjectPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the project. |  |
| **key** | **String** | A unique key used to reference the project in your code. |  |
| **include_in_snippet_by_default** | **Boolean** | Whether or not flags created in this project are made available to the client-side JavaScript SDK by default. | [optional] |
| **default_client_side_availability** | [**DefaultClientSideAvailabilityPost**](DefaultClientSideAvailabilityPost.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **environments** | [**Array&lt;EnvironmentPost&gt;**](EnvironmentPost.md) | Creates the provided environments for this project. If omitted default environments will be created instead. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ProjectPost.new(
  name: My Project,
  key: my-project,
  include_in_snippet_by_default: true,
  default_client_side_availability: null,
  tags: [&quot;ops&quot;],
  environments: null
)
```

