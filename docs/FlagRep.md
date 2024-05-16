# LaunchDarklyApi::FlagRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **targeting_rule** | **String** | The targeting rule | [optional] |
| **targeting_rule_description** | **String** | The rule description | [optional] |
| **targeting_rule_clauses** | **Array&lt;Object&gt;** | An array of clauses used for individual targeting based on attributes | [optional] |
| **flag_config_version** | **Integer** | The flag version | [optional] |
| **not_in_experiment_variation_id** | **String** | The ID of the variation to route traffic not part of the experiment analysis to | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FlagRep.new(
  targeting_rule: fallthrough,
  targeting_rule_description: Customers who live in Canada,
  targeting_rule_clauses: null,
  flag_config_version: 12,
  not_in_experiment_variation_id: e432f62b-55f6-49dd-a02f-eb24acf39d05,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/flags/my-project/my-flag&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

