# LaunchDarklyApi::FlagImportStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The current status of the import integrations related import job | [optional] |
| **last_import** | **Integer** |  | [optional] |
| **last_error** | **Integer** |  | [optional] |
| **errors** | [**Array&lt;StatusResponse&gt;**](StatusResponse.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagImportStatus.new(
  status: pending,
  last_import: null,
  last_error: null,
  errors: null
)
```

