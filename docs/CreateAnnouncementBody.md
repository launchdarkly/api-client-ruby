# LaunchDarklyApi::CreateAnnouncementBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dismissible** | **Boolean** | true if the announcement is dismissible |  |
| **title** | **String** | The title of the announcement |  |
| **message** | **String** | The message of the announcement |  |
| **start_time** | **Integer** | The start time of the announcement. This is a Unix timestamp in milliseconds. |  |
| **end_time** | **Integer** | The end time of the announcement. This is a Unix timestamp in milliseconds. | [optional] |
| **severity** | **String** | The severity of the announcement |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CreateAnnouncementBody.new(
  is_dismissible: true,
  title: System Maintenance Notice,
  message: **Important Update:**

Please be aware of the upcoming maintenance scheduled for *October 31st, 2024*. The system will be unavailable from **12:00 AM** to **4:00 AM**.,
  start_time: 1731439812,
  end_time: 1731439880,
  severity: warning
)
```

