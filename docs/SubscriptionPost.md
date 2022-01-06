# LaunchDarklyApi::SubscriptionPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for your audit log subscription. |  |
| **statements** | [**Array&lt;StatementPost&gt;**](StatementPost.md) |  | [optional] |
| **on** | **Boolean** | Whether or not you want your subscription to actively send events. | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **config** | **Hash&lt;String, Object&gt;** | The unique set of fields required to configure an audit log subscription integration of this type. Refer to the \&quot;formVariables\&quot; field in the corresponding manifest.json  at https://github.com/launchdarkly/integration-framework/tree/master/integrations for a full list of fields for the integration you wish to configure. |  |
| **url** | **String** | Slack webhook receiver URL. Only necessary for legacy Slack webhook integrations. | [optional] |
| **api_key** | **String** | Datadog API key. Only necessary for legacy Datadog webhook subscriptions. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SubscriptionPost.new(
  name: null,
  statements: null,
  on: null,
  tags: null,
  config: null,
  url: null,
  api_key: null
)
```

