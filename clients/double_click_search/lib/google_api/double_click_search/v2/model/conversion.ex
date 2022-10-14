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

defmodule GoogleApi.DoubleClickSearch.V2.Model.Conversion do
  @moduledoc """
  A conversion containing data relevant to DoubleClick Search.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - DS advertiser ID.
  *   `floodlightOrderId` (*type:* `String.t`, *default:* `nil`) - The Floodlight order ID provided by the advertiser for the conversion.
  *   `segmentationId` (*type:* `String.t`, *default:* `nil`) - The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID).
  *   `quantityMillis` (*type:* `String.t`, *default:* `nil`) - The quantity of this conversion, in millis.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - The currency code for the conversion's revenue. Should be in ISO 4217 alphabetic (3-char) format.
  *   `adId` (*type:* `String.t`, *default:* `nil`) - DS ad ID.
  *   `deviceType` (*type:* `String.t`, *default:* `nil`) - The type of device on which the conversion occurred.
  *   `inventoryAccountId` (*type:* `String.t`, *default:* `nil`) - ID that DS generates and uses to uniquely identify the inventory account that contains the product.
  *   `conversionTimestamp` (*type:* `String.t`, *default:* `nil`) - The time at which the conversion took place, in epoch millis UTC.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The product ID (SKU).
  *   `customDimension` (*type:* `list(GoogleApi.DoubleClickSearch.V2.Model.CustomDimension.t)`, *default:* `nil`) - Custom dimensions for the conversion, which can be used to filter data in a report.
  *   `conversionId` (*type:* `String.t`, *default:* `nil`) - For offline conversions, advertisers provide this ID. Advertisers can specify any ID that is meaningful to them. Each conversion in a request must specify a unique ID, and the combination of ID and timestamp must be unique amongst all conversions within the advertiser. For online conversions, DS copies the `dsConversionId` or `floodlightOrderId` into this property depending on the advertiser's Floodlight instructions.
  *   `countMillis` (*type:* `String.t`, *default:* `nil`) - Available to advertisers only after contacting DoubleClick Search customer support.
  *   `campaignId` (*type:* `String.t`, *default:* `nil`) - DS campaign ID.
  *   `criterionId` (*type:* `String.t`, *default:* `nil`) - DS criterion (keyword) ID.
  *   `customMetric` (*type:* `list(GoogleApi.DoubleClickSearch.V2.Model.CustomMetric.t)`, *default:* `nil`) - Custom metrics for the conversion.
  *   `revenueMicros` (*type:* `String.t`, *default:* `nil`) - The revenue amount of this `TRANSACTION` conversion, in micros (value multiplied by 1000000, no decimal). For example, to specify a revenue value of "10" enter "10000000" (10 million) in your request.
  *   `productCountry` (*type:* `String.t`, *default:* `nil`) - The country registered for the Merchant Center feed that contains the product. Use an ISO 3166 code to specify a country.
  *   `conversionModifiedTimestamp` (*type:* `String.t`, *default:* `nil`) - The time at which the conversion was last modified, in epoch millis UTC.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the conversion, that is, either `ACTIVE` or `REMOVED`. Note: state DELETED is deprecated.
  *   `segmentationName` (*type:* `String.t`, *default:* `nil`) - The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name).
  *   `storeId` (*type:* `String.t`, *default:* `nil`) - The ID of the local store for which the product was advertised. Applicable only when the channel is "`local`".
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Customer ID of a client account in the new Search Ads 360 experience.
  *   `channel` (*type:* `String.t`, *default:* `nil`) - Sales channel for the product. Acceptable values are: - "`local`": a physical store - "`online`": an online store 
  *   `agencyId` (*type:* `String.t`, *default:* `nil`) - DS agency ID.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the conversion, that is, either `ACTION` or `TRANSACTION`. An `ACTION` conversion is an action by the user that has no monetarily quantifiable value, while a `TRANSACTION` conversion is an action that does have a monetarily quantifiable value. Examples are email list signups (`ACTION`) versus ecommerce purchases (`TRANSACTION`).
  *   `engineAccountId` (*type:* `String.t`, *default:* `nil`) - DS engine account ID.
  *   `dsConversionId` (*type:* `String.t`, *default:* `nil`) - ID that DoubleClick Search generates for each conversion.
  *   `clickId` (*type:* `String.t`, *default:* `nil`) - DS click ID for the conversion.
  *   `adGroupId` (*type:* `String.t`, *default:* `nil`) - DS ad group ID.
  *   `productLanguage` (*type:* `String.t`, *default:* `nil`) - The language registered for the Merchant Center feed that contains the product. Use an ISO 639 code to specify a language.
  *   `productGroupId` (*type:* `String.t`, *default:* `nil`) - DS product group ID.
  *   `segmentationType` (*type:* `String.t`, *default:* `nil`) - The segmentation type of this conversion (for example, `FLOODLIGHT`).
  *   `attributionModel` (*type:* `String.t`, *default:* `nil`) - Available to advertisers only after contacting DoubleClick Search customer support.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t() | nil,
          :floodlightOrderId => String.t() | nil,
          :segmentationId => String.t() | nil,
          :quantityMillis => String.t() | nil,
          :currencyCode => String.t() | nil,
          :adId => String.t() | nil,
          :deviceType => String.t() | nil,
          :inventoryAccountId => String.t() | nil,
          :conversionTimestamp => String.t() | nil,
          :productId => String.t() | nil,
          :customDimension =>
            list(GoogleApi.DoubleClickSearch.V2.Model.CustomDimension.t()) | nil,
          :conversionId => String.t() | nil,
          :countMillis => String.t() | nil,
          :campaignId => String.t() | nil,
          :criterionId => String.t() | nil,
          :customMetric => list(GoogleApi.DoubleClickSearch.V2.Model.CustomMetric.t()) | nil,
          :revenueMicros => String.t() | nil,
          :productCountry => String.t() | nil,
          :conversionModifiedTimestamp => String.t() | nil,
          :state => String.t() | nil,
          :segmentationName => String.t() | nil,
          :storeId => String.t() | nil,
          :customerId => String.t() | nil,
          :channel => String.t() | nil,
          :agencyId => String.t() | nil,
          :type => String.t() | nil,
          :engineAccountId => String.t() | nil,
          :dsConversionId => String.t() | nil,
          :clickId => String.t() | nil,
          :adGroupId => String.t() | nil,
          :productLanguage => String.t() | nil,
          :productGroupId => String.t() | nil,
          :segmentationType => String.t() | nil,
          :attributionModel => String.t() | nil
        }

  field(:advertiserId)
  field(:floodlightOrderId)
  field(:segmentationId)
  field(:quantityMillis)
  field(:currencyCode)
  field(:adId)
  field(:deviceType)
  field(:inventoryAccountId)
  field(:conversionTimestamp)
  field(:productId)
  field(:customDimension, as: GoogleApi.DoubleClickSearch.V2.Model.CustomDimension, type: :list)
  field(:conversionId)
  field(:countMillis)
  field(:campaignId)
  field(:criterionId)
  field(:customMetric, as: GoogleApi.DoubleClickSearch.V2.Model.CustomMetric, type: :list)
  field(:revenueMicros)
  field(:productCountry)
  field(:conversionModifiedTimestamp)
  field(:state)
  field(:segmentationName)
  field(:storeId)
  field(:customerId)
  field(:channel)
  field(:agencyId)
  field(:type)
  field(:engineAccountId)
  field(:dsConversionId)
  field(:clickId)
  field(:adGroupId)
  field(:productLanguage)
  field(:productGroupId)
  field(:segmentationType)
  field(:attributionModel)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.Conversion do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.Conversion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.Conversion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
