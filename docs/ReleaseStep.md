# LaunchDarklyApi::ReleaseStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **step_index** | **Integer** | Zero-based index of this step. | [readonly] |
| **allocation** | **Integer** | Thousandths of a percent. &#x60;100000&#x60; is 100%, and &#x60;10000&#x60; is 10%. Guarded releases cannot exceed &#x60;50000&#x60;, preserving a control group.  |  |
| **duration_millis** | **Integer** |  |  |
| **started_at** | **Integer** | Start of the step in Unix milliseconds. | [optional][readonly] |
| **ended_at** | **Integer** | End of the step in Unix milliseconds. | [optional][readonly] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleaseStep.new(
  step_index: null,
  allocation: null,
  duration_millis: null,
  started_at: null,
  ended_at: null
)
```

