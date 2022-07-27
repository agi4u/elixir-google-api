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

defmodule GoogleApi.BareMetalSolution.V2.Model.ProvisioningConfig do
  @moduledoc """
  A provisioning configuration.

  ## Attributes

  *   `cloudConsoleUri` (*type:* `String.t`, *default:* `nil`) - Output only. URI to Cloud Console UI view of this provisioning config.
  *   `email` (*type:* `String.t`, *default:* `nil`) - Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.
  *   `handoverServiceAccount` (*type:* `String.t`, *default:* `nil`) - A service account to enable customers to access instance credentials upon handover.
  *   `instances` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.InstanceConfig.t)`, *default:* `nil`) - Instances to be created.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the provisioning config.
  *   `networks` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.NetworkConfig.t)`, *default:* `nil`) - Networks to be created.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of ProvisioningConfig.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - Optional status messages associated with the FAILED state.
  *   `ticketId` (*type:* `String.t`, *default:* `nil`) - A generated ticket id to track provisioning request.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update timestamp.
  *   `volumes` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.VolumeConfig.t)`, *default:* `nil`) - Volumes to be created.
  *   `vpcScEnabled` (*type:* `boolean()`, *default:* `nil`) - If true, VPC SC is enabled for the cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudConsoleUri => String.t() | nil,
          :email => String.t() | nil,
          :handoverServiceAccount => String.t() | nil,
          :instances => list(GoogleApi.BareMetalSolution.V2.Model.InstanceConfig.t()) | nil,
          :location => String.t() | nil,
          :name => String.t() | nil,
          :networks => list(GoogleApi.BareMetalSolution.V2.Model.NetworkConfig.t()) | nil,
          :state => String.t() | nil,
          :statusMessage => String.t() | nil,
          :ticketId => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :volumes => list(GoogleApi.BareMetalSolution.V2.Model.VolumeConfig.t()) | nil,
          :vpcScEnabled => boolean() | nil
        }

  field(:cloudConsoleUri)
  field(:email)
  field(:handoverServiceAccount)
  field(:instances, as: GoogleApi.BareMetalSolution.V2.Model.InstanceConfig, type: :list)
  field(:location)
  field(:name)
  field(:networks, as: GoogleApi.BareMetalSolution.V2.Model.NetworkConfig, type: :list)
  field(:state)
  field(:statusMessage)
  field(:ticketId)
  field(:updateTime, as: DateTime)
  field(:volumes, as: GoogleApi.BareMetalSolution.V2.Model.VolumeConfig, type: :list)
  field(:vpcScEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.ProvisioningConfig do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.ProvisioningConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.ProvisioningConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end