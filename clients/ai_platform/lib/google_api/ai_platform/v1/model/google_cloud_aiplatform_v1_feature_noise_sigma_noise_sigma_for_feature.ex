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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature do
  @moduledoc """
  Noise sigma for a single feature.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the input feature for which noise sigma is provided. The features are defined in explanation metadata inputs.
  *   `sigma` (*type:* `number()`, *default:* `nil`) - This represents the standard deviation of the Gaussian kernel that will be used to add noise to the feature prior to computing gradients. Similar to noise_sigma but represents the noise added to the current feature. Defaults to 0.1.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :sigma => number() | nil
        }

  field(:name)
  field(:sigma)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
