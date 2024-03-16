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

defmodule GoogleApi.Spanner.V1.Model.ListInstancePartitionOperationsResponse do
  @moduledoc """
  The response for ListInstancePartitionOperations.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - `next_page_token` can be sent in a subsequent ListInstancePartitionOperations call to fetch more of the matching metadata.
  *   `operations` (*type:* `list(GoogleApi.Spanner.V1.Model.Operation.t)`, *default:* `nil`) - The list of matching instance partition long-running operations. Each operation's name will be prefixed by the instance partition's name. The operation's metadata field type `metadata.type_url` describes the type of the metadata.
  *   `unreachableInstancePartitions` (*type:* `list(String.t)`, *default:* `nil`) - The list of unreachable instance partitions. It includes the names of instance partitions whose operation metadata could not be retrieved within instance_partition_deadline.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :operations => list(GoogleApi.Spanner.V1.Model.Operation.t()) | nil,
          :unreachableInstancePartitions => list(String.t()) | nil
        }

  field(:nextPageToken)
  field(:operations, as: GoogleApi.Spanner.V1.Model.Operation, type: :list)
  field(:unreachableInstancePartitions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ListInstancePartitionOperationsResponse do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ListInstancePartitionOperationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ListInstancePartitionOperationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
