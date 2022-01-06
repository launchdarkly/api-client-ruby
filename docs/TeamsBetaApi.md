# LaunchDarklyApi::TeamsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_team**](TeamsBetaApi.md#delete_team) | **DELETE** /api/v2/teams/{key} | Delete team |
| [**get_team**](TeamsBetaApi.md#get_team) | **GET** /api/v2/teams/{key} | Get team |
| [**get_teams**](TeamsBetaApi.md#get_teams) | **GET** /api/v2/teams | List teams |
| [**patch_team**](TeamsBetaApi.md#patch_team) | **PATCH** /api/v2/teams/{key} | Update team |
| [**post_team**](TeamsBetaApi.md#post_team) | **POST** /api/v2/teams | Create team |
| [**post_team_members**](TeamsBetaApi.md#post_team_members) | **POST** /api/v2/teams/{key}/members | Add members to team |


## delete_team

> delete_team(key)

Delete team

Delete a team by key

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::TeamsBetaApi.new
key = 'key_example' # String | The team key

begin
  # Delete team
  api_instance.delete_team(key)
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->delete_team: #{e}"
end
```

#### Using the delete_team_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_team_with_http_info(key)

```ruby
begin
  # Delete team
  data, status_code, headers = api_instance.delete_team_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->delete_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The team key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team

> <ExpandedTeamRep> get_team(key)

Get team

Fetch a team by key

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::TeamsBetaApi.new
key = 'key_example' # String | The team key

begin
  # Get team
  result = api_instance.get_team(key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->get_team: #{e}"
end
```

#### Using the get_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpandedTeamRep>, Integer, Hash)> get_team_with_http_info(key)

```ruby
begin
  # Get team
  data, status_code, headers = api_instance.get_team_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpandedTeamRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->get_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The team key |  |

### Return type

[**ExpandedTeamRep**](ExpandedTeamRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_teams

> <TeamCollectionRep> get_teams(opts)

List teams

Return a list of teams.  By default, this returns the first 20 teams. Page through this list with the `limit` parameter and by following the `first`, `prev`, `next`, and `last` links in the returned `_links` field. These links are not present if the pages they refer to don't exist. For example, the `first` and `prev` links will be missing from the response on the first page.  ### Filtering teams  LaunchDarkly supports the `query` field for filtering. `query` is a string that matches against the teams' names and keys. It is not case sensitive. For example, the filter `query:abc` matches teams with the string `abc` in their name or key. 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::TeamsBetaApi.new
opts = {
  limit: 789, # Integer | The number of teams to return in the response. Defaults to 20.
  offset: 789, # Integer | Where to start in the list. This is for use with pagination. For example, an offset of 10 would skip the first ten items and then return the next `limit` items.
  filter: 'filter_example' # String | A comma-separated list of filters. Each filter is of the form `field:value`. Supported fields are explained above.
}

begin
  # List teams
  result = api_instance.get_teams(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->get_teams: #{e}"
end
```

#### Using the get_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamCollectionRep>, Integer, Hash)> get_teams_with_http_info(opts)

```ruby
begin
  # List teams
  data, status_code, headers = api_instance.get_teams_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->get_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of teams to return in the response. Defaults to 20. | [optional] |
| **offset** | **Integer** | Where to start in the list. This is for use with pagination. For example, an offset of 10 would skip the first ten items and then return the next &#x60;limit&#x60; items. | [optional] |
| **filter** | **String** | A comma-separated list of filters. Each filter is of the form &#x60;field:value&#x60;. Supported fields are explained above. | [optional] |

### Return type

[**TeamCollectionRep**](TeamCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_team

> <ExpandedTeamRep> patch_team(key, team_patch_input)

Update team

Perform a partial update to a team.  The body of a semantic patch request takes the following three properties:  1. comment `string`: (Optional) A description of the update. 1. instructions `array`: (Required) The action or list of actions to be performed by the update. Each update action in the list must be an object/hash table with a `kind` property, although depending on the action, other properties may be necessary. Read below for more information on the specific supported semantic patch instructions.  If any instruction in the patch encounters an error, the error will be returned and the flag will not be changed. In general, instructions will silently do nothing if the flag is already in the state requested by the patch instruction. They will generally error if a parameter refers to something that does not exist. Other specific error conditions are noted in the instruction descriptions.  ### Instructions  #### `addCustomRoles`  Adds custom roles to the team. Team members will have these custom roles granted to them.  ##### Parameters  - `values`: list of custom role keys  #### `removeCustomRoles`  Removes the custom roles on the team. Team members will no longer have these custom roles granted to them.  ##### Parameters  - `values`: list of custom role keys  #### `addMembers`  Adds members to the team.  ##### Parameters  - `values`: list of member IDs  #### `removeMembers`  Removes members from the team.  ##### Parameters  - `values`: list of member IDs  #### `addPermissionGrants`  Adds permission grants to members for the team, allowing them to, for example, act as a team maintainer. A permission grant may have either an `actionSet` or a list of `actions` but not both at the same time. The members do not have to be team members to have a permission grant for the team.  ##### Parameters  - `actionSet`: name of the action set - `actions`: list of actions - `memberIDs`: list of member IDs  #### `removePermissionGrants`  Removes permission grants from members for the team. The `actionSet` and `actions` must match an existing permission grant.  ##### Parameters  - `actionSet`: name of the action set - `actions`: list of actions - `memberIDs`: list of member IDs  #### `updateDescription`  Updates the team's description.  ##### Parameters  - `value`: the team's new description  #### `updateName`  Updates the team's name.  ##### Parameters  - `value`: the team's new name 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::TeamsBetaApi.new
key = 'key_example' # String | The team key
team_patch_input = LaunchDarklyApi::TeamPatchInput.new # TeamPatchInput | 

begin
  # Update team
  result = api_instance.patch_team(key, team_patch_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->patch_team: #{e}"
end
```

#### Using the patch_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpandedTeamRep>, Integer, Hash)> patch_team_with_http_info(key, team_patch_input)

```ruby
begin
  # Update team
  data, status_code, headers = api_instance.patch_team_with_http_info(key, team_patch_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpandedTeamRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->patch_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The team key |  |
| **team_patch_input** | [**TeamPatchInput**](TeamPatchInput.md) |  |  |

### Return type

[**ExpandedTeamRep**](ExpandedTeamRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_team

> <TeamRep> post_team(team_post_input)

Create team

Create a team

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::TeamsBetaApi.new
team_post_input = LaunchDarklyApi::TeamPostInput.new({key: 'key_example', name: 'name_example'}) # TeamPostInput | 

begin
  # Create team
  result = api_instance.post_team(team_post_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->post_team: #{e}"
end
```

#### Using the post_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamRep>, Integer, Hash)> post_team_with_http_info(team_post_input)

```ruby
begin
  # Create team
  data, status_code, headers = api_instance.post_team_with_http_info(team_post_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->post_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_post_input** | [**TeamPostInput**](TeamPostInput.md) |  |  |

### Return type

[**TeamRep**](TeamRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_team_members

> <TeamImportsRep> post_team_members(key, opts)

Add members to team

Add multiple members to an existing team by uploading a CSV file of member email addresses. Your CSV file must include email addresses in the first column. You can include data in additional columns, but LaunchDarkly ignores all data outside the first column. Headers are optional.  **Members are only added on a `201` response.** A `207` indicates the CSV file contains a combination of valid and invalid entries and will _not_ result in any members being added to the team.  On a `207` response, if an entry contains bad user input the `message` field will contain the row number as well as the reason for the error. The `message` field will be omitted if the entry is valid.  Example `207` response: ```json {   \"items\": [     {       \"status\": \"success\",       \"value\": \"a-valid-email@launchdarkly.com\"     },     {       \"message\": \"Line 2: empty row\",       \"status\": \"error\",       \"value\": \"\"     },     {       \"message\": \"Line 3: email already exists in the specified team\",       \"status\": \"error\",       \"value\": \"existing-team-member@launchdarkly.com\"     },     {       \"message\": \"Line 4: invalid email formatting\",       \"status\": \"error\",       \"value\": \"invalid email format\"     }   ] } ```  Message | Resolution --- | --- Empty row | This line is blank. Add an email address and try again. Duplicate entry | This email address appears in the file twice. Remove the email from the file and try again. Email already exists in the specified team | This member is already on your team. Remove the email from the file and try again. Invalid formatting | This email address is not formatted correctly. Fix the formatting and try again. Email does not belong to a LaunchDarkly member | The email address doesn't belong to a LaunchDarkly account member. Invite them to LaunchDarkly, then re-add them to the team.  On a `400` response, the `message` field may contain errors specific to this endpoint.  Example `400` response: ```json {   \"code\": \"invalid_request\",   \"message\": \"Unable to process file\" } ```  Message | Resolution --- | --- Unable to process file | LaunchDarkly could not process the file for an unspecified reason. Review your file for errors and try again. File exceeds 25mb | Break up your file into multiple files of less than 25mbs each. All emails have invalid formatting | None of the email addresses in the file are in the correct format. Fix the formatting and try again. All emails belong to existing team members | All listed members are already on this team. Populate the file with member emails that do not belong to the team and try again. File is empty | The CSV file does not contain any email addresses. Populate the file and try again. No emails belong to members of your LaunchDarkly organization | None of the email addresses belong to members of your LaunchDarkly account. Invite these members to LaunchDarkly, then re-add them to the team. 

### Examples

```ruby
require 'time'
require 'launchdarkly_api'
# setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = LaunchDarklyApi::TeamsBetaApi.new
key = 'key_example' # String | The team key
opts = {
  file: File.new('/path/to/some/file') # File | CSV file containing email addresses
}

begin
  # Add members to team
  result = api_instance.post_team_members(key, opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->post_team_members: #{e}"
end
```

#### Using the post_team_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamImportsRep>, Integer, Hash)> post_team_members_with_http_info(key, opts)

```ruby
begin
  # Add members to team
  data, status_code, headers = api_instance.post_team_members_with_http_info(key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamImportsRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->post_team_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The team key |  |
| **file** | **File** | CSV file containing email addresses | [optional] |

### Return type

[**TeamImportsRep**](TeamImportsRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

