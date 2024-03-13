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

defmodule GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceRaiSignal do
  @moduledoc """
  An RAI signal for a single category.

  ## Attributes

  *   `confidence` (*type:* `String.t`, *default:* `nil`) - The confidence level for the RAI category.
  *   `flagged` (*type:* `boolean()`, *default:* `nil`) - Whether the category is flagged as being present. Currently, this is set to true if score >= 0.5.
  *   `influentialTerms` (*type:* `list(GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceRaiSignalInfluentialTerm.t)`, *default:* `nil`) - The influential terms that could potentially block the response.
  *   `raiCategory` (*type:* `String.t`, *default:* `nil`) - The RAI category.
  *   `score` (*type:* `number()`, *default:* `nil`) - The score for the category, in the range [0.0, 1.0].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => String.t() | nil,
          :flagged => boolean() | nil,
          :influentialTerms =>
            list(
              GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceRaiSignalInfluentialTerm.t()
            )
            | nil,
          :raiCategory => String.t() | nil,
          :score => number() | nil
        }

  field(:confidence)
  field(:flagged)

  field(:influentialTerms,
    as: GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceRaiSignalInfluentialTerm,
    type: :list
  )

  field(:raiCategory)
  field(:score)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceRaiSignal do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceRaiSignal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceRaiSignal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
