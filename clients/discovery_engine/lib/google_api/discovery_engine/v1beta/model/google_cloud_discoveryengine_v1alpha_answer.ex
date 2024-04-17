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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswer do
  @moduledoc """
  Defines an answer.

  ## Attributes

  *   `answerSkippedReasons` (*type:* `list(String.t)`, *default:* `nil`) - Additional answer-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  *   `answerText` (*type:* `String.t`, *default:* `nil`) - The textual answer.
  *   `citations` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerCitation.t)`, *default:* `nil`) - Citations.
  *   `completeTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Answer completed timestamp.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Answer creation timestamp.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessions/*/answers/*`
  *   `queryUnderstandingInfo` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo.t`, *default:* `nil`) - Query understanding information.
  *   `references` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReference.t)`, *default:* `nil`) - References.
  *   `relatedQuestions` (*type:* `list(String.t)`, *default:* `nil`) - Suggested related questions.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the answer generation.
  *   `steps` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerStep.t)`, *default:* `nil`) - Answer generation steps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answerSkippedReasons => list(String.t()) | nil,
          :answerText => String.t() | nil,
          :citations =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerCitation.t()
            )
            | nil,
          :completeTime => DateTime.t() | nil,
          :createTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :queryUnderstandingInfo =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo.t()
            | nil,
          :references =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReference.t()
            )
            | nil,
          :relatedQuestions => list(String.t()) | nil,
          :state => String.t() | nil,
          :steps =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerStep.t()
            )
            | nil
        }

  field(:answerSkippedReasons, type: :list)
  field(:answerText)

  field(:citations,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerCitation,
    type: :list
  )

  field(:completeTime, as: DateTime)
  field(:createTime, as: DateTime)
  field(:name)

  field(:queryUnderstandingInfo,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo
  )

  field(:references,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReference,
    type: :list
  )

  field(:relatedQuestions, type: :list)
  field(:state)

  field(:steps,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerStep,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswer do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswer.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
