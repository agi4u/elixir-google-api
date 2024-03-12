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

defmodule GoogleApi.CloudSupport.V2beta.Model.ListCasesResponse do
  @moduledoc """
  The response message for the ListCases endpoint.

  ## Attributes

  *   `cases` (*type:* `list(GoogleApi.CloudSupport.V2beta.Model.Case.t)`, *default:* `nil`) - The list of cases associated with the parent after any filters have been applied.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results. Set this in the `page_token` field of subsequent `cases.list` requests. If unspecified, there are no more results to retrieve.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cases => list(GoogleApi.CloudSupport.V2beta.Model.Case.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:cases, as: GoogleApi.CloudSupport.V2beta.Model.Case, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSupport.V2beta.Model.ListCasesResponse do
  def decode(value, options) do
    GoogleApi.CloudSupport.V2beta.Model.ListCasesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSupport.V2beta.Model.ListCasesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
