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

defmodule GoogleApi.YouTube.V3.Model.PlaylistImage do
  @moduledoc """


  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Identifies this resource (playlist id and image type).
  *   `kind` (*type:* `String.t`, *default:* `youtube#playlistImage`) - Identifies what kind of resource this is. Value: the fixed string "youtube#playlistImages".
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.PlaylistImageSnippet.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :snippet => GoogleApi.YouTube.V3.Model.PlaylistImageSnippet.t() | nil
        }

  field(:id)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.PlaylistImageSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.PlaylistImage do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.PlaylistImage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.PlaylistImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
