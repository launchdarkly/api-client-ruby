# LaunchDarklyApi::InlineObject1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The member&#39;s email |  |
| **password** | **String** | The member&#39;s password | [optional] |
| **first_name** | **String** | The member&#39;s first name | [optional] |
| **last_name** | **String** | The member&#39;s last name | [optional] |
| **role** | **String** | The member&#39;s built-in role | [optional] |
| **custom_roles** | **Array&lt;String&gt;** | The member&#39;s custom role | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InlineObject1.new(
  email: null,
  password: null,
  first_name: null,
  last_name: null,
  role: null,
  custom_roles: null
)
```
