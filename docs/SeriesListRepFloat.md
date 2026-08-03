# LaunchDarklyApi::SeriesListRepFloat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | **Hash&lt;String, Object&gt;** | The location and content type of related resources |  |
| **metadata** | **Array&lt;Hash&gt;** | Metadata about each series |  |
| **series** | **Array&lt;Hash&gt;** | An array of data points with timestamps. Each element of the array is an object with a &#39;time&#39; field, whose value is the timestamp, and one or more key fields. If there are multiple key fields, they are labeled &#39;0&#39;, &#39;1&#39;, and so on, and are explained in the &lt;code&gt;metadata&lt;/code&gt;. |  |
| **projected_series** | **Array&lt;Hash&gt;** | Cumulative projected usage by day for the full billing period, when available. Each element matches the structure of &lt;code&gt;series&lt;/code&gt;: an object with a &#39;time&#39; field and a &#39;0&#39; value field. The projected (non-actual) portion begins where the actual &lt;code&gt;series&lt;/code&gt; ends. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SeriesListRepFloat.new(
  _links: null,
  metadata: null,
  series: [{&quot;0&quot;:11,&quot;1&quot;:15,&quot;time&quot;:1677888000000}],
  projected_series: [{&quot;0&quot;:11,&quot;time&quot;:1677888000000}]
)
```

