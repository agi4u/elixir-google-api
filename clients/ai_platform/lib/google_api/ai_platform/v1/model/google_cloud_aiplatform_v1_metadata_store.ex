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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetadataStore do
  @moduledoc """
  Instance of a metadata store. Contains a set of metadata that can be queried.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this MetadataStore was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the MetadataStore.
  *   `encryptionSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t`, *default:* `nil`) - Customer-managed encryption key spec for a Metadata Store. If set, this Metadata Store and all sub-resources of this Metadata Store are secured using this key.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the MetadataStore instance.
  *   `state` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetadataStoreMetadataStoreState.t`, *default:* `nil`) - Output only. State information of the MetadataStore.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this MetadataStore was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :encryptionSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t() | nil,
          :name => String.t() | nil,
          :state =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetadataStoreMetadataStoreState.t()
            | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:encryptionSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec)
  field(:name)

  field(:state,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetadataStoreMetadataStoreState
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetadataStore do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetadataStore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetadataStore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
