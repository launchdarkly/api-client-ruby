# LaunchDarklyApi::DependentExperimentRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The experiment key |  |
| **name** | **String** | The experiment name |  |
| **environment_id** | **String** | The environment ID |  |
| **creation_date** | **Integer** |  |  |
| **archived_date** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentExperimentRep.new(
  key: experiment-key-123abc,
  name: Example experiment,
  environment_id: 1234a56b7c89d012345e678f,
  creation_date: null,
  archived_date: null,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/environments/my-environment/experiments/example-experiment&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

