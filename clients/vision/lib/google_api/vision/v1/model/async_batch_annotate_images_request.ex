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

defmodule GoogleApi.Vision.V1.Model.AsyncBatchAnnotateImagesRequest do
  @moduledoc """
  Request for async image annotation for a list of images.

  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
  *   `outputConfig` (*type:* `GoogleApi.Vision.V1.Model.OutputConfig.t`, *default:* `nil`) - Required. The desired output location and metadata (e.g. format).
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Optional. Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no parent is specified, a region will be chosen automatically. Supported location-ids: `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`: The European Union. Example: `projects/project-A/locations/eu`.
  *   `requests` (*type:* `list(GoogleApi.Vision.V1.Model.AnnotateImageRequest.t)`, *default:* `nil`) - Required. Individual image annotation requests for this batch.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map() | nil,
          :outputConfig => GoogleApi.Vision.V1.Model.OutputConfig.t() | nil,
          :parent => String.t() | nil,
          :requests => list(GoogleApi.Vision.V1.Model.AnnotateImageRequest.t()) | nil
        }

  field(:labels, type: :map)
  field(:outputConfig, as: GoogleApi.Vision.V1.Model.OutputConfig)
  field(:parent)
  field(:requests, as: GoogleApi.Vision.V1.Model.AnnotateImageRequest, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.AsyncBatchAnnotateImagesRequest do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.AsyncBatchAnnotateImagesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.AsyncBatchAnnotateImagesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
