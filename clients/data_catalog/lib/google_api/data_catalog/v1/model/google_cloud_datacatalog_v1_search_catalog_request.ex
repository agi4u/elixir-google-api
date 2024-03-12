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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SearchCatalogRequest do
  @moduledoc """
  Request message for SearchCatalog.

  ## Attributes

  *   `adminSearch` (*type:* `boolean()`, *default:* `nil`) - Optional. If set, use searchAll permission granted on organizations from `include_org_ids` and projects from `include_project_ids` instead of the fine grained per resource permissions when filtering the search results. The only allowed `order_by` criteria for admin_search mode is `default`. Using this flags guarantees a full recall of the search results.
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - Specifies the order of results. Currently supported case-sensitive values are: * `relevance` that can only be descending * `last_modified_timestamp [asc|desc]` with descending (`desc`) as default * `default` that can only be descending Search queries don't guarantee full recall. Results that match your query might not be returned, even in subsequent result pages. Additionally, returned (and not returned) results can vary if you repeat search queries. If you are experiencing recall issues and you don't have to fetch the results in any specific order, consider setting this parameter to `default`. If this parameter is omitted, it defaults to the descending `relevance`.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Upper bound on the number of results you can get in a single response. Can't be negative or 0, defaults to 10 in this case. The maximum number is 1000. If exceeded, throws an "invalid argument" exception.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. Pagination token that, if specified, returns the next page of search results. If empty, returns the first page. This token is returned in the SearchCatalogResponse.next_page_token field of the response to a previous SearchCatalogRequest call.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Optional. The query string with a minimum of 3 characters and specific syntax. For more information, see [Data Catalog search syntax](https://cloud.google.com/data-catalog/docs/how-to/search-reference). An empty query string returns all data assets (in the specified scope) that you have access to. A query string can be a simple `xyz` or qualified by predicates: * `name:x` * `column:y` * `description:z`
  *   `scope` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SearchCatalogRequestScope.t`, *default:* `nil`) - Required. The scope of this search request. The `scope` is invalid if `include_org_ids`, `include_project_ids` are empty AND `include_gcp_public_datasets` is set to `false`. In this case, the request returns an error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminSearch => boolean() | nil,
          :orderBy => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :query => String.t() | nil,
          :scope =>
            GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SearchCatalogRequestScope.t()
            | nil
        }

  field(:adminSearch)
  field(:orderBy)
  field(:pageSize)
  field(:pageToken)
  field(:query)

  field(:scope,
    as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SearchCatalogRequestScope
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SearchCatalogRequest do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SearchCatalogRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SearchCatalogRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
