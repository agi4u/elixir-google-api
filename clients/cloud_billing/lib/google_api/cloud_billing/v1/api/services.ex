# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudBilling.V1.Api.Services do
  @moduledoc """
  API calls for all endpoints tagged `Services`.
  """

  alias GoogleApi.CloudBilling.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists all public cloud services.

  ## Parameters

  - connection (GoogleApi.CloudBilling.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (boolean()): Pretty-print response.
    - :bearer_token (String.t): OAuth bearer token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :pageToken (String.t): A token identifying a page of results to return. This should be a &#x60;next_page_token&#x60; value returned from a previous &#x60;ListServices&#x60; call. If unspecified, the first page of results is returned.
    - :pageSize (integer()): Requested page size. Defaults to 5000.

  ## Returns

  {:ok, %GoogleApi.CloudBilling.V1.Model.ListServicesResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudbilling_services_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.ListServicesResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudbilling_services_list(connection, opts \\ []) do
    optional_params = %{
      :upload_protocol => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :quotaUser => :query,
      :pp => :query,
      :bearer_token => :query,
      :oauth_token => :query,
      :pageToken => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/services")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudBilling.V1.Model.ListServicesResponse{})
  end

  @doc """
  Lists all publicly available SKUs for a given cloud service.

  ## Parameters

  - connection (GoogleApi.CloudBilling.V1.Connection): Connection to server
  - parent (String.t): The name of the service. Example: \&quot;services/DA34-426B-A397\&quot;
  - opts (KeywordList): [optional] Optional parameters
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (boolean()): Pretty-print response.
    - :bearer_token (String.t): OAuth bearer token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :endTime (DateTime.t): Optional exclusive end time of the time range for which the pricing versions will be returned. Timestamps in the future are not allowed. The time range has to be within a single calendar month in America/Los_Angeles timezone. Time range as a whole is optional. If not specified, the latest pricing will be returned (up to 12 hours old at most).
    - :pageToken (String.t): A token identifying a page of results to return. This should be a &#x60;next_page_token&#x60; value returned from a previous &#x60;ListSkus&#x60; call. If unspecified, the first page of results is returned.
    - :startTime (DateTime.t): Optional inclusive start time of the time range for which the pricing versions will be returned. Timestamps in the future are not allowed. The time range has to be within a single calendar month in America/Los_Angeles timezone. Time range as a whole is optional. If not specified, the latest pricing will be returned (up to 12 hours old at most).
    - :pageSize (integer()): Requested page size. Defaults to 5000.
    - :currencyCode (String.t): The ISO 4217 currency code for the pricing info in the response proto. Will use the conversion rate as of start_time. Optional. If not specified USD will be used.

  ## Returns

  {:ok, %GoogleApi.CloudBilling.V1.Model.ListSkusResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudbilling_services_skus_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.ListSkusResponse.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_services_skus_list(connection, parent, opts \\ []) do
    optional_params = %{
      :upload_protocol => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :quotaUser => :query,
      :pp => :query,
      :bearer_token => :query,
      :oauth_token => :query,
      :endTime => :query,
      :pageToken => :query,
      :startTime => :query,
      :pageSize => :query,
      :currencyCode => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/skus", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudBilling.V1.Model.ListSkusResponse{})
  end
end
