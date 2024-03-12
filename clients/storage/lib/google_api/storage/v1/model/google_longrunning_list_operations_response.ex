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

defmodule GoogleApi.Storage.V1.Model.GoogleLongrunningListOperationsResponse do
  @moduledoc """
  The response message for storage.buckets.operations.list.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
  *   `operations` (*type:* `list(GoogleApi.Storage.V1.Model.GoogleLongrunningOperation.t)`, *default:* `nil`) - A list of operations that matches the specified filter in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :operations => list(GoogleApi.Storage.V1.Model.GoogleLongrunningOperation.t()) | nil
        }

  field(:nextPageToken)
  field(:operations, as: GoogleApi.Storage.V1.Model.GoogleLongrunningOperation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.GoogleLongrunningListOperationsResponse do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.GoogleLongrunningListOperationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.GoogleLongrunningListOperationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
