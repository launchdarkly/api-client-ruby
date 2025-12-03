# LaunchDarklyApi::TrustPolicyDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The version of the trust policy | [optional] |
| **statement** | [**Array&lt;TrustPolicyStatement&gt;**](TrustPolicyStatement.md) | The statements of the trust policy | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TrustPolicyDetails.new(
  version: null,
  statement: null
)
```

