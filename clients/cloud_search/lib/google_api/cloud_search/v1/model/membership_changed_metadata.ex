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

defmodule GoogleApi.CloudSearch.V1.Model.MembershipChangedMetadata do
  @moduledoc """
  Annotation metadata to display system messages for membership changes.

  ## Attributes

  *   `affectedMemberProfiles` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Member.t)`, *default:* `nil`) - 
  *   `affectedMembers` (*type:* `list(GoogleApi.CloudSearch.V1.Model.MemberId.t)`, *default:* `nil`) - List of users and rosters whose membership status changed.
  *   `affectedMemberships` (*type:* `list(GoogleApi.CloudSearch.V1.Model.AffectedMembership.t)`, *default:* `nil`) - 
  *   `initiator` (*type:* `GoogleApi.CloudSearch.V1.Model.UserId.t`, *default:* `nil`) - The user whose action triggered this system message.
  *   `initiatorProfile` (*type:* `GoogleApi.CloudSearch.V1.Model.User.t`, *default:* `nil`) - Complete member profiles, when ListTopicsRequest FetchOptions.USER is set. Otherwise, only the id will be filled in.
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :affectedMemberProfiles => list(GoogleApi.CloudSearch.V1.Model.Member.t()) | nil,
          :affectedMembers => list(GoogleApi.CloudSearch.V1.Model.MemberId.t()) | nil,
          :affectedMemberships =>
            list(GoogleApi.CloudSearch.V1.Model.AffectedMembership.t()) | nil,
          :initiator => GoogleApi.CloudSearch.V1.Model.UserId.t() | nil,
          :initiatorProfile => GoogleApi.CloudSearch.V1.Model.User.t() | nil,
          :type => String.t() | nil
        }

  field(:affectedMemberProfiles, as: GoogleApi.CloudSearch.V1.Model.Member, type: :list)
  field(:affectedMembers, as: GoogleApi.CloudSearch.V1.Model.MemberId, type: :list)
  field(:affectedMemberships, as: GoogleApi.CloudSearch.V1.Model.AffectedMembership, type: :list)
  field(:initiator, as: GoogleApi.CloudSearch.V1.Model.UserId)
  field(:initiatorProfile, as: GoogleApi.CloudSearch.V1.Model.User)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.MembershipChangedMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.MembershipChangedMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.MembershipChangedMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
