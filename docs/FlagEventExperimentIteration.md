# LaunchDarklyApi::FlagEventExperimentIteration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The experiment iteration ID |  |
| **status** | **String** |  |  |
| **started_at** | **Integer** |  |  |
| **ended_at** | **Integer** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagEventExperimentIteration.new(
  id: 65baa44ecc4b5bce113bb4f7,
  status: null,
  started_at: null,
  ended_at: null,
  _links: null
)
```

