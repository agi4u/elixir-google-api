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

defmodule GoogleApi.AlertCenter.V1beta1.Model.SSOProfileUpdatedEvent do
  @moduledoc """
  Event occurred when SSO Profile updated in customer's account. The event are being received from insight forwarder

  ## Attributes

  *   `inboundSsoProfileChanges` (*type:* `String.t`, *default:* `nil`) - changes made to sso profile
  *   `inboundSsoProfileName` (*type:* `String.t`, *default:* `nil`) - sso profile name which got updated
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inboundSsoProfileChanges => String.t() | nil,
          :inboundSsoProfileName => String.t() | nil
        }

  field(:inboundSsoProfileChanges)
  field(:inboundSsoProfileName)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.SSOProfileUpdatedEvent do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.SSOProfileUpdatedEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.SSOProfileUpdatedEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
