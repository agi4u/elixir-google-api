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

defmodule GoogleApi.BigQuery.V2.Model.RoutineReference do
  @moduledoc """
  Id path of a routine.

  ## Attributes

  *   `datasetId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the dataset containing this routine.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the project containing this routine.
  *   `routineId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasetId => String.t() | nil,
          :projectId => String.t() | nil,
          :routineId => String.t() | nil
        }

  field(:datasetId)
  field(:projectId)
  field(:routineId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.RoutineReference do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.RoutineReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.RoutineReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
