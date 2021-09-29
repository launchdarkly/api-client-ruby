# LaunchDarklyApi::TeamsBetaApi

All URIs are relative to *https://app.launchdarkly.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_team**](TeamsBetaApi.md#delete_team) | **DELETE** /api/v2/teams/{key} | Delete team by key |
| [**get_team**](TeamsBetaApi.md#get_team) | **GET** /api/v2/teams/{key} | Get team by key |
| [**get_teams**](TeamsBetaApi.md#get_teams) | **GET** /api/v2/teams | Get all teams |
| [**patch_team**](TeamsBetaApi.md#patch_team) | **PATCH** /api/v2/teams/{key} | Patch team by key |
| [**post_team**](TeamsBetaApi.md#post_team) | **POST** /api/v2/teams | Create team |


## delete_team

> delete_team(key)

Delete team by key

Delete a team by key.

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
  # Delete team by key
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
  # Delete team by key
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
- **Accept**: Not defined


## get_team

> <TeamRep> get_team(key)

Get team by key

Fetch a team by key.

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
  # Get team by key
  result = api_instance.get_team(key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->get_team: #{e}"
end
```

#### Using the get_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamRep>, Integer, Hash)> get_team_with_http_info(key)

```ruby
begin
  # Get team by key
  data, status_code, headers = api_instance.get_team_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->get_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The team key |  |

### Return type

[**TeamRep**](TeamRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_teams

> <TeamCollectionRep> get_teams

Get all teams

Fetch all teams.

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

begin
  # Get all teams
  result = api_instance.get_teams
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->get_teams: #{e}"
end
```

#### Using the get_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamCollectionRep>, Integer, Hash)> get_teams_with_http_info

```ruby
begin
  # Get all teams
  data, status_code, headers = api_instance.get_teams_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamCollectionRep>
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->get_teams_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TeamCollectionRep**](TeamCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_team

> <TeamCollectionRep> patch_team(key, team_patch_input)

Patch team by key

Perform a partial update to a team.  The body of a semantic patch request takes the following three properties:  1. comment `string`: (Optional) A description of the update. 1. environmentKey `string`: (Required) The key of the LaunchDarkly environment. 1. instructions `array`: (Required) The action or list of actions to be performed by the update. Each update action in the list must be an object/hash table with a `kind` property, although depending on the action, other properties may be necessary. Read below for more information on the specific supported semantic patch instructions.  If any instruction in the patch encounters an error, the error will be returned and the flag will not be changed. In general, instructions will silently do nothing if the flag is already in the state requested by the patch instruction. They will generally error if a parameter refers to something that does not exist. Other specific error conditions are noted in the instruction descriptions.  ### Instructions  #### `addCustomRoles`  Adds custom roles to the team. Team members will have these custom roles granted to them.  ##### Parameters  - `values`: list of custom role keys  #### `removeCustomRoles`  Removes the custom roles on the team. Team members will no longer have these custom roles granted to them.  ##### Parameters  - `values`: list of custom role keys  #### `addMembers`  Adds members to the team.  ##### Parameters  - `values`: list of member IDs  #### `removeMembers`  Removes members from the team.  ##### Parameters  - `values`: list of member IDs  #### `addPermissionGrants`  Adds permission grants to members for the team, allowing them to, for example, act as a team maintainer. A permission grant may have either an `actionSet` or a list of `actions` but not both at the same time. The members do not have to be team members to have a permission grant for the team.  ##### Parameters  - `actionSet`: name of the action set - `actions`: list of actions - `memberIDs`: list of member IDs  #### `removePermissionGrants`  Removes permission grants from members for the team. The `actionSet` and `actions` must match an existing permission grant.  ##### Parameters  - `actionSet`: name of the action set - `actions`: list of actions - `memberIDs`: list of member IDs  #### `updateDescription`  Updates the team's description.  ##### Parameters  - `value`: the team's new description  #### `updateName`  Updates the team's name.  ##### Parameters  - `value`: the team's new name 

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
  # Patch team by key
  result = api_instance.patch_team(key, team_patch_input)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Error when calling TeamsBetaApi->patch_team: #{e}"
end
```

#### Using the patch_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamCollectionRep>, Integer, Hash)> patch_team_with_http_info(key, team_patch_input)

```ruby
begin
  # Patch team by key
  data, status_code, headers = api_instance.patch_team_with_http_info(key, team_patch_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamCollectionRep>
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

[**TeamCollectionRep**](TeamCollectionRep.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_team

> <TeamRep> post_team(team_post_input)

Create team

Create a team.

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
team_post_input = LaunchDarklyApi::TeamPostInput.new # TeamPostInput | 

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

