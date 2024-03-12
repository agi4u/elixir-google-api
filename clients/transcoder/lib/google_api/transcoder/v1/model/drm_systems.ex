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

defmodule GoogleApi.Transcoder.V1.Model.DrmSystems do
  @moduledoc """
  Defines configuration for DRM systems in use.

  ## Attributes

  *   `clearkey` (*type:* `GoogleApi.Transcoder.V1.Model.Clearkey.t`, *default:* `nil`) - Clearkey configuration.
  *   `fairplay` (*type:* `GoogleApi.Transcoder.V1.Model.Fairplay.t`, *default:* `nil`) - Fairplay configuration.
  *   `playready` (*type:* `GoogleApi.Transcoder.V1.Model.Playready.t`, *default:* `nil`) - Playready configuration.
  *   `widevine` (*type:* `GoogleApi.Transcoder.V1.Model.Widevine.t`, *default:* `nil`) - Widevine configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clearkey => GoogleApi.Transcoder.V1.Model.Clearkey.t() | nil,
          :fairplay => GoogleApi.Transcoder.V1.Model.Fairplay.t() | nil,
          :playready => GoogleApi.Transcoder.V1.Model.Playready.t() | nil,
          :widevine => GoogleApi.Transcoder.V1.Model.Widevine.t() | nil
        }

  field(:clearkey, as: GoogleApi.Transcoder.V1.Model.Clearkey)
  field(:fairplay, as: GoogleApi.Transcoder.V1.Model.Fairplay)
  field(:playready, as: GoogleApi.Transcoder.V1.Model.Playready)
  field(:widevine, as: GoogleApi.Transcoder.V1.Model.Widevine)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.DrmSystems do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.DrmSystems.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.DrmSystems do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
