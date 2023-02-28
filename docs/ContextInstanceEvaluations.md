# LaunchDarklyApi::ContextInstanceEvaluations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ContextInstanceEvaluation&gt;**](ContextInstanceEvaluation.md) | Details on the flag evaluations for this context instance |  |
| **total_count** | **Integer** | The number of flags | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextInstanceEvaluations.new(
  items: [{&quot;_links&quot;:{&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/{projectKey}/environments/{environmentKey}/flags/evaluate&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;site&quot;:{&quot;href&quot;:&quot;/my-project/my-environment/features/sort.order/targeting&quot;,&quot;type&quot;:&quot;text/html&quot;}},&quot;_value&quot;:true,&quot;key&quot;:&quot;sort.order&quot;,&quot;name&quot;:&quot;SortOrder&quot;,&quot;reason&quot;:{&quot;kind&quot;:&quot;FALLTHROUGH&quot;}},{&quot;_links&quot;:{&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/{projectKey}/environments/{environmentKey}/flags/evaluate&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;site&quot;:{&quot;href&quot;:&quot;/my-project/my-environment/features/alternate.page/targeting&quot;,&quot;type&quot;:&quot;text/html&quot;}},&quot;_value&quot;:false,&quot;key&quot;:&quot;alternate.page&quot;,&quot;name&quot;:&quot;AlternatePage&quot;,&quot;reason&quot;:{&quot;kind&quot;:&quot;RULE_MATCH&quot;,&quot;ruleID&quot;:&quot;b2530cdf-14c6-4e16-b660-00239e08f19b&quot;,&quot;ruleIndex&quot;:1}}],
  total_count: 2,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/{projectKey}/environments/{environmentKey}/flags/evaluate&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

