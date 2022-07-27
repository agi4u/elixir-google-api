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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilter do
  @moduledoc """
  Defines filters that must occur in a specific order for the user to be a member of the Audience.

  ## Attributes

  *   `scope` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Specifies the scope for this filter.
  *   `sequenceMaximumDuration` (*type:* `String.t`, *default:* `nil`) - Optional. Defines the time period in which the whole sequence must occur.
  *   `sequenceSteps` (*type:* `list(GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep.t)`, *default:* `nil`) - Required. An ordered sequence of steps. A user must complete each step in order to join the sequence filter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :scope => String.t() | nil,
          :sequenceMaximumDuration => String.t() | nil,
          :sequenceSteps =>
            list(
              GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep.t()
            )
            | nil
        }

  field(:scope)
  field(:sequenceMaximumDuration)

  field(:sequenceSteps,
    as:
      GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilter do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end