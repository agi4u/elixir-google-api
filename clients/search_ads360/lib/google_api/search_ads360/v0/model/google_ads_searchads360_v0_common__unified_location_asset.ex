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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UnifiedLocationAsset do
  @moduledoc """
  A unified location asset.

  ## Attributes

  *   `businessProfileLocations` (*type:* `list(GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_BusinessProfileLocation.t)`, *default:* `nil`) - The list of business locations for the customer. This will only be returned if the Location Asset is syncing from the Business Profile account. It is possible to have multiple Business Profile listings under the same account that point to the same Place ID.
  *   `locationOwnershipType` (*type:* `String.t`, *default:* `nil`) - The type of location ownership. If the type is BUSINESS_OWNER, it will be served as a location extension. If the type is AFFILIATE, it will be served as an affiliate location.
  *   `placeId` (*type:* `String.t`, *default:* `nil`) - Place IDs uniquely identify a place in the Google Places database and on Google Maps. This field is unique for a given customer ID and asset type. See https://developers.google.com/places/web-service/place-id to learn more about Place ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :businessProfileLocations =>
            list(
              GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_BusinessProfileLocation.t()
            )
            | nil,
          :locationOwnershipType => String.t() | nil,
          :placeId => String.t() | nil
        }

  field(:businessProfileLocations,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_BusinessProfileLocation,
    type: :list
  )

  field(:locationOwnershipType)
  field(:placeId)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UnifiedLocationAsset do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UnifiedLocationAsset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UnifiedLocationAsset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
