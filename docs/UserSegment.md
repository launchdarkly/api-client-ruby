# LaunchDarklyApi::UserSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the segment. |  |
| **description** | **String** | A description of the segment&#39;s purpose. Defaults to &lt;code&gt;null&lt;/code&gt; and is omitted in the response if not provided. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the segment. Defaults to an empty array. |  |
| **creation_date** | **Integer** |  |  |
| **last_modified_date** | **Integer** |  |  |
| **key** | **String** | A unique key used to reference the segment |  |
| **included** | **Array&lt;String&gt;** | An array of keys for included targets. Included individual targets are always segment members, regardless of segment rules. For list-based segments over 15,000 entries, also called Big Segments, this array is either empty or omitted. | [optional] |
| **excluded** | **Array&lt;String&gt;** | An array of keys for excluded targets. Segment rules bypass individual excluded targets, so they will never be included based on rules. Excluded targets may still be included explicitly. This value is omitted for list-based segments over 15,000 entries, also called Big Segments. | [optional] |
| **included_contexts** | [**Array&lt;SegmentTarget&gt;**](SegmentTarget.md) |  | [optional] |
| **excluded_contexts** | [**Array&lt;SegmentTarget&gt;**](SegmentTarget.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **rules** | [**Array&lt;UserSegmentRule&gt;**](UserSegmentRule.md) | An array of the targeting rules for this segment. |  |
| **version** | **Integer** | Version of the segment |  |
| **deleted** | **Boolean** | Whether the segment has been deleted |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_flags** | [**Array&lt;FlagListingRep&gt;**](FlagListingRep.md) | A list of flags targeting this segment. Only included when getting a single segment, using the &lt;code&gt;getSegment&lt;/code&gt; endpoint. | [optional] |
| **unbounded** | **Boolean** | Whether this is a standard segment (&lt;code&gt;false&lt;/code&gt;) or a Big Segment (&lt;code&gt;true&lt;/code&gt;). Standard segments include rule-based segments and smaller list-based segments. Big Segments include larger list-based segments and synced segments. If omitted, the segment is a standard segment. | [optional] |
| **unbounded_context_kind** | **String** | For Big Segments, the targeted context kind. | [optional] |
| **generation** | **Integer** | For Big Segments, how many times this segment has been created. |  |
| **_unbounded_metadata** | [**SegmentMetadata**](SegmentMetadata.md) |  | [optional] |
| **_external** | **String** | The external data store backing this segment. Only applies to synced segments. | [optional] |
| **_external_link** | **String** | The URL for the external data store backing this segment. Only applies to synced segments. | [optional] |
| **_import_in_progress** | **Boolean** | Whether an import is currently in progress for the specified segment. Only applies to Big Segments. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserSegment.new(
  name: Example segment,
  description: Bundle our sample customers together,
  tags: [&quot;testing&quot;],
  creation_date: null,
  last_modified_date: null,
  key: segment-key-123abc,
  included: [&quot;user-key-123abc&quot;],
  excluded: [&quot;user-key-123abc&quot;],
  included_contexts: null,
  excluded_contexts: null,
  _links: null,
  rules: [{&quot;_id&quot;:&quot;1234a56b7c89d012345e678f&quot;,&quot;clauses&quot;:[{&quot;_id&quot;:&quot;12ab3c45de678910fab12345&quot;,&quot;attribute&quot;:&quot;email&quot;,&quot;negate&quot;:false,&quot;op&quot;:&quot;endsWith&quot;,&quot;values&quot;:[&quot;.edu&quot;]}]}],
  version: 1,
  deleted: false,
  _access: null,
  _flags: null,
  unbounded: false,
  unbounded_context_kind: null,
  generation: null,
  _unbounded_metadata: null,
  _external: amplitude,
  _external_link: https://analytics.amplitude.com/org/1234/cohort/123abc,
  _import_in_progress: false
)
```

