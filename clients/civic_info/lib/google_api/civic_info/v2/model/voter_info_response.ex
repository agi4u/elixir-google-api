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

defmodule GoogleApi.CivicInfo.V2.Model.VoterInfoResponse do
  @moduledoc """
  The result of a voter info lookup query.

  ## Attributes

  *   `contests` (*type:* `list(GoogleApi.CivicInfo.V2.Model.Contest.t)`, *default:* `nil`) - Contests that will appear on the voter's ballot.
  *   `dropOffLocations` (*type:* `list(GoogleApi.CivicInfo.V2.Model.PollingLocation.t)`, *default:* `nil`) - Locations where a voter is eligible to drop off a completed ballot. The voter must have received and completed a ballot prior to arriving at the location. The location may not have ballots available on the premises. These locations could be open on or before election day as indicated in the pollingHours field.
  *   `earlyVoteSites` (*type:* `list(GoogleApi.CivicInfo.V2.Model.PollingLocation.t)`, *default:* `nil`) - Locations where the voter is eligible to vote early, prior to election day.
  *   `election` (*type:* `GoogleApi.CivicInfo.V2.Model.Election.t`, *default:* `nil`) - The election that was queried.
  *   `kind` (*type:* `String.t`, *default:* `civicinfo#voterInfoResponse`) - Identifies what kind of resource this is. Value: the fixed string "civicinfo#voterInfoResponse".
  *   `mailOnly` (*type:* `boolean()`, *default:* `nil`) - Specifies whether voters in the precinct vote only by mailing their ballots (with the possible option of dropping off their ballots as well).
  *   `normalizedInput` (*type:* `GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t`, *default:* `nil`) - The normalized version of the requested address
  *   `otherElections` (*type:* `list(GoogleApi.CivicInfo.V2.Model.Election.t)`, *default:* `nil`) - When there are multiple elections for a voter address, the otherElections field is populated in the API response and there are two possibilities: 1. If the earliest election is not the intended election, specify the election ID of the desired election in a second API request using the electionId field. 2. If these elections occur on the same day, the API doesn?t return any polling location, contest, or election official information to ensure that an additional query is made. For user-facing applications, we recommend displaying these elections to the user to disambiguate. A second API request using the electionId field should be made for the election that is relevant to the user.
  *   `pollingLocations` (*type:* `list(GoogleApi.CivicInfo.V2.Model.PollingLocation.t)`, *default:* `nil`) - Locations where the voter is eligible to vote on election day.
  *   `precinctId` (*type:* `String.t`, *default:* `nil`) - 
  *   `state` (*type:* `list(GoogleApi.CivicInfo.V2.Model.AdministrationRegion.t)`, *default:* `nil`) - Local Election Information for the state that the voter votes in. For the US, there will only be one element in this array.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contests => list(GoogleApi.CivicInfo.V2.Model.Contest.t()) | nil,
          :dropOffLocations => list(GoogleApi.CivicInfo.V2.Model.PollingLocation.t()) | nil,
          :earlyVoteSites => list(GoogleApi.CivicInfo.V2.Model.PollingLocation.t()) | nil,
          :election => GoogleApi.CivicInfo.V2.Model.Election.t() | nil,
          :kind => String.t() | nil,
          :mailOnly => boolean() | nil,
          :normalizedInput => GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t() | nil,
          :otherElections => list(GoogleApi.CivicInfo.V2.Model.Election.t()) | nil,
          :pollingLocations => list(GoogleApi.CivicInfo.V2.Model.PollingLocation.t()) | nil,
          :precinctId => String.t() | nil,
          :state => list(GoogleApi.CivicInfo.V2.Model.AdministrationRegion.t()) | nil
        }

  field(:contests, as: GoogleApi.CivicInfo.V2.Model.Contest, type: :list)
  field(:dropOffLocations, as: GoogleApi.CivicInfo.V2.Model.PollingLocation, type: :list)
  field(:earlyVoteSites, as: GoogleApi.CivicInfo.V2.Model.PollingLocation, type: :list)
  field(:election, as: GoogleApi.CivicInfo.V2.Model.Election)
  field(:kind)
  field(:mailOnly)
  field(:normalizedInput, as: GoogleApi.CivicInfo.V2.Model.SimpleAddressType)
  field(:otherElections, as: GoogleApi.CivicInfo.V2.Model.Election, type: :list)
  field(:pollingLocations, as: GoogleApi.CivicInfo.V2.Model.PollingLocation, type: :list)
  field(:precinctId)
  field(:state, as: GoogleApi.CivicInfo.V2.Model.AdministrationRegion, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.VoterInfoResponse do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.VoterInfoResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.VoterInfoResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
