# LaunchDarklyApi::UserAttributeNamesRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private** | **Array&lt;String&gt;** | private attributes | [optional] |
| **custom** | **Array&lt;String&gt;** | custom attributes | [optional] |
| **standard** | **Array&lt;String&gt;** | standard attributes | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserAttributeNamesRep.new(
  private: [&quot;SSN&quot;,&quot;credit_card_number&quot;],
  custom: [&quot;Age&quot;,&quot;FavoriteFood&quot;,&quot;FavoriteColor&quot;],
  standard: [&quot;key&quot;,&quot;ip&quot;,&quot;firstName&quot;,&quot;lastName&quot;,&quot;country&quot;,&quot;anonymous&quot;]
)
```

