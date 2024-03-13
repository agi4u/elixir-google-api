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

defmodule GoogleApi.DisplayVideo.V3.Model.CombinedAudience do
  @moduledoc """
  Describes a combined audience resource.

  ## Attributes

  *   `combinedAudienceId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the combined audience. Assigned by the system.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The display name of the combined audience. .
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the combined audience.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :combinedAudienceId => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil
        }

  field(:combinedAudienceId)
  field(:displayName)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.CombinedAudience do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.CombinedAudience.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.CombinedAudience do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
