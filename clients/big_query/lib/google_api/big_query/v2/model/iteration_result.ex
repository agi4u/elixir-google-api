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

defmodule GoogleApi.BigQuery.V2.Model.IterationResult do
  @moduledoc """
  Information about a single iteration of the training run.

  ## Attributes

  *   `arimaResult` (*type:* `GoogleApi.BigQuery.V2.Model.ArimaResult.t`, *default:* `nil`) - Arima result.
  *   `clusterInfos` (*type:* `list(GoogleApi.BigQuery.V2.Model.ClusterInfo.t)`, *default:* `nil`) - Information about top clusters for clustering models.
  *   `durationMs` (*type:* `String.t`, *default:* `nil`) - Time taken to run the iteration in milliseconds.
  *   `evalLoss` (*type:* `float()`, *default:* `nil`) - Loss computed on the eval data at the end of iteration.
  *   `index` (*type:* `integer()`, *default:* `nil`) - Index of the iteration, 0 based.
  *   `learnRate` (*type:* `float()`, *default:* `nil`) - Learn rate used for this iteration.
  *   `principalComponentInfos` (*type:* `list(GoogleApi.BigQuery.V2.Model.PrincipalComponentInfo.t)`, *default:* `nil`) - The information of the principal components.
  *   `trainingLoss` (*type:* `float()`, *default:* `nil`) - Loss computed on the training data at the end of iteration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arimaResult => GoogleApi.BigQuery.V2.Model.ArimaResult.t() | nil,
          :clusterInfos => list(GoogleApi.BigQuery.V2.Model.ClusterInfo.t()) | nil,
          :durationMs => String.t() | nil,
          :evalLoss => float() | nil,
          :index => integer() | nil,
          :learnRate => float() | nil,
          :principalComponentInfos =>
            list(GoogleApi.BigQuery.V2.Model.PrincipalComponentInfo.t()) | nil,
          :trainingLoss => float() | nil
        }

  field(:arimaResult, as: GoogleApi.BigQuery.V2.Model.ArimaResult)
  field(:clusterInfos, as: GoogleApi.BigQuery.V2.Model.ClusterInfo, type: :list)
  field(:durationMs)
  field(:evalLoss)
  field(:index)
  field(:learnRate)

  field(:principalComponentInfos,
    as: GoogleApi.BigQuery.V2.Model.PrincipalComponentInfo,
    type: :list
  )

  field(:trainingLoss)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.IterationResult do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.IterationResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.IterationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
