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

defmodule GoogleApi.CivicInfo.V2.Model.PollingLocation do
  @moduledoc """
  A location where a voter can vote. This may be an early vote site, an election day voting location, or a drop off location for a completed ballot.

  ## Attributes

  *   `address` (*type:* `GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t`, *default:* `nil`) - The address of the location.
  *   `endDate` (*type:* `String.t`, *default:* `nil`) - The last date that this early vote site or drop off location may be used. This field is not populated for polling locations.
  *   `latitude` (*type:* `float()`, *default:* `nil`) - Latitude of the location, in degrees north of the equator. Note this field may not be available for some locations.
  *   `longitude` (*type:* `float()`, *default:* `nil`) - Longitude of the location, in degrees east of the Prime Meridian. Note this field may not be available for some locations.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the early vote site or drop off location. This field is not populated for polling locations.
  *   `notes` (*type:* `String.t`, *default:* `nil`) - Notes about this location (e.g. accessibility ramp or entrance to use).
  *   `pollingHours` (*type:* `String.t`, *default:* `nil`) - A description of when this location is open.
  *   `sources` (*type:* `list(GoogleApi.CivicInfo.V2.Model.Source.t)`, *default:* `nil`) - A list of sources for this location. If multiple sources are listed the data has been aggregated from those sources.
  *   `startDate` (*type:* `String.t`, *default:* `nil`) - The first date that this early vote site or drop off location may be used. This field is not populated for polling locations.
  *   `voterServices` (*type:* `String.t`, *default:* `nil`) - The services provided by this early vote site or drop off location. This field is not populated for polling locations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t() | nil,
          :endDate => String.t() | nil,
          :latitude => float() | nil,
          :longitude => float() | nil,
          :name => String.t() | nil,
          :notes => String.t() | nil,
          :pollingHours => String.t() | nil,
          :sources => list(GoogleApi.CivicInfo.V2.Model.Source.t()) | nil,
          :startDate => String.t() | nil,
          :voterServices => String.t() | nil
        }

  field(:address, as: GoogleApi.CivicInfo.V2.Model.SimpleAddressType)
  field(:endDate)
  field(:latitude)
  field(:longitude)
  field(:name)
  field(:notes)
  field(:pollingHours)
  field(:sources, as: GoogleApi.CivicInfo.V2.Model.Source, type: :list)
  field(:startDate)
  field(:voterServices)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.PollingLocation do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.PollingLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.PollingLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
