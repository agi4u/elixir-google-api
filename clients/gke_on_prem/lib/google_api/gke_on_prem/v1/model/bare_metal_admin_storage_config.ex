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

defmodule GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminStorageConfig do
  @moduledoc """
  BareMetalAdminStorageConfig specifies the cluster storage configuration.

  ## Attributes

  *   `lvpNodeMountsConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalLvpConfig.t`, *default:* `nil`) - Required. Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  *   `lvpShareConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalLvpShareConfig.t`, *default:* `nil`) - Required. Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lvpNodeMountsConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalLvpConfig.t() | nil,
          :lvpShareConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalLvpShareConfig.t() | nil
        }

  field(:lvpNodeMountsConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalLvpConfig)
  field(:lvpShareConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalLvpShareConfig)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminStorageConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminStorageConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminStorageConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
