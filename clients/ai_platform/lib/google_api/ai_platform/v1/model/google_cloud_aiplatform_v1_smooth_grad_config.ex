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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SmoothGradConfig do
  @moduledoc """
  Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf

  ## Attributes

  *   `featureNoiseSigma` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureNoiseSigma.t`, *default:* `nil`) - This is similar to noise_sigma, but provides additional flexibility. A separate noise sigma can be provided for each feature, which is useful if their distributions are different. No noise is added to features that are not set. If this field is unset, noise_sigma will be used for all features.
  *   `noiseSigma` (*type:* `number()`, *default:* `nil`) - This is a single float value and will be used to add noise to all the features. Use this field when all features are normalized to have the same distribution: scale to range [0, 1], [-1, 1] or z-scoring, where features are normalized to have 0-mean and 1-variance. Learn more about [normalization](https://developers.google.com/machine-learning/data-prep/transform/normalization). For best results the recommended value is about 10% - 20% of the standard deviation of the input feature. Refer to section 3.2 of the SmoothGrad paper: https://arxiv.org/pdf/1706.03825.pdf. Defaults to 0.1. If the distribution is different per feature, set feature_noise_sigma instead for each feature.
  *   `noisySampleCount` (*type:* `integer()`, *default:* `nil`) - The number of gradient samples to use for approximation. The higher this number, the more accurate the gradient is, but the runtime complexity increases by this factor as well. Valid range of its value is [1, 50]. Defaults to 3.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :featureNoiseSigma =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureNoiseSigma.t() | nil,
          :noiseSigma => number() | nil,
          :noisySampleCount => integer() | nil
        }

  field(:featureNoiseSigma,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureNoiseSigma
  )

  field(:noiseSigma)
  field(:noisySampleCount)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SmoothGradConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SmoothGradConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SmoothGradConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
