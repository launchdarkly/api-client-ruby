# SwaggerClient::TeamMembersApi

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_member**](TeamMembersApi.md#delete_member) | **DELETE** /members/{memberId} | Delete a team member by ID.
[**get_member**](TeamMembersApi.md#get_member) | **GET** /members/{memberId} | Get a single team member by ID.
[**get_members**](TeamMembersApi.md#get_members) | **GET** /members | Returns a list of all members in the account.
[**patch_member**](TeamMembersApi.md#patch_member) | **PATCH** /members/{memberId} | Modify a team member by ID.
[**post_members**](TeamMembersApi.md#post_members) | **POST** /members | Invite new members.


# **delete_member**
> delete_member(member_id, )

Delete a team member by ID.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::TeamMembersApi.new

member_id = "member_id_example" # String | The member ID.


begin
  #Delete a team member by ID.
  api_instance.delete_member(member_id, )
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TeamMembersApi->delete_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_id** | **String**| The member ID. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_member**
> Member get_member(member_id, )

Get a single team member by ID.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::TeamMembersApi.new

member_id = "member_id_example" # String | The member ID.


begin
  #Get a single team member by ID.
  result = api_instance.get_member(member_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TeamMembersApi->get_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_id** | **String**| The member ID. | 

### Return type

[**Member**](Member.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_members**
> Members get_members

Returns a list of all members in the account.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::TeamMembersApi.new

begin
  #Returns a list of all members in the account.
  result = api_instance.get_members
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TeamMembersApi->get_members: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Members**](Members.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_member**
> Member patch_member(member_id, patch_delta)

Modify a team member by ID.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::TeamMembersApi.new

member_id = "member_id_example" # String | The member ID.

patch_delta = [SwaggerClient::PatchOperation.new] # Array<PatchOperation> | Requires a JSON Patch representation of the desired changes to the project. 'http://jsonpatch.com/'


begin
  #Modify a team member by ID.
  result = api_instance.patch_member(member_id, patch_delta)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TeamMembersApi->patch_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_id** | **String**| The member ID. | 
 **patch_delta** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)| Requires a JSON Patch representation of the desired changes to the project. &#39;http://jsonpatch.com/&#39; | 

### Return type

[**Member**](Member.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_members**
> post_members(members_body)

Invite new members.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::TeamMembersApi.new

members_body = [SwaggerClient::MembersBody.new] # Array<MembersBody> | New members to invite.


begin
  #Invite new members.
  api_instance.post_members(members_body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TeamMembersApi->post_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **members_body** | [**Array&lt;MembersBody&gt;**](MembersBody.md)| New members to invite. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



