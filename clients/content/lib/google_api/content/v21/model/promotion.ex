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

defmodule GoogleApi.Content.V21.Model.Promotion do
  @moduledoc """
   The Promotions feature is publicly available for the US and CA locale (en language only) in Content API for Shopping. Represents a promotion. See the following articles for more details. * [Promotions feed specification](https://support.google.com/merchants/answer/2906014) * [Local promotions feed specification](https://support.google.com/merchants/answer/10146130) * [Promotions on Buy on Google product data specification](https://support.google.com/merchants/answer/9173673)

  ## Attributes

  *   `longTitle` (*type:* `String.t`, *default:* `nil`) - Required. Long title for the promotion.
  *   `genericRedemptionCode` (*type:* `String.t`, *default:* `nil`) - Generic redemption code for the promotion. To be used with the above field.
  *   `moneyOffAmount` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - The money off amount offered in the promotion.
  *   `freeGiftItemId` (*type:* `String.t`, *default:* `nil`) - Free gift item id for the promotion.
  *   `itemGroupIdExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by item group id exclusion for the promotion.
  *   `offerType` (*type:* `String.t`, *default:* `nil`) - Required. Type of the promotion.
  *   `productType` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by product type for the promotion.
  *   `itemGroupId` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by item group id for the promotion.
  *   `productApplicability` (*type:* `String.t`, *default:* `nil`) - Required. Applicability of the promotion to either all products or only specific products.
  *   `freeGiftValue` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Free gift value for the promotion.
  *   `promotionId` (*type:* `String.t`, *default:* `nil`) - Required. The user provided promotion id to uniquely identify the promotion.
  *   `freeGiftDescription` (*type:* `String.t`, *default:* `nil`) - Free gift description for the promotion.
  *   `percentOff` (*type:* `integer()`, *default:* `nil`) - The percentage discount offered in the promotion.
  *   `moneyBudget` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Promotion cost cap of the promotion.
  *   `couponValueType` (*type:* `String.t`, *default:* `nil`) - Required. Coupon value type for the promotion.
  *   `itemId` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by item id for the promotion.
  *   `minimumPurchaseAmount` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Minimum purchase amount for the promotion.
  *   `promotionDestinationIds` (*type:* `list(String.t)`, *default:* `nil`) - Destination ID for the promotion.
  *   `shippingServiceNames` (*type:* `list(String.t)`, *default:* `nil`) - Shipping service names for thse promotion.
  *   `promotionEffectiveTimePeriod` (*type:* `GoogleApi.Content.V21.Model.TimePeriod.t`, *default:* `nil`) - Required. TimePeriod representation of the promotion effective dates.
  *   `promotionDisplayDates` (*type:* `String.t`, *default:* `nil`) - String representation of the promotion display dates (deprecated: Use promotion_display_time_period instead).
  *   `promotionEffectiveDates` (*type:* `String.t`, *default:* `nil`) - String representation of the promotion effective dates (deprecated: Use promotion_effective_time_period instead).
  *   `itemIdExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by item id exclusion for the promotion.
  *   `brand` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by brand for the promotion.
  *   `minimumPurchaseQuantity` (*type:* `integer()`, *default:* `nil`) - Minimum purchase quantity for the promotion.
  *   `limitValue` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Maximum purchase value for the promotion.
  *   `orderLimit` (*type:* `integer()`, *default:* `nil`) - Order limit for the promotion.
  *   `brandExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by brand exclusion for the promotion.
  *   `productTypeExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by product type exclusion for the promotion.
  *   `promotionDisplayTimePeriod` (*type:* `GoogleApi.Content.V21.Model.TimePeriod.t`, *default:* `nil`) - TimePeriod representation of the promotion display dates.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. Output only. The REST promotion id to uniquely identify the promotion. Content API methods that operate on promotions take this as their promotionId parameter. The REST ID for a promotion is of the form channel:contentLanguage:targetCountry:promotionId The channel field will have a value of "online", "in_store", or "online_in_store".
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - Required. The content language used as part of the unique identifier. Currently only en value is supported.
  *   `limitQuantity` (*type:* `integer()`, *default:* `nil`) - Maximum purchase quantity for the promotion.
  *   `getThisQuantityDiscounted` (*type:* `integer()`, *default:* `nil`) - The number of items discounted in the promotion.
  *   `redemptionChannel` (*type:* `list(String.t)`, *default:* `nil`) - Required. Redemption channel for the promotion. At least one channel is required.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - Required. The target country used as part of the unique identifier. Currently only US and CA are supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :longTitle => String.t() | nil,
          :genericRedemptionCode => String.t() | nil,
          :moneyOffAmount => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :freeGiftItemId => String.t() | nil,
          :itemGroupIdExclusion => list(String.t()) | nil,
          :offerType => String.t() | nil,
          :productType => list(String.t()) | nil,
          :itemGroupId => list(String.t()) | nil,
          :productApplicability => String.t() | nil,
          :freeGiftValue => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :promotionId => String.t() | nil,
          :freeGiftDescription => String.t() | nil,
          :percentOff => integer() | nil,
          :moneyBudget => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :couponValueType => String.t() | nil,
          :itemId => list(String.t()) | nil,
          :minimumPurchaseAmount => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :promotionDestinationIds => list(String.t()) | nil,
          :shippingServiceNames => list(String.t()) | nil,
          :promotionEffectiveTimePeriod => GoogleApi.Content.V21.Model.TimePeriod.t() | nil,
          :promotionDisplayDates => String.t() | nil,
          :promotionEffectiveDates => String.t() | nil,
          :itemIdExclusion => list(String.t()) | nil,
          :brand => list(String.t()) | nil,
          :minimumPurchaseQuantity => integer() | nil,
          :limitValue => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :orderLimit => integer() | nil,
          :brandExclusion => list(String.t()) | nil,
          :productTypeExclusion => list(String.t()) | nil,
          :promotionDisplayTimePeriod => GoogleApi.Content.V21.Model.TimePeriod.t() | nil,
          :id => String.t() | nil,
          :contentLanguage => String.t() | nil,
          :limitQuantity => integer() | nil,
          :getThisQuantityDiscounted => integer() | nil,
          :redemptionChannel => list(String.t()) | nil,
          :targetCountry => String.t() | nil
        }

  field(:longTitle)
  field(:genericRedemptionCode)
  field(:moneyOffAmount, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:freeGiftItemId)
  field(:itemGroupIdExclusion, type: :list)
  field(:offerType)
  field(:productType, type: :list)
  field(:itemGroupId, type: :list)
  field(:productApplicability)
  field(:freeGiftValue, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:promotionId)
  field(:freeGiftDescription)
  field(:percentOff)
  field(:moneyBudget, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:couponValueType)
  field(:itemId, type: :list)
  field(:minimumPurchaseAmount, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:promotionDestinationIds, type: :list)
  field(:shippingServiceNames, type: :list)
  field(:promotionEffectiveTimePeriod, as: GoogleApi.Content.V21.Model.TimePeriod)
  field(:promotionDisplayDates)
  field(:promotionEffectiveDates)
  field(:itemIdExclusion, type: :list)
  field(:brand, type: :list)
  field(:minimumPurchaseQuantity)
  field(:limitValue, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:orderLimit)
  field(:brandExclusion, type: :list)
  field(:productTypeExclusion, type: :list)
  field(:promotionDisplayTimePeriod, as: GoogleApi.Content.V21.Model.TimePeriod)
  field(:id)
  field(:contentLanguage)
  field(:limitQuantity)
  field(:getThisQuantityDiscounted)
  field(:redemptionChannel, type: :list)
  field(:targetCountry)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.Promotion do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.Promotion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.Promotion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
