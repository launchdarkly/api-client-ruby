# LaunchDarklyApi::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The user key. This is the only mandatory user attribute. | [optional] |
| **secondary** | **String** | If provided, used with the user key to generate a variation in percentage rollouts | [optional] |
| **ip** | **String** | The user&#39;s IP address | [optional] |
| **country** | **String** | The user&#39;s country | [optional] |
| **email** | **String** | The user&#39;s email | [optional] |
| **first_name** | **String** | The user&#39;s first name | [optional] |
| **last_name** | **String** | The user&#39;s last name | [optional] |
| **avatar** | **String** | An absolute URL to an avatar image. | [optional] |
| **name** | **String** | The user&#39;s full name | [optional] |
| **anonymous** | **Boolean** | Whether the user is anonymous. If true, this user does not appear on the Contexts list in the LaunchDarkly user interface. | [optional] |
| **custom** | **Hash&lt;String, Object&gt;** | Any other custom attributes for this user. Custom attributes contain any other user data that you would like to use to conditionally target your users. | [optional] |
| **private_attrs** | **Array&lt;String&gt;** | A list of attribute names that are marked as private. You can use these attributes in targeting rules and segments. If you are using a server-side SDK, the SDK will not send the private attribute back to LaunchDarkly. If you are using a client-side SDK, the SDK will send the private attribute back to LaunchDarkly for evaluation. However, the SDK won&#39;t send the attribute to LaunchDarkly in events data, LaunchDarkly won&#39;t store the private attribute, and the private attribute will not appear on the Contexts list. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::User.new(
  key: user-key-123abc,
  secondary: 2398127,
  ip: 10.10.10.10,
  country: United States,
  email: sandy@example.com,
  first_name: Sandy,
  last_name: Smith,
  avatar: http://example.com/avatar.png,
  name: Sandy Smith,
  anonymous: false,
  custom: null,
  private_attrs: null
)
```

