# LaunchDarklyApi::Classifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **type** | **String** |  |  |
| **instructions** | **String** |  |  |
| **criteria** | **Object** | Type-specific criteria. An enum classifier uses a map of option keys to descriptions. A float classifier uses an ordered list of level labels. A bool classifier uses optional true and false descriptions.  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Classifier.new(
  key: null,
  type: null,
  instructions: null,
  criteria: null
)
```

