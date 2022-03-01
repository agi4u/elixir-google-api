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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1Processor do
  @moduledoc """
  The first-class citizen for Document AI. Each processor defines how to extract structural information from a document.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the processor was created.
  *   `defaultProcessorVersion` (*type:* `String.t`, *default:* `nil`) - The default processor version.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the processor.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The resource name of the processor. Format: `projects/{project}/locations/{location}/processors/{processor}`
  *   `processEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The http endpoint that can be called to invoke processing.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the processor.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The processor type, e.g., OCR_PROCESSOR, INVOICE_PROCESSOR, etc. To get a list of processors types, see FetchProcessorTypes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :defaultProcessorVersion => String.t() | nil,
          :displayName => String.t() | nil,
          :kmsKeyName => String.t() | nil,
          :name => String.t() | nil,
          :processEndpoint => String.t() | nil,
          :state => String.t() | nil,
          :type => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:defaultProcessorVersion)
  field(:displayName)
  field(:kmsKeyName)
  field(:name)
  field(:processEndpoint)
  field(:state)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1Processor do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1Processor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1Processor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
