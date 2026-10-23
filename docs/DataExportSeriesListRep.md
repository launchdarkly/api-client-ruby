# LaunchDarklyApi::DataExportSeriesListRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | **Hash&lt;String, Object&gt;** | The location and content type of related resources |  |
| **metadata** | **Array&lt;Hash&gt;** | Metadata about each series |  |
| **series** | **Array&lt;Hash&gt;** | An array of data points with timestamps. Each element of the array is an object with a &#39;time&#39; field, whose value is the timestamp, and one or more key fields. If there are multiple key fields, they are labeled &#39;0&#39;, &#39;1&#39;, and so on, and are explained in the &lt;code&gt;metadata&lt;/code&gt;. |  |
| **data_through** | **String** | The end of the latest hour written by this source&#39;s usage pipeline, as an RFC 3339 UTC timestamp. It is measured across all accounts, not only yours, and usage after this time is not counted yet. Omitted when the watermark is unavailable. | [optional] |
| **delayed** | **Boolean** | Whether this source&#39;s usage pipeline is late: it wrote every hour of the 24 hours ending at &lt;code&gt;dataThrough&lt;/code&gt;, and more than three hours have passed since &lt;code&gt;dataThrough&lt;/code&gt;. Always &lt;code&gt;false&lt;/code&gt; for a source with gaps in those 24 hours, where gaps usually mean no usage rather than a stalled pipeline. Omitted when &lt;code&gt;dataThrough&lt;/code&gt; is omitted. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DataExportSeriesListRep.new(
  _links: null,
  metadata: null,
  series: [{&quot;0&quot;:11,&quot;1&quot;:15,&quot;time&quot;:1677888000000}],
  data_through: 2026-09-30T15:00:00Z,
  delayed: false
)
```

