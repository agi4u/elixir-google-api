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

defmodule GoogleApi.DisplayVideo.V3.Model.TargetingOption do
  @moduledoc """
  Represents a single targeting option, which is a targetable concept in DV360.

  ## Attributes

  *   `householdIncomeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.HouseholdIncomeTargetingOptionDetails.t`, *default:* `nil`) - Household income details.
  *   `userRewardedContentDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.UserRewardedContentTargetingOptionDetails.t`, *default:* `nil`) - User rewarded content details.
  *   `deviceMakeModelDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.DeviceMakeModelTargetingOptionDetails.t`, *default:* `nil`) - Device make and model resource details.
  *   `environmentDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.EnvironmentTargetingOptionDetails.t`, *default:* `nil`) - Environment details.
  *   `audioContentTypeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.AudioContentTypeTargetingOptionDetails.t`, *default:* `nil`) - Audio content type details.
  *   `languageDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.LanguageTargetingOptionDetails.t`, *default:* `nil`) - Language resource details.
  *   `appCategoryDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.AppCategoryTargetingOptionDetails.t`, *default:* `nil`) - App category details.
  *   `contentOutstreamPositionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionTargetingOptionDetails.t`, *default:* `nil`) - Content outstream position details.
  *   `operatingSystemDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.OperatingSystemTargetingOptionDetails.t`, *default:* `nil`) - Operating system resources details.
  *   `poiDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.PoiTargetingOptionDetails.t`, *default:* `nil`) - POI resource details.
  *   `geoRegionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.GeoRegionTargetingOptionDetails.t`, *default:* `nil`) - Geographic region resource details.
  *   `ageRangeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.AgeRangeTargetingOptionDetails.t`, *default:* `nil`) - Age range details.
  *   `viewabilityDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ViewabilityTargetingOptionDetails.t`, *default:* `nil`) - Viewability resource details.
  *   `deviceTypeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.DeviceTypeTargetingOptionDetails.t`, *default:* `nil`) - Device type details.
  *   `contentInstreamPositionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentInstreamPositionTargetingOptionDetails.t`, *default:* `nil`) - Content instream position details.
  *   `videoPlayerSizeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.VideoPlayerSizeTargetingOptionDetails.t`, *default:* `nil`) - Video player size details.
  *   `parentalStatusDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ParentalStatusTargetingOptionDetails.t`, *default:* `nil`) - Parental status details.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this targeting option.
  *   `exchangeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ExchangeTargetingOptionDetails.t`, *default:* `nil`) - Exchange details.
  *   `targetingOptionId` (*type:* `String.t`, *default:* `nil`) - Output only. A unique identifier for this targeting option. The tuple {`targeting_type`, `targeting_option_id`} will be unique.
  *   `browserDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.BrowserTargetingOptionDetails.t`, *default:* `nil`) - Browser details.
  *   `contentDurationDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentDurationTargetingOptionDetails.t`, *default:* `nil`) - Content duration resource details.
  *   `digitalContentLabelDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.DigitalContentLabelTargetingOptionDetails.t`, *default:* `nil`) - Digital content label details.
  *   `targetingType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of this targeting option.
  *   `carrierAndIspDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.CarrierAndIspTargetingOptionDetails.t`, *default:* `nil`) - Carrier and ISP details.
  *   `authorizedSellerStatusDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.AuthorizedSellerStatusTargetingOptionDetails.t`, *default:* `nil`) - Authorized seller status resource details.
  *   `contentGenreDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentGenreTargetingOptionDetails.t`, *default:* `nil`) - Content genre resource details.
  *   `nativeContentPositionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.NativeContentPositionTargetingOptionDetails.t`, *default:* `nil`) - Native content position details.
  *   `businessChainDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.BusinessChainTargetingOptionDetails.t`, *default:* `nil`) - Business chain resource details.
  *   `onScreenPositionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.OnScreenPositionTargetingOptionDetails.t`, *default:* `nil`) - On screen position details.
  *   `contentStreamTypeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentStreamTypeTargetingOptionDetails.t`, *default:* `nil`) - Content stream type resource details.
  *   `sensitiveCategoryDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.SensitiveCategoryTargetingOptionDetails.t`, *default:* `nil`) - Sensitive Category details.
  *   `genderDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.GenderTargetingOptionDetails.t`, *default:* `nil`) - Gender details.
  *   `categoryDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.CategoryTargetingOptionDetails.t`, *default:* `nil`) - Category resource details.
  *   `omidDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.OmidTargetingOptionDetails.t`, *default:* `nil`) - Open Measurement enabled inventory details.
  *   `subExchangeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.SubExchangeTargetingOptionDetails.t`, *default:* `nil`) - Sub-exchange details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :householdIncomeDetails =>
            GoogleApi.DisplayVideo.V3.Model.HouseholdIncomeTargetingOptionDetails.t() | nil,
          :userRewardedContentDetails =>
            GoogleApi.DisplayVideo.V3.Model.UserRewardedContentTargetingOptionDetails.t() | nil,
          :deviceMakeModelDetails =>
            GoogleApi.DisplayVideo.V3.Model.DeviceMakeModelTargetingOptionDetails.t() | nil,
          :environmentDetails =>
            GoogleApi.DisplayVideo.V3.Model.EnvironmentTargetingOptionDetails.t() | nil,
          :audioContentTypeDetails =>
            GoogleApi.DisplayVideo.V3.Model.AudioContentTypeTargetingOptionDetails.t() | nil,
          :languageDetails =>
            GoogleApi.DisplayVideo.V3.Model.LanguageTargetingOptionDetails.t() | nil,
          :appCategoryDetails =>
            GoogleApi.DisplayVideo.V3.Model.AppCategoryTargetingOptionDetails.t() | nil,
          :contentOutstreamPositionDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionTargetingOptionDetails.t()
            | nil,
          :operatingSystemDetails =>
            GoogleApi.DisplayVideo.V3.Model.OperatingSystemTargetingOptionDetails.t() | nil,
          :poiDetails => GoogleApi.DisplayVideo.V3.Model.PoiTargetingOptionDetails.t() | nil,
          :geoRegionDetails =>
            GoogleApi.DisplayVideo.V3.Model.GeoRegionTargetingOptionDetails.t() | nil,
          :ageRangeDetails =>
            GoogleApi.DisplayVideo.V3.Model.AgeRangeTargetingOptionDetails.t() | nil,
          :viewabilityDetails =>
            GoogleApi.DisplayVideo.V3.Model.ViewabilityTargetingOptionDetails.t() | nil,
          :deviceTypeDetails =>
            GoogleApi.DisplayVideo.V3.Model.DeviceTypeTargetingOptionDetails.t() | nil,
          :contentInstreamPositionDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentInstreamPositionTargetingOptionDetails.t()
            | nil,
          :videoPlayerSizeDetails =>
            GoogleApi.DisplayVideo.V3.Model.VideoPlayerSizeTargetingOptionDetails.t() | nil,
          :parentalStatusDetails =>
            GoogleApi.DisplayVideo.V3.Model.ParentalStatusTargetingOptionDetails.t() | nil,
          :name => String.t() | nil,
          :exchangeDetails =>
            GoogleApi.DisplayVideo.V3.Model.ExchangeTargetingOptionDetails.t() | nil,
          :targetingOptionId => String.t() | nil,
          :browserDetails =>
            GoogleApi.DisplayVideo.V3.Model.BrowserTargetingOptionDetails.t() | nil,
          :contentDurationDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentDurationTargetingOptionDetails.t() | nil,
          :digitalContentLabelDetails =>
            GoogleApi.DisplayVideo.V3.Model.DigitalContentLabelTargetingOptionDetails.t() | nil,
          :targetingType => String.t() | nil,
          :carrierAndIspDetails =>
            GoogleApi.DisplayVideo.V3.Model.CarrierAndIspTargetingOptionDetails.t() | nil,
          :authorizedSellerStatusDetails =>
            GoogleApi.DisplayVideo.V3.Model.AuthorizedSellerStatusTargetingOptionDetails.t() | nil,
          :contentGenreDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentGenreTargetingOptionDetails.t() | nil,
          :nativeContentPositionDetails =>
            GoogleApi.DisplayVideo.V3.Model.NativeContentPositionTargetingOptionDetails.t() | nil,
          :businessChainDetails =>
            GoogleApi.DisplayVideo.V3.Model.BusinessChainTargetingOptionDetails.t() | nil,
          :onScreenPositionDetails =>
            GoogleApi.DisplayVideo.V3.Model.OnScreenPositionTargetingOptionDetails.t() | nil,
          :contentStreamTypeDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentStreamTypeTargetingOptionDetails.t() | nil,
          :sensitiveCategoryDetails =>
            GoogleApi.DisplayVideo.V3.Model.SensitiveCategoryTargetingOptionDetails.t() | nil,
          :genderDetails =>
            GoogleApi.DisplayVideo.V3.Model.GenderTargetingOptionDetails.t() | nil,
          :categoryDetails =>
            GoogleApi.DisplayVideo.V3.Model.CategoryTargetingOptionDetails.t() | nil,
          :omidDetails => GoogleApi.DisplayVideo.V3.Model.OmidTargetingOptionDetails.t() | nil,
          :subExchangeDetails =>
            GoogleApi.DisplayVideo.V3.Model.SubExchangeTargetingOptionDetails.t() | nil
        }

  field(:householdIncomeDetails,
    as: GoogleApi.DisplayVideo.V3.Model.HouseholdIncomeTargetingOptionDetails
  )

  field(:userRewardedContentDetails,
    as: GoogleApi.DisplayVideo.V3.Model.UserRewardedContentTargetingOptionDetails
  )

  field(:deviceMakeModelDetails,
    as: GoogleApi.DisplayVideo.V3.Model.DeviceMakeModelTargetingOptionDetails
  )

  field(:environmentDetails, as: GoogleApi.DisplayVideo.V3.Model.EnvironmentTargetingOptionDetails)

  field(:audioContentTypeDetails,
    as: GoogleApi.DisplayVideo.V3.Model.AudioContentTypeTargetingOptionDetails
  )

  field(:languageDetails, as: GoogleApi.DisplayVideo.V3.Model.LanguageTargetingOptionDetails)

  field(:appCategoryDetails, as: GoogleApi.DisplayVideo.V3.Model.AppCategoryTargetingOptionDetails)

  field(:contentOutstreamPositionDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionTargetingOptionDetails
  )

  field(:operatingSystemDetails,
    as: GoogleApi.DisplayVideo.V3.Model.OperatingSystemTargetingOptionDetails
  )

  field(:poiDetails, as: GoogleApi.DisplayVideo.V3.Model.PoiTargetingOptionDetails)
  field(:geoRegionDetails, as: GoogleApi.DisplayVideo.V3.Model.GeoRegionTargetingOptionDetails)
  field(:ageRangeDetails, as: GoogleApi.DisplayVideo.V3.Model.AgeRangeTargetingOptionDetails)

  field(:viewabilityDetails, as: GoogleApi.DisplayVideo.V3.Model.ViewabilityTargetingOptionDetails)

  field(:deviceTypeDetails, as: GoogleApi.DisplayVideo.V3.Model.DeviceTypeTargetingOptionDetails)

  field(:contentInstreamPositionDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentInstreamPositionTargetingOptionDetails
  )

  field(:videoPlayerSizeDetails,
    as: GoogleApi.DisplayVideo.V3.Model.VideoPlayerSizeTargetingOptionDetails
  )

  field(:parentalStatusDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ParentalStatusTargetingOptionDetails
  )

  field(:name)
  field(:exchangeDetails, as: GoogleApi.DisplayVideo.V3.Model.ExchangeTargetingOptionDetails)
  field(:targetingOptionId)
  field(:browserDetails, as: GoogleApi.DisplayVideo.V3.Model.BrowserTargetingOptionDetails)

  field(:contentDurationDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentDurationTargetingOptionDetails
  )

  field(:digitalContentLabelDetails,
    as: GoogleApi.DisplayVideo.V3.Model.DigitalContentLabelTargetingOptionDetails
  )

  field(:targetingType)

  field(:carrierAndIspDetails,
    as: GoogleApi.DisplayVideo.V3.Model.CarrierAndIspTargetingOptionDetails
  )

  field(:authorizedSellerStatusDetails,
    as: GoogleApi.DisplayVideo.V3.Model.AuthorizedSellerStatusTargetingOptionDetails
  )

  field(:contentGenreDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentGenreTargetingOptionDetails
  )

  field(:nativeContentPositionDetails,
    as: GoogleApi.DisplayVideo.V3.Model.NativeContentPositionTargetingOptionDetails
  )

  field(:businessChainDetails,
    as: GoogleApi.DisplayVideo.V3.Model.BusinessChainTargetingOptionDetails
  )

  field(:onScreenPositionDetails,
    as: GoogleApi.DisplayVideo.V3.Model.OnScreenPositionTargetingOptionDetails
  )

  field(:contentStreamTypeDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentStreamTypeTargetingOptionDetails
  )

  field(:sensitiveCategoryDetails,
    as: GoogleApi.DisplayVideo.V3.Model.SensitiveCategoryTargetingOptionDetails
  )

  field(:genderDetails, as: GoogleApi.DisplayVideo.V3.Model.GenderTargetingOptionDetails)
  field(:categoryDetails, as: GoogleApi.DisplayVideo.V3.Model.CategoryTargetingOptionDetails)
  field(:omidDetails, as: GoogleApi.DisplayVideo.V3.Model.OmidTargetingOptionDetails)

  field(:subExchangeDetails, as: GoogleApi.DisplayVideo.V3.Model.SubExchangeTargetingOptionDetails)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.TargetingOption do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.TargetingOption.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.TargetingOption do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
