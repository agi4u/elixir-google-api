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

defmodule GoogleApi.BigQuery.V2.Model.SnapshotDefinition do
  @moduledoc """
  Information about base table and snapshot time of the snapshot.

  ## Attributes

  *   `baseTableReference` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - Required. Reference describing the ID of the table that was snapshot.
  *   `snapshotTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The time at which the base table was snapshot. This value is reported in the JSON response using RFC3339 format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseTableReference => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :snapshotTime => DateTime.t() | nil
        }

  field(:baseTableReference, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:snapshotTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.SnapshotDefinition do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.SnapshotDefinition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.SnapshotDefinition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
