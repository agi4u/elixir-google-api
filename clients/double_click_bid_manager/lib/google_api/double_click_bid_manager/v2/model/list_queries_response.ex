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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.ListQueriesResponse do
  @moduledoc """


  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as page_token to retrieve the next page of queries. If this field is omitted, there are no subsequent pages.
  *   `queries` (*type:* `list(GoogleApi.DoubleClickBidManager.V2.Model.Query.t)`, *default:* `nil`) - The list of queries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :queries => list(GoogleApi.DoubleClickBidManager.V2.Model.Query.t()) | nil
        }

  field(:nextPageToken)
  field(:queries, as: GoogleApi.DoubleClickBidManager.V2.Model.Query, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.ListQueriesResponse do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.ListQueriesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.ListQueriesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
