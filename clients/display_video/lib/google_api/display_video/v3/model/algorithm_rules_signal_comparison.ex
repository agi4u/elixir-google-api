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

defmodule GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignalComparison do
  @moduledoc """
  A single comparison. The comparison compares the `signal` to the `comparisonValue`. The comparison of `siteId==123` is represented with the following field values: * `signal` has an `impressionSignal` of `SITE_ID`. * `comparisonOperator` is set to `EQUAL`. * `comparisonValue` is set to 123.

  ## Attributes

  *   `comparisonOperator` (*type:* `String.t`, *default:* `nil`) - Operator used to compare the two values. In the resulting experession, the `signal` will be the first value and the `comparisonValue will be the second.
  *   `comparisonValue` (*type:* `GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesComparisonValue.t`, *default:* `nil`) - Value to compare signal to.
  *   `signal` (*type:* `GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignal.t`, *default:* `nil`) - Signal to compare.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comparisonOperator => String.t() | nil,
          :comparisonValue =>
            GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesComparisonValue.t() | nil,
          :signal => GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignal.t() | nil
        }

  field(:comparisonOperator)
  field(:comparisonValue, as: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesComparisonValue)
  field(:signal, as: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignal)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignalComparison do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignalComparison.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignalComparison do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
