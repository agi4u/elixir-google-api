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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata do
  @moduledoc """
  Runtime operation metadata with regard to Matching Engine Index.

  ## Attributes

  *   `contentValidationStats` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataContentValidationStats.t)`, *default:* `nil`) - The validation stats of the content (per file) to be inserted or updated on the Matching Engine Index resource. Populated if contentsDeltaUri is provided as part of Index.metadata. Please note that, currently for those files that are broken or has unsupported file format, we will not have the stats for those files.
  *   `dataBytesCount` (*type:* `String.t`, *default:* `nil`) - The ingested data size in bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentValidationStats =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataContentValidationStats.t()
            )
            | nil,
          :dataBytesCount => String.t() | nil
        }

  field(:contentValidationStats,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataContentValidationStats,
    type: :list
  )

  field(:dataBytesCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
