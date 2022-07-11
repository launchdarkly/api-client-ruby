# LaunchDarklyApi::SubscriptionPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for your audit log subscription. |  |
| **statements** | [**Array&lt;StatementPost&gt;**](StatementPost.md) |  | [optional] |
| **on** | **Boolean** | Whether or not you want your subscription to actively send events. | [optional] |
| **tags** | **Array&lt;String&gt;** | An array of tags for this subscription. | [optional] |
| **config** | **Hash&lt;String, Object&gt;** | The unique set of fields required to configure an audit log subscription integration of this type. Refer to the &lt;code&gt;formVariables&lt;/code&gt; field in the corresponding &lt;code&gt;manifest.json&lt;/code&gt; at https://github.com/launchdarkly/integration-framework/tree/main/integrations for a full list of fields for the integration you wish to configure. |  |
| **url** | **String** | Slack webhook receiver URL. Only necessary for legacy Slack webhook integrations. | [optional] |
| **api_key** | **String** | Datadog API key. Only necessary for legacy Datadog webhook integrations. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SubscriptionPost.new(
  name: Example audit log subscription.,
  statements: null,
  on: false,
  tags: [&quot;testing-tag&quot;],
  config: {&quot;optional&quot;:&quot;an optional property&quot;,&quot;required&quot;:&quot;the required property&quot;,&quot;url&quot;:&quot;https://example.com&quot;},
  url: null,
  api_key: null
)
```

