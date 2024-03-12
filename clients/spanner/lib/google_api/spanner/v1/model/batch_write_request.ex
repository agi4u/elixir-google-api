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

defmodule GoogleApi.Spanner.V1.Model.BatchWriteRequest do
  @moduledoc """
  The request for BatchWrite.

  ## Attributes

  *   `excludeTxnFromChangeStreams` (*type:* `boolean()`, *default:* `nil`) - Optional. When `exclude_txn_from_change_streams` is set to `true`: * Mutations from all transactions in this batch write operation will not be recorded in change streams with DDL option `allow_txn_exclusion=true` that are tracking columns modified by these transactions. * Mutations from all transactions in this batch write operation will be recorded in change streams with DDL option `allow_txn_exclusion=false or not set` that are tracking columns modified by these transactions. When `exclude_txn_from_change_streams` is set to `false` or not set, mutations from all transactions in this batch write operation will be recorded in all change streams that are tracking columns modified by these transactions.
  *   `mutationGroups` (*type:* `list(GoogleApi.Spanner.V1.Model.MutationGroup.t)`, *default:* `nil`) - Required. The groups of mutations to be applied.
  *   `requestOptions` (*type:* `GoogleApi.Spanner.V1.Model.RequestOptions.t`, *default:* `nil`) - Common options for this request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludeTxnFromChangeStreams => boolean() | nil,
          :mutationGroups => list(GoogleApi.Spanner.V1.Model.MutationGroup.t()) | nil,
          :requestOptions => GoogleApi.Spanner.V1.Model.RequestOptions.t() | nil
        }

  field(:excludeTxnFromChangeStreams)
  field(:mutationGroups, as: GoogleApi.Spanner.V1.Model.MutationGroup, type: :list)
  field(:requestOptions, as: GoogleApi.Spanner.V1.Model.RequestOptions)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.BatchWriteRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.BatchWriteRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.BatchWriteRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
