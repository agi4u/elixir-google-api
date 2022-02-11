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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1ProvisionedService do
  @moduledoc """
  Service provisioned for an entitlement.

  ## Attributes

  *   `productId` (*type:* `String.t`, *default:* `nil`) - Output only. The product pertaining to the provisioning resource as specified in the Offer.
  *   `provisioningId` (*type:* `String.t`, *default:* `nil`) - Output only. Provisioning ID of the entitlement. For Google Workspace, this is the underlying Subscription ID. For Google Cloud Platform, this is the Billing Account ID of the billing subaccount."
  *   `skuId` (*type:* `String.t`, *default:* `nil`) - Output only. The SKU pertaining to the provisioning resource as specified in the Offer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :productId => String.t() | nil,
          :provisioningId => String.t() | nil,
          :skuId => String.t() | nil
        }

  field(:productId)
  field(:provisioningId)
  field(:skuId)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1ProvisionedService do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1ProvisionedService.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1ProvisionedService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
