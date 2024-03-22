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

defmodule GoogleApi.Firestore.V1beta1.Model.ExecutionStats do
  @moduledoc """
  Execution statistics for the query.

  ## Attributes

  *   `debugStats` (*type:* `map()`, *default:* `nil`) - Debugging statistics from the execution of the query. Note that the debugging stats are subject to change as Firestore evolves. It could include: { "indexes_entries_scanned": "1000", "documents_scanned": "20", "billing_details" : { "documents_billable": "20", "index_entries_billable": "1000", "min_query_cost": "0" } }
  *   `executionDuration` (*type:* `String.t`, *default:* `nil`) - Total time to execute the query in the backend.
  *   `readOperations` (*type:* `String.t`, *default:* `nil`) - Total billable read operations.
  *   `resultsReturned` (*type:* `String.t`, *default:* `nil`) - Total number of results returned, including documents, projections, aggregation results, keys.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debugStats => map() | nil,
          :executionDuration => String.t() | nil,
          :readOperations => String.t() | nil,
          :resultsReturned => String.t() | nil
        }

  field(:debugStats, type: :map)
  field(:executionDuration)
  field(:readOperations)
  field(:resultsReturned)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.ExecutionStats do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.ExecutionStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.ExecutionStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
