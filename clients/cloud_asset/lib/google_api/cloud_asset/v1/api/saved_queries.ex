# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudAsset.V1.Api.SavedQueries do
  @moduledoc """
  API calls for all endpoints tagged `SavedQueries`.
  """

  alias GoogleApi.CloudAsset.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Creates a saved query in a parent project/folder/organization.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudAsset.V1.Connection.t`) - Connection to server
  *   `v1_id` (*type:* `String.t`) - Part of `parent`. Required. The name of the project/folder/organization where this saved_query should be created in. It can only be an organization number (such as "organizations/123"), a folder number (such as "folders/123"), a project ID (such as "projects/my-project-id"), or a project number (such as "projects/12345").
  *   `v1_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v1Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:savedQueryId` (*type:* `String.t`) - Required. The ID to use for the saved query, which must be unique in the specified parent. It will become the final component of the saved query's resource name. This value should be 4-63 characters, and valid characters are `a-z-`. Notice that this field is required in the saved query creation, and the `name` field of the `saved_query` will be ignored.
      *   `:body` (*type:* `GoogleApi.CloudAsset.V1.Model.SavedQuery.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudAsset.V1.Model.SavedQuery{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudasset_saved_queries_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudAsset.V1.Model.SavedQuery.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudasset_saved_queries_create(
        connection,
        v1_id,
        v1_id1,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :savedQueryId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{v1Id}/{v1Id1}/savedQueries", %{
        "v1Id" => URI.encode(v1_id, &URI.char_unreserved?/1),
        "v1Id1" => URI.encode(v1_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudAsset.V1.Model.SavedQuery{}])
  end

  @doc """
  Deletes a saved query.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudAsset.V1.Connection.t`) - Connection to server
  *   `v1_id` (*type:* `String.t`) - Part of `name`. Required. The name of the saved query to delete. It must be in the format of: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  *   `v1_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v1Id`.
  *   `saved_queries_id` (*type:* `String.t`) - Part of `name`. See documentation of `v1Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudAsset.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudasset_saved_queries_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudAsset.V1.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudasset_saved_queries_delete(
        connection,
        v1_id,
        v1_id1,
        saved_queries_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{v1Id}/{v1Id1}/savedQueries/{savedQueriesId}", %{
        "v1Id" => URI.encode(v1_id, &URI.char_unreserved?/1),
        "v1Id1" => URI.encode(v1_id1, &URI.char_unreserved?/1),
        "savedQueriesId" => URI.encode(saved_queries_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudAsset.V1.Model.Empty{}])
  end

  @doc """
  Gets details about a saved query.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudAsset.V1.Connection.t`) - Connection to server
  *   `v1_id` (*type:* `String.t`) - Part of `name`. Required. The name of the saved query and it must be in the format of: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  *   `v1_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v1Id`.
  *   `saved_queries_id` (*type:* `String.t`) - Part of `name`. See documentation of `v1Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudAsset.V1.Model.SavedQuery{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudasset_saved_queries_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudAsset.V1.Model.SavedQuery.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudasset_saved_queries_get(
        connection,
        v1_id,
        v1_id1,
        saved_queries_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{v1Id}/{v1Id1}/savedQueries/{savedQueriesId}", %{
        "v1Id" => URI.encode(v1_id, &URI.char_unreserved?/1),
        "v1Id1" => URI.encode(v1_id1, &URI.char_unreserved?/1),
        "savedQueriesId" => URI.encode(saved_queries_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudAsset.V1.Model.SavedQuery{}])
  end

  @doc """
  Lists all saved queries in a parent project/folder/organization.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudAsset.V1.Connection.t`) - Connection to server
  *   `v1_id` (*type:* `String.t`) - Part of `parent`. Required. The parent project/folder/organization whose savedQueries are to be listed. It can only be using project/folder/organization number (such as "folders/12345")", or a project ID (such as "projects/my-project-id").
  *   `v1_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v1Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:filter` (*type:* `String.t`) - Optional. The expression to filter resources. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. When `AND` and `OR` are both used in the expression, parentheses must be appropriately used to group the combinations. The expression may also contain regular expressions. See https://google.aip.dev/160 for more information on the grammar.
      *   `:pageSize` (*type:* `integer()`) - Optional. The maximum number of saved queries to return per page. The service may return fewer than this value. If unspecified, at most 50 will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
      *   `:pageToken` (*type:* `String.t`) - Optional. A page token, received from a previous `ListSavedQueries` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListSavedQueries` must match the call that provided the page token.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudAsset.V1.Model.ListSavedQueriesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudasset_saved_queries_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudAsset.V1.Model.ListSavedQueriesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudasset_saved_queries_list(connection, v1_id, v1_id1, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{v1Id}/{v1Id1}/savedQueries", %{
        "v1Id" => URI.encode(v1_id, &URI.char_unreserved?/1),
        "v1Id1" => URI.encode(v1_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudAsset.V1.Model.ListSavedQueriesResponse{}]
    )
  end

  @doc """
  Updates a saved query.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudAsset.V1.Connection.t`) - Connection to server
  *   `v1_id` (*type:* `String.t`) - Part of `savedQuery.name`. The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  *   `v1_id1` (*type:* `String.t`) - Part of `savedQuery.name`. See documentation of `v1Id`.
  *   `saved_queries_id` (*type:* `String.t`) - Part of `savedQuery.name`. See documentation of `v1Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:updateMask` (*type:* `String.t`) - Required. The list of fields to update.
      *   `:body` (*type:* `GoogleApi.CloudAsset.V1.Model.SavedQuery.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudAsset.V1.Model.SavedQuery{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudasset_saved_queries_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudAsset.V1.Model.SavedQuery.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudasset_saved_queries_patch(
        connection,
        v1_id,
        v1_id1,
        saved_queries_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{v1Id}/{v1Id1}/savedQueries/{savedQueriesId}", %{
        "v1Id" => URI.encode(v1_id, &URI.char_unreserved?/1),
        "v1Id1" => URI.encode(v1_id1, &URI.char_unreserved?/1),
        "savedQueriesId" => URI.encode(saved_queries_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudAsset.V1.Model.SavedQuery{}])
  end
end
