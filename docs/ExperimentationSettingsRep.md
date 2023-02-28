# LaunchDarklyApi::ExperimentationSettingsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_project_id** | **String** |  | [optional] |
| **_project_key** | **String** |  | [optional] |
| **randomization_units** | [**Array&lt;RandomizationUnitRep&gt;**](RandomizationUnitRep.md) |  | [optional] |
| **_creation_date** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentationSettingsRep.new(
  _project_id: null,
  _project_key: null,
  randomization_units: null,
  _creation_date: null,
  _links: null
)
```

