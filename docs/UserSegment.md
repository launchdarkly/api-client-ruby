# LaunchDarklyApi::UserSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the segment |  |
| **description** | **String** | A description of the segment&#39;s purpose | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the segment |  |
| **creation_date** | **Integer** |  |  |
| **key** | **String** | A unique key used to reference the segment |  |
| **included** | **Array&lt;String&gt;** | An array of user keys for included users. Included users are always segment members, regardless of segment rules. For Big Segments this array is either empty or omitted. | [optional] |
| **excluded** | **Array&lt;String&gt;** | An array of user keys for excluded users. Segment rules bypass excluded users, so they will never be included based on rules. Excluded users may still be included explicitly. This value is omitted for Big Segments. | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | Links to other resources within the API. Includes the URL and content type of those resources. |  |
| **rules** | [**Array&lt;UserSegmentRule&gt;**](UserSegmentRule.md) | An array of the targeting rules for this segment. |  |
| **version** | **Integer** | Version of the segment |  |
| **deleted** | **Boolean** | Whether the segment has been deleted |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_flags** | [**Array&lt;FlagListingRep&gt;**](FlagListingRep.md) |  | [optional] |
| **unbounded** | **Boolean** | Whether this is a standard segment (false) or a Big Segment (true) | [optional] |
| **generation** | **Integer** | For Big Segments, how many times this segment has been created |  |
| **_unbounded_metadata** | [**SegmentMetadata**](SegmentMetadata.md) |  | [optional] |
| **_external** | **String** | The external data store backing this segment. Only applies to Big Segments. | [optional] |
| **_external_link** | **String** | The URL for the external data store backing this segment. Only applies to Big Segments. | [optional] |
| **_import_in_progress** | **Boolean** | Whether an import is currently in progress for the specified segment. Only applies to Big Segments. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserSegment.new(
  name: Example segment,
  description: Bundle our sample users together,
  tags: [&quot;testing&quot;],
  creation_date: null,
  key: example-segment,
  included: [&quot;example-user-key&quot;],
  excluded: [&quot;example-user-to-exclude&quot;],
  _links: null,
  rules: [{&quot;_id&quot;:&quot;1234a56b7c89d012345e678f&quot;,&quot;clauses&quot;:[{&quot;_id&quot;:&quot;12ab3c45de678910fab12345&quot;,&quot;attribute&quot;:&quot;email&quot;,&quot;negate&quot;:false,&quot;op&quot;:&quot;endsWith&quot;,&quot;values&quot;:[&quot;.edu&quot;]}]}],
  version: 1,
  deleted: false,
  _access: null,
  _flags: null,
  unbounded: false,
  generation: null,
  _unbounded_metadata: null,
  _external: amplitude,
  _external_link: https://analytics.amplitude.com/org/1234/cohort/123abc,
  _import_in_progress: false
)
```

