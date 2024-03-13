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

defmodule GoogleApi.DisplayVideo.V3.Model.AssetAssociation do
  @moduledoc """
  Asset association for the creative.

  ## Attributes

  *   `asset` (*type:* `GoogleApi.DisplayVideo.V3.Model.Asset.t`, *default:* `nil`) - The associated asset.
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role of this asset for the creative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asset => GoogleApi.DisplayVideo.V3.Model.Asset.t() | nil,
          :role => String.t() | nil
        }

  field(:asset, as: GoogleApi.DisplayVideo.V3.Model.Asset)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.AssetAssociation do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.AssetAssociation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.AssetAssociation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
