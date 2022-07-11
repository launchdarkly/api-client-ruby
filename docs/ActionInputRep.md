# LaunchDarklyApi::ActionInputRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instructions** | **Object** | An array of instructions for the stage. Each object in the array uses the semantic patch format for updating a feature flag. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ActionInputRep.new(
  instructions: {&quot;instructions&quot;: [{ &quot;kind&quot;: &quot;turnFlagOn&quot;}]}
)
```

