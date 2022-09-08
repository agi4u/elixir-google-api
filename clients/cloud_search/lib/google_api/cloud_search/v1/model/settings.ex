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

defmodule GoogleApi.CloudSearch.V1.Model.Settings do
  @moduledoc """
  Settings of a meeting space that can be viewed and edited by users with permissions. These settings are always populated for output.

  ## Attributes

  *   `accessLock` (*type:* `boolean()`, *default:* `nil`) - The access lock of the meeting space that lets owner control who can join the meeting. True if the access lock feature is enabled for the meeting space.
  *   `attendanceReportEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether attendance report is enabled for the meeting space.
  *   `chatLock` (*type:* `boolean()`, *default:* `nil`) - The chat lock of the meeting space that lets owner control whether the participants can send chat messages. True if the chat lock feature is enabled for the meeting space.
  *   `cohostArtifactSharingEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether meeting artifacts will be shared with co-hosts.
  *   `cseEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether Client-side Encryption is enabled for the meeting space.
  *   `defaultAsViewer` (*type:* `boolean()`, *default:* `nil`) - Whether the default role is viewer or not.
  *   `moderationEnabled` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the meeting space is moderated.
  *   `presentLock` (*type:* `boolean()`, *default:* `nil`) - The present lock of the meeting space that lets owner control whether the participants can present their screen. True if the present lock feature is enabled for the meeting space.
  *   `reactionsLock` (*type:* `boolean()`, *default:* `nil`) - The reactions lock of the meeting space that lets owner control whether the participants can send reactions. True if the reactions lock feature is enabled for the meeting space.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessLock => boolean() | nil,
          :attendanceReportEnabled => boolean() | nil,
          :chatLock => boolean() | nil,
          :cohostArtifactSharingEnabled => boolean() | nil,
          :cseEnabled => boolean() | nil,
          :defaultAsViewer => boolean() | nil,
          :moderationEnabled => boolean() | nil,
          :presentLock => boolean() | nil,
          :reactionsLock => boolean() | nil
        }

  field(:accessLock)
  field(:attendanceReportEnabled)
  field(:chatLock)
  field(:cohostArtifactSharingEnabled)
  field(:cseEnabled)
  field(:defaultAsViewer)
  field(:moderationEnabled)
  field(:presentLock)
  field(:reactionsLock)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.Settings do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.Settings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.Settings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
