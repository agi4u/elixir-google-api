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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig do
  @moduledoc """
  The OCR parsing configurations for documents.

  ## Attributes

  *   `enhancedDocumentElements` (*type:* `list(String.t)`, *default:* `nil`) - [DEPRECATED] This field is deprecated. To use the additional enhanced document elements processing, please switch to `layout_parsing_config`.
  *   `useNativeText` (*type:* `boolean()`, *default:* `nil`) - If true, will use native text instead of OCR text on pages containing native text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enhancedDocumentElements => list(String.t()) | nil,
          :useNativeText => boolean() | nil
        }

  field(:enhancedDocumentElements, type: :list)
  field(:useNativeText)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
