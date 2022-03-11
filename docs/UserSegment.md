# LaunchDarklyApi::UserSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-friendly name for the segment |  |
| **description** | **String** | A description of the segment&#39;s purpose | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the segment |  |
| **creation_date** | **Integer** |  |  |
| **key** | **String** | A unique key used to reference the segment |  |
| **included** | **Array&lt;String&gt;** | Included users are always segment members, regardless of segment rules. For Big Segments this array is either empty or omitted entirely. | [optional] |
| **excluded** | **Array&lt;String&gt;** | Segment rules bypass excluded users, so they will never be included based on rules. Excluded users may still be included explicitly. This value is omitted for Big Segments. | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **rules** | [**Array&lt;UserSegmentRule&gt;**](UserSegmentRule.md) |  |  |
| **version** | **Integer** |  |  |
| **deleted** | **Boolean** |  |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **_flags** | [**Array&lt;FlagListingRep&gt;**](FlagListingRep.md) |  | [optional] |
| **unbounded** | **Boolean** |  | [optional] |
| **generation** | **Integer** |  |  |
| **_unbounded_metadata** | [**SegmentMetadata**](SegmentMetadata.md) |  | [optional] |
| **_external** | **String** |  | [optional] |
| **_external_link** | **String** |  | [optional] |
| **_import_in_progress** | **Boolean** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserSegment.new(
  name: null,
  description: null,
  tags: null,
  creation_date: null,
  key: null,
  included: null,
  excluded: null,
  _links: null,
  rules: null,
  version: null,
  deleted: null,
  _access: null,
  _flags: null,
  unbounded: null,
  generation: null,
  _unbounded_metadata: null,
  _external: null,
  _external_link: null,
  _import_in_progress: null
)
```

