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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensRequest do
  @moduledoc """
  Request message for PredictionService.CountTokens.

  ## Attributes

  *   `contents` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t)`, *default:* `nil`) - Required. Input content.
  *   `instances` (*type:* `list(any())`, *default:* `nil`) - Required. The instances that are the input to token counting call. Schema is identical to the prediction schema of the underlying model.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Required. The name of the publisher model requested to serve the prediction. Format: `projects/{project}/locations/{location}/publishers/*/models/*`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contents =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t()) | nil,
          :instances => list(any()) | nil,
          :model => String.t() | nil
        }

  field(:contents, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content, type: :list)
  field(:instances, type: :list)
  field(:model)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
