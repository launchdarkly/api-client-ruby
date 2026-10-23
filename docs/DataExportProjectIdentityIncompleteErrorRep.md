# LaunchDarklyApi::DataExportProjectIdentityIncompleteErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DataExportProjectIdentityIncompleteErrorRep.new(
  code: data_export_project_identity_incomplete,
  message: Data export project identity is incomplete for the requested range; project-grouped usage is unavailable
)
```

