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

defmodule GoogleApi.DisplayVideo.V3.Model.PerformanceGoal do
  @moduledoc """
  Settings that control the performance goal of a campaign.

  ## Attributes

  *   `performanceGoalAmountMicros` (*type:* `String.t`, *default:* `nil`) - The goal amount, in micros of the advertiser's currency. Applicable when performance_goal_type is one of: * `PERFORMANCE_GOAL_TYPE_CPM` * `PERFORMANCE_GOAL_TYPE_CPC` * `PERFORMANCE_GOAL_TYPE_CPA` * `PERFORMANCE_GOAL_TYPE_CPIAVC` * `PERFORMANCE_GOAL_TYPE_VCPM` For example 1500000 represents 1.5 standard units of the currency.
  *   `performanceGoalPercentageMicros` (*type:* `String.t`, *default:* `nil`) - The decimal representation of the goal percentage in micros. Applicable when performance_goal_type is one of: * `PERFORMANCE_GOAL_TYPE_CTR` * `PERFORMANCE_GOAL_TYPE_VIEWABILITY` * `PERFORMANCE_GOAL_TYPE_CLICK_CVR` * `PERFORMANCE_GOAL_TYPE_IMPRESSION_CVR` * `PERFORMANCE_GOAL_TYPE_VTR` * `PERFORMANCE_GOAL_TYPE_AUDIO_COMPLETION_RATE` * `PERFORMANCE_GOAL_TYPE_VIDEO_COMPLETION_RATE` For example, 70000 represents 7% (decimal 0.07).
  *   `performanceGoalString` (*type:* `String.t`, *default:* `nil`) - A key performance indicator (KPI) string, which can be empty. Must be UTF-8 encoded with a length of no more than 100 characters. Applicable when performance_goal_type is set to `PERFORMANCE_GOAL_TYPE_OTHER`.
  *   `performanceGoalType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the performance goal.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :performanceGoalAmountMicros => String.t() | nil,
          :performanceGoalPercentageMicros => String.t() | nil,
          :performanceGoalString => String.t() | nil,
          :performanceGoalType => String.t() | nil
        }

  field(:performanceGoalAmountMicros)
  field(:performanceGoalPercentageMicros)
  field(:performanceGoalString)
  field(:performanceGoalType)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.PerformanceGoal do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.PerformanceGoal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.PerformanceGoal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
