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

defmodule GoogleApi.Spanner.V1.Model.UpdateDatabaseRequest do
  @moduledoc """
  The request for UpdateDatabase.

  ## Attributes

  *   `database` (*type:* `GoogleApi.Spanner.V1.Model.Database.t`, *default:* `nil`) - Required. The database to update. The `name` field of the database is of the form `projects//instances//databases/`.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Required. The list of fields to update. Currently, only `enable_drop_protection` field can be updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :database => GoogleApi.Spanner.V1.Model.Database.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:database, as: GoogleApi.Spanner.V1.Model.Database)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.UpdateDatabaseRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.UpdateDatabaseRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.UpdateDatabaseRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
