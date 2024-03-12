# LaunchDarklyApi::RandomizationSettingsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_project_id** | **String** | The project ID | [optional] |
| **_project_key** | **String** | The project key | [optional] |
| **randomization_units** | [**Array&lt;RandomizationUnitRep&gt;**](RandomizationUnitRep.md) | An array of the randomization units in this project | [optional] |
| **_creation_date** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RandomizationSettingsRep.new(
  _project_id: 12345abcde67890fghij,
  _project_key: project-key-123abc,
  randomization_units: null,
  _creation_date: null,
  _links: null
)
```

