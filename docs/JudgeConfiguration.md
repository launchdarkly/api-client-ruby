# LaunchDarklyApi::JudgeConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **judges** | [**Array&lt;JudgeAttachment&gt;**](JudgeAttachment.md) | List of judges for this variation. When updating, this replaces all existing judge attachments, and if empty, removes all judge attachments.  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::JudgeConfiguration.new(
  judges: null
)
```

