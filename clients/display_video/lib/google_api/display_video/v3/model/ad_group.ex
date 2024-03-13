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

defmodule GoogleApi.DisplayVideo.V3.Model.AdGroup do
  @moduledoc """
  A single ad group associated with a line item.

  ## Attributes

  *   `adGroupFormat` (*type:* `String.t`, *default:* `nil`) - The format of the ads in the ad group.
  *   `adGroupId` (*type:* `String.t`, *default:* `nil`) - The unique ID of the ad group. Assigned by the system.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - The unique ID of the advertiser the ad group belongs to.
  *   `bidStrategy` (*type:* `GoogleApi.DisplayVideo.V3.Model.BiddingStrategy.t`, *default:* `nil`) - The bidding strategy used by the ad group. Only the youtubeAndPartnersBid field can be used in the bidding strategy.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the ad group. Must be UTF-8 encoded with a maximum size of 255 bytes.
  *   `entityStatus` (*type:* `String.t`, *default:* `nil`) - Controls whether or not the ad group can spend its budget and bid on inventory. If the ad group's parent line item is not active, the ad group can't spend its budget even if its own status is `ENTITY_STATUS_ACTIVE`.
  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - The unique ID of the line item that the ad group belongs to.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the ad group.
  *   `productFeedData` (*type:* `GoogleApi.DisplayVideo.V3.Model.ProductFeedData.t`, *default:* `nil`) - The settings of the product feed in this ad group.
  *   `targetingExpansion` (*type:* `GoogleApi.DisplayVideo.V3.Model.TargetingExpansionConfig.t`, *default:* `nil`) - The [optimized targeting](//support.google.com/displayvideo/answer/12060859) settings of the ad group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adGroupFormat => String.t() | nil,
          :adGroupId => String.t() | nil,
          :advertiserId => String.t() | nil,
          :bidStrategy => GoogleApi.DisplayVideo.V3.Model.BiddingStrategy.t() | nil,
          :displayName => String.t() | nil,
          :entityStatus => String.t() | nil,
          :lineItemId => String.t() | nil,
          :name => String.t() | nil,
          :productFeedData => GoogleApi.DisplayVideo.V3.Model.ProductFeedData.t() | nil,
          :targetingExpansion =>
            GoogleApi.DisplayVideo.V3.Model.TargetingExpansionConfig.t() | nil
        }

  field(:adGroupFormat)
  field(:adGroupId)
  field(:advertiserId)
  field(:bidStrategy, as: GoogleApi.DisplayVideo.V3.Model.BiddingStrategy)
  field(:displayName)
  field(:entityStatus)
  field(:lineItemId)
  field(:name)
  field(:productFeedData, as: GoogleApi.DisplayVideo.V3.Model.ProductFeedData)
  field(:targetingExpansion, as: GoogleApi.DisplayVideo.V3.Model.TargetingExpansionConfig)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.AdGroup do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.AdGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.AdGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
