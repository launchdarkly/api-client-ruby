# LaunchDarklyApi::RateLimitedErrorRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RateLimitedErrorRep.new(
  code: rate_limited,
  message: You&#39;ve exceeded the API rate limit. Try again later.
)
```

