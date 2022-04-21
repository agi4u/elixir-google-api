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

defmodule GoogleApi.CloudSearch.V1.Model.SpaceInfo do
  @moduledoc """
  Defines the representation of a single matching space.

  ## Attributes

  *   `avatarInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.AvatarInfo.t`, *default:* `nil`) - 
  *   `avatarUrl` (*type:* `String.t`, *default:* `nil`) - 
  *   `description` (*type:* `String.t`, *default:* `nil`) - 
  *   `groupId` (*type:* `GoogleApi.CloudSearch.V1.Model.GroupId.t`, *default:* `nil`) - 
  *   `inviterEmail` (*type:* `String.t`, *default:* `nil`) - The email address of the user that invited the calling user to the room, if available. This field will only be populated for direct invites, it will be empty if the user was indirectly invited to the group.
  *   `isExternal` (*type:* `boolean()`, *default:* `nil`) - Whether this is a space that enables guest access
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  *   `numMembers` (*type:* `integer()`, *default:* `nil`) - 
  *   `userMembershipState` (*type:* `String.t`, *default:* `nil`) - searching user's membership state in this space
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avatarInfo => GoogleApi.CloudSearch.V1.Model.AvatarInfo.t() | nil,
          :avatarUrl => String.t() | nil,
          :description => String.t() | nil,
          :groupId => GoogleApi.CloudSearch.V1.Model.GroupId.t() | nil,
          :inviterEmail => String.t() | nil,
          :isExternal => boolean() | nil,
          :name => String.t() | nil,
          :numMembers => integer() | nil,
          :userMembershipState => String.t() | nil
        }

  field(:avatarInfo, as: GoogleApi.CloudSearch.V1.Model.AvatarInfo)
  field(:avatarUrl)
  field(:description)
  field(:groupId, as: GoogleApi.CloudSearch.V1.Model.GroupId)
  field(:inviterEmail)
  field(:isExternal)
  field(:name)
  field(:numMembers)
  field(:userMembershipState)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.SpaceInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.SpaceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.SpaceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
